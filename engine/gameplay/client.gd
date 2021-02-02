extends Node

# handles anything that needs to be kept between maps or multiplayer state
# clients only have one player, one current map, one current zone etc etc
# most of this stuff is pretty much commented by the debug messages

var current_map = null
var current_zone = null
var player

signal map_change_started
signal map_changed

onready var hud = $canvas/hud

var debug_messages = true

const commands = { # aliases
	"map":"change_map",
	"host":"host_server",
	"join":"join_server",
	"disconnect":"leave_server",
}

func _ready():
	var _map_change_started = connect("map_change_started", hud.debug, "stop_update")
	var _map_changed = connect("map_changed", hud.debug, "start_update")
	
	var _connected_to_server = get_tree().connect("connected_to_server", self, "_client_connect_ok")
	var _connection_failed = get_tree().connect("connection_failed", self, "_client_connect_fail")
	#var _network_peer_connected = get_tree().connect("network_peer_connected", self, "_peer_connected")
	var _network_peer_disconnected = get_tree().connect("network_peer_disconnected", self, "_peer_disconnected")

func debug_msg(message):
	if debug_messages:
		hud.chat.add_message(message, "SYSTEM")

func host_server():
	if get_tree().network_peer != null:
		debug_msg("Could not open server; connected to a server")
		return
	var ws = WebSocketServer.new()
	var err = ws.listen(7777, PoolStringArray(), true)
	if err != OK:
		debug_msg("Could not open server; port in use")
		return
	get_tree().set_network_peer(ws)
	Network.initialize(Network.MODE.SERVER)
	debug_msg("Server opened")

func leave_server():
	if get_tree().network_peer == null:
		debug_msg("Could not disconnect; not connected to a server")
		return
	Network.shutdown()
	debug_msg("Server closed")

func join_server(ip="", port=7777):
	if get_tree().network_peer != null:
		debug_msg("Could not join; connected to a server")
		return
	if !ip.is_valid_ip_address():
		debug_msg("Could not join; invalid IP")
		return
	
	var ws = WebSocketClient.new()
	var url = str("ws://",ip,":",port)
	ws.connect_to_url(url, PoolStringArray(), true) # ends with _client_connect_ok/fail()
	get_tree().set_network_peer(ws)
	debug_msg("Joining server...")

func _client_connect_ok():
	debug_msg("Server joined")
	Network.initialize(Network.MODE.CLIENT)

func _client_connect_fail():
	debug_msg("Connection failed")
	Network.shutdown()

func _peer_connected(peer):
	debug_msg(str(peer, " connected"))

func _peer_disconnected(peer):
	debug_msg(str(peer, " disconnected"))

func change_map(map, entrance=""):
	var path = "res://game/maps/"+map+".tmx"
	var file = File.new()
	if !file.file_exists(path):
		debug_msg(str("Could not change map \"", map, "\"; file not found"))
		return
	
	emit_signal("map_change_started")
	
	var root = current_map.get_parent()
	var old_map = current_map
	var new_map = load(path).instance()
	new_map.entrance = entrance
	
	old_map.call_deferred("queue_free")
	yield(get_tree(), "idle_frame")
	root.call_deferred("add_child", new_map)
	yield(get_tree(), "idle_frame")
	
	current_map = new_map
	emit_signal("map_changed")

func get_current_zone():
	if current_map.camera != null:
		return current_map.camera.current_zone
