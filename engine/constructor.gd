extends Node

class_name Constructor

var root_path = "res://game/"

func construct_object(dict):
	var object
	match dict.type:
		"entity", "enemy", "player":
			object = KinematicBody2D.new()
		"weapon":
			object = Area2D.new()
	object.set_script(load(str("res://engine/objects/", dict.type, ".gd")))
	
	if object.get("DEFAULT_STATES"):
		for state in object.DEFAULT_STATES:
			if !dict.states.has(state):
				dict.states[state] = object.DEFAULT_STATES[state]
	
	var prop = dict.properties
	for property in prop:
		match property:
			"SpriteSheet":
				initialize_sprite(object, prop.SpriteSheet[0].replace("\"", ""), prop.SpriteSheet[1], prop.SpriteSheet[2])
			"Size":
				initialize_collision(object, prop.Size)
			_:
				object.set(property.to_lower(), float(prop.get(property)[0]))
	
	initialize_animations(object, dict.animations)
	initialize_triggers(object, dict.states)
	initialize_flags(object, dict.flags)
	
	object.name = dict.name
	object.states = dict.states
	object.flags = dict.flags
	
	return object

func cache_object(object):
	var cache_path = str("res://game/cache/", object.name.to_lower(), ".tscn")
	var packed_scene = PackedScene.new()
	packed_scene.pack(object)
	var _err = ResourceSaver.save(cache_path, packed_scene)

func initialize_sprite(obj, tex, hf, vf):
	var sprite = Sprite.new()
	sprite.name = "sprite"
	obj.add_child(sprite)
	sprite.owner = obj
	sprite.texture = load(root_path+tex+".png")
	sprite.hframes = int(hf)
	sprite.vframes = int(vf)
	obj.sprite = sprite

func initialize_collision(obj, args):
	var w = args[0]
	var h = args[1]
	var type = "cap"
	if args.size() > 2:
		type = args[2]
	var collision = CollisionShape2D.new()
	collision.name = "collision"
	obj.add_child(collision)
	collision.owner = obj
	var shape
	match type:
		"cap":
			shape = CapsuleShape2D.new()
			shape.radius = float(w)
			shape.height = float(h)
		"rect":
			shape = RectangleShape2D.new()
			shape.extents = Vector2(w,h)
	collision.shape = shape
	obj.collision = collision

func initialize_animations(obj, animations):
	var anim = AnimationPlayer.new()
	anim.name = "anim"
	obj.add_child(anim)
	anim.root_node = ".."
	anim.owner = obj
	for key in animations.keys():
		var a = Animation.new()
		animation_create_track(a, 0, "sprite:frame")
		animation_create_track(a, 1, "sprite:position")
		animation_create_track(a, 2, "sprite:rotation_degrees")
		animation_create_track(a, 3, "collision:position")
		animation_create_track(a, 4, "collision:scale")
		animation_create_track(a, 5, "sprite:flip_h")
		var current_time = 0
		for frame in animations[key]:
			match frame[0][0]:
				"loop":
					a.loop = true
				"spr":
					var value = int(frame[0][1])
					a.track_insert_key(0, current_time, value)
					current_time += animation_find_time(frame, 2)
				"pos":
					var pos = Vector2(float(frame[0][1]), float(frame[0][2]))
					a.track_insert_key(1, current_time, pos)
					current_time += animation_find_time(frame, 3)
				"rot":
					var value = float(frame[0][1])
					a.track_insert_key(2, current_time, value)
					current_time += animation_find_time(frame, 2)
				"col":
					var pos = Vector2(float(frame[0][1]), float(frame[0][2]))
					var extents = Vector2(float(frame[0][3]), float(frame[0][4]))
					var scale = extents / obj.collision.shape.extents
					a.track_insert_key(3, current_time, pos)
					a.track_insert_key(4, current_time, scale)
					current_time += animation_find_time(frame, 5)
				"flip":
					var value = bool(int(frame[0][1]))
					a.track_insert_key(5, current_time, value)
					current_time += animation_find_time(frame, 2)
				_:
					var value = int(frame[0][0])
					a.track_insert_key(0, current_time, value)
					current_time += animation_find_time(frame, 1)
		a.length = current_time
		var _err = anim.add_animation(key, a)
	obj.anim = anim

func initialize_triggers(obj, states):
	for state in states:
		for trigger in states[state].triggers:
			match trigger[0]:
				"timer":
					var timer = Timer.new()
					timer.name = str("timer_", state)
					obj.add_child(timer)
					timer.owner = obj
					timer.wait_time = float(trigger[1][0])
					timer.one_shot = true
				"object_entered", "object_exited":
					create_area_circle(obj, str("area_", state), int(trigger[1][0]))

func initialize_flags(obj, flags):
	for flag in flags:
		obj.add_to_group(flag)
		match flag:
			_:
				pass

func create_area_circle(obj, n, r):
	var area = Area2D.new()
	area.name = n
	obj.add_child(area)
	area.owner = obj
	var collision = CollisionShape2D.new()
	collision.name = "radius"
	area.add_child(collision)
	collision.owner = obj
	var shape = CircleShape2D.new()
	shape.radius = r
	collision.shape = shape
	return area

func animation_create_track(animation, index, property):
	animation.add_track(Animation.TYPE_VALUE, index)
	animation.track_set_path(index, property)
	animation.track_set_interpolation_type(index, Animation.INTERPOLATION_NEAREST)

func animation_find_time(frame, index):
	if frame[0].size() > index:
		return float(frame[0][index])
	return 0
