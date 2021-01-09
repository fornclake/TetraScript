extends Node

var current_map = null
var changing_map = false
var current_zone = null

signal map_changed

func change_map(map, entrance):
	if changing_map:
		return
	changing_map = true
	
	var root = current_map.get_parent()
	var old_map = current_map
	var new_map = load("res://game/maps/"+map+".tmx").instance()
	new_map.entrance = entrance
	
	root.call_deferred("add_child", new_map)
	old_map.call_deferred("queue_free")
	yield(get_tree(), "idle_frame")
	changing_map = false
	current_map = new_map
	emit_signal("map_changed")

func get_current_zone():
	if current_map.camera != null:
		return current_map.camera.current_zone
	return "null zone"
