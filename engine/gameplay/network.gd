extends Node

# multiplayer logic. manages creating/sending/receiving player list & map hosts
# those decide which peers the client sends updates to & who processes non-player objects

enum MODE {SP, CLIENT, SERVER}
var mode = MODE.SP
var pid = 1 # peer id, get_tree().get_unique_network_id()

# server decided, sent to all clients
var player_list = {} # {pid:mapname}, multiplayer pids can have the same map
var map_hosts = {} # {mapname:pid}, only one map to one map host

# client decided, based off of player_list received by server
var map_peers = [] # peers in same map, to send multiplayer updates to

onready var tick_timer = $tick

signal player_list_received
signal map_peers_updated

func _ready():
	var _network_peer_disconnected = get_tree().connect("network_peer_disconnected", self, "_player_disconnected")

func initialize(new_mode):
	mode = new_mode
	pid = get_tree().get_network_unique_id()
	Client.player.name = str(pid)
	send_current_map()
	tick_timer.start()

func shutdown():
	if mode == MODE.CLIENT:
		if Client.current_map.has_node("1"): # have to remove server's player first to free that name
			Client.current_map.get_node("1").queue_free()
		Client.player.name = "1"
	get_tree().set_network_peer(null)
	pid = 1
	mode = MODE.SP
	send_current_map()
	tick_timer.stop()

func is_map_host():
	if !map_hosts.keys().has(Client.current_map.name): # if map not recognized (failsafe)
		return false
	if map_hosts.get(Client.current_map.name) == pid:
		return true
	return false

remote func receive_chat_message(message):
	Client.hud.chat.add_message(message, str(get_tree().get_rpc_sender_id()))

func send_current_map(): # starts process of updating every player's player list
	match mode:
		MODE.CLIENT:
			rpc_id(1, "_server_receive_current_map", pid, Client.current_map.name)
		MODE.SERVER:
			_server_receive_current_map(1, Client.current_map.name)
		MODE.SP:
			player_list = {1:Client.current_map.name} # resets player list
			_client_update_map_peers()
			_server_update_map_hosts()

remote func _server_receive_current_map(id, map):
	player_list[id] = map
	_client_update_map_peers()
	_server_update_map_hosts()
	emit_signal("player_list_received")
	rpc("_client_receive_player_list", player_list, map_hosts)

remote func _client_receive_player_list(list, hosts):
	player_list = list
	map_hosts = hosts
	_client_update_map_peers()
	emit_signal("player_list_received")

func _client_update_map_peers(): # happens any time the player list changes
	map_peers = []
	for id in player_list:
		if player_list.get(id) == player_list.get(pid): # if in same map as this client
			map_peers.append(id) # add to map peers
	map_peers.erase(pid) # remove self from map peers
	emit_signal("map_peers_updated")

func _server_update_map_hosts():
	for map in player_list.values(): # assign map host if there is no host in new map
		if !map_hosts.keys().has(map):
			map_hosts[map] = player_list.keys()[player_list.values().find(map)]
	
	for map in map_hosts.keys(): # remove map host it there is no one in that map
		if !player_list.values().has(map):
			map_hosts.erase(map)
	
	for map in map_hosts.keys(): # reassign map host if the previous one left
		var map_host = map_hosts.get(map)
		if player_list[map_host] != map || !player_list.keys().has(map_host):
			map_hosts[map] = player_list.keys()[player_list.values().find(map)]

func _player_disconnected(id):
	if mode == MODE.SERVER:
		player_list.erase(id) # remove peer from list
		for map in map_hosts.keys(): # reassign map host if that peer was one
			if map_hosts.get(map) == id:
				map_hosts[map] = player_list.keys()[player_list.values().find(map)]
		_server_update_map_hosts()
		rpc("_client_receive_player_list", player_list, map_hosts)
		_client_update_map_peers()









