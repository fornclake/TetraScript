tool
extends Node

var scene

const default_meta = ["gid", "height", "width", "imageheight", "imagewidth", "path"]

func post_import(imported_scene):
	scene = imported_scene
	
	set_properties(scene, scene)
	
	var children = scene.get_children()
	for child in children:
		if child is TileMap:
			import_tilemap(child)
		elif child is Node2D:
			for object in child.get_children():
				spawn_object(object)
			child.free()
	
	return scene

func import_tilemap(tilemap):
	set_properties(tilemap, tilemap)
	tilemap.set_collision_layer_bit(1,1)
	tilemap.set_collision_mask_bit(1,1)
	tilemap.position.y += 16
	tilemap.add_to_group("wall")

func spawn_object(object):
	if object.has_meta("path"):
		var path = object.get_meta("path")
		var node = load(str("res://game/cache/", path, ".tscn")).instance()
		scene.add_child(node)
		node.set_owner(scene)
		node.position = object.position + Vector2(8,-8)
		set_properties(object, node)
	else:
		object.get_parent().remove_child(object)
		scene.add_child(object)
		object.set_owner(scene)

func set_properties(object, node):
	for meta in object.get_meta_list():
		if meta in default_meta:
			continue
		node.set(meta, object.get_meta(meta))
