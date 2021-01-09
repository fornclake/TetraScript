extends CanvasLayer

onready var label_fps = $margin/topleft/fps
onready var label_map = $margin/topleft/map
onready var label_zone = $margin/topleft/zone
onready var label_map_objects = $margin/topleft/map_objects
onready var label_zone_objects = $margin/topleft/zone_objects
onready var label_active_objects = $margin/topleft/active_objects

func update():
	label_fps.text = str("FPS: ", Engine.get_frames_per_second())
	label_map.text = str("Map: ", Client.current_map.name)
	label_zone.text = str("Zone: ", Client.get_current_zone().name)
	
	label_map_objects.text = str(" Map: ", get_tree().get_nodes_in_group("object").size())
	label_zone_objects.text = str(" Zone: ", Client.get_current_zone().get_objects().size())
	label_active_objects.text = str(" Active: ", Client.current_map.get_active_objects().size())
