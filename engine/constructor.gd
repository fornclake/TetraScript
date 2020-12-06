extends Node

class_name Constructor

var root_path = "res://game/"

func construct_object(dict):
	var object
	match dict.type:
		"entity":
			object = construct_entity(dict)
	object.add_to_group("object")
	object.add_to_group(dict.type)
	return object

func cache_object(object):
	var cache_path = str("res://game/cache/", object.name.to_lower(), ".tscn")
	var packed_scene = PackedScene.new()
	packed_scene.pack(object)
	var _err = ResourceSaver.save(cache_path, packed_scene)

func construct_entity(dict):
	var entity = Entity.new()
	var prop = dict.properties
	for property in prop:
		match property:
			"SpriteSheet":
				initialize_sprite(entity, prop.SpriteSheet[0].replace("\"", ""), prop.SpriteSheet[1], prop.SpriteSheet[2])
			"Size":
				initialize_collision(entity, prop.Size[0], prop.Size[1])
			_:
				entity.set(property, prop.get(property)[0])
	
	initialize_animations(entity, dict.animations)
	entity.states = dict.states
	entity.name = dict.name
	
	return entity

func initialize_sprite(obj, tex, hf, vf):
	var sprite = Sprite.new()
	sprite.name = "Sprite"
	obj.add_child(sprite)
	sprite.owner = obj
	sprite.texture = load_texture(root_path+tex+".png")
	sprite.hframes = int(hf)
	sprite.vframes = int(vf)
	obj.sprite = sprite

func initialize_collision(obj, w, h):
	var collision = CollisionShape2D.new()
	collision.name = "Collision"
	obj.add_child(collision)
	collision.owner = obj
	var shape = CapsuleShape2D.new()
	shape.radius = float(w)
	shape.height = float(h)
	collision.shape = shape
	obj.collision = collision

func initialize_animations(obj, animations):
	var anim = AnimationPlayer.new()
	anim.name = "Anim"
	obj.add_child(anim)
	anim.root_node = ".."
	anim.owner = obj
	for key in animations.keys():
		var a = Animation.new()
		a.add_track(Animation.TYPE_VALUE, 0)
		a.track_set_path(0, "Sprite:frame")
		a.track_set_interpolation_type(0, Animation.INTERPOLATION_NEAREST)
		var current_time = 0
		for frame in animations[key]:
			if str(frame) == "loop":
				a.loop = true
			else:
				var value = int(frame[0][0])
				a.track_insert_key(0, current_time, value)
				current_time += float(animations[key][0][0][1])
		a.length = current_time
		var _err = anim.add_animation(key, a)
	obj.anim = anim

func load_texture(path):
	var tex = load(path)
	#var tex = ImageTexture.new()
	#var img = Image.new()
	#img.load(path)
	#tex.create_from_image(img, 2)
	return tex




