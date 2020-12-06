extends Node

func _ready():
	var next_scene = "res://engine/editor.tscn"
	var arguments = {}
	for argument in OS.get_cmdline_args():
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
	
	if "map" in arguments:
		var map_arg = arguments.get("map").rsplit("/maps/")[1]
		next_scene = str("res://game/maps/", map_arg)
	
	ProjectSettings.load_resource_pack("res://game.pck")
	
	var _err = get_tree().change_scene(next_scene)