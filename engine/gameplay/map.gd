extends Node2D

var camera
var entrance = "entrance"

func _ready():
	set_process(false)
	
	if Client.current_map == null: # move later
		Client.current_map = self
	
	if !has_node(entrance):
		entrance = "entrance"
	
	var _map_peers_updated = Network.connect("map_peers_updated", self, "update_puppets")
	Network.map_peers = []
	
	Client.player = add_new_player(Network.pid)
	Network.send_current_map()
	
	camera = preload("res://engine/gameplay/camera.tscn").instance()
	add_child(camera)
	camera.target = Client.player
	camera.start()
	camera.current = true
	camera.connect("scroll_start", Client.player, "set_physics_process", [false])
	camera.connect("scroll_end", Client.player, "set_physics_process", [true])
	
	camera.connect("scroll_start", self, "remove_old_projectiles")
	camera.connect("scroll_start", self, "disable_inactive_enemies")
	camera.connect("scroll_end", self, "enable_active_enemies")
	camera.connect("scroll_end", self, "reset_inactive_enemies")
	
	yield(camera, "zone_changed")
	
	set_process(true)

func _process(_delta):
	camera.current_zone.clamp_enemies()

func enable_active_enemies(): # begin processing enemies in all active zones
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if active_enemies.has(enemy):
			enemy.set_physics_process(true)

func disable_inactive_enemies(): # stop processing enemies that are in inactive zones
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if !active_enemies.has(enemy):
			enemy.set_physics_process(false)

func reset_inactive_enemies(): # reset state of enemies in old rooms
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if !active_enemies.has(enemy):
			enemy.position = enemy.home_position
			enemy.change_state("Spawn")
			enemy.actions()

func remove_old_projectiles(): # delete projectiles in zones that were just left
	var active_weapons = get_active_objects("weapon")
	for weapon in get_tree().get_nodes_in_group("weapon"):
		if !active_weapons.has(weapon):
			weapon.queue_free() ##

func get_active_objects(type="object"): # returns a list of all objects in active zones
	var active_zones = [camera.current_zone]
	var active_objects = []
	for zone in active_zones:
		for object in zone.get_objects(type):
			active_objects.append(object)
	return active_objects

func add_new_player(id):
	var new_player = load("res://game/cache/player.tscn").instance()
	new_player.name = str(id)
	new_player.set_network_master(id, true) # peers are masters of their own player object
	new_player.position = get_node(entrance).position
	
	add_child(new_player)
	
	return new_player

func remove_player(id):
	if has_node(str(id)):
		get_node(str(id)).queue_free()
	for node in get_tree().get_nodes_in_group(str(id)): # remove objects spawned by player
		node.queue_free()

func update_puppets(): # called by network.gd. adds & removes player nodes based off player list
	var player_nodes = get_tree().get_nodes_in_group("player")
	var player_names = []
	for player in player_nodes: # removes player objects for peers that left
		var id = int(player.name)
		if !Network.map_peers.has(int(id)) && id != Network.pid: # node exist but peer not found
			remove_player(id)
		
		player_names.append(int(player.name))
	
	for id in Network.map_peers: # creates player objects for peers that entered
		if !player_names.has(id):
			add_new_player(id)











