extends Node2D

var camera
var entrance = "entrance"

func _ready():
	set_process(false)
	
	if Client.current_map == null: # move later
		Client.current_map = self
	Debug.get_node("update").start()
	
	var new_player = load("res://game/cache/player.tscn").instance()
	new_player.position = get_node(entrance).position
	add_child(new_player)
	
	camera = preload("res://engine/gameplay/camera.tscn").instance()
	add_child(camera)
	camera.target = new_player
	camera.start()
	camera.current = true
	camera.connect("scroll_start", new_player, "set_physics_process", [false])
	camera.connect("scroll_end", new_player, "set_physics_process", [true])
	
	camera.connect("scroll_start", self, "remove_old_projectiles")
	camera.connect("scroll_start", self, "disable_inactive_enemies")
	camera.connect("scroll_end", self, "enable_active_enemies")
	camera.connect("scroll_end", self, "reset_inactive_enemies")
	
	yield(camera, "zone_changed")
	
	set_process(true)

func _process(_delta):
	camera.current_zone.clamp_enemies()

func enable_active_enemies():
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if active_enemies.has(enemy):
			enemy.set_physics_process(true)

func disable_inactive_enemies():
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if !active_enemies.has(enemy):
			enemy.set_physics_process(false)

func reset_inactive_enemies():
	var active_enemies = get_active_objects("enemy")
	for enemy in get_tree().get_nodes_in_group("enemy"):
		if !active_enemies.has(enemy):
			enemy.position = enemy.home_position
			enemy.change_state("Spawn")
			enemy.actions()

func remove_old_projectiles():
	var active_weapons = get_active_objects("weapon")
	for weapon in get_tree().get_nodes_in_group("weapon"):
		if !active_weapons.has(weapon):
			weapon.queue_free() ##

func get_active_objects(type="object"):
	var active_zones = [camera.current_zone]
	var active_objects = []
	for zone in active_zones:
		for object in zone.get_objects(type):
			active_objects.append(object)
	return active_objects





