extends Node

class_name Constructor

var root_path = "res://game/"

func construct_object(dict):
	var object
	match dict.type:
		"entity":
			var entity = Entity.new()
			construct_entity(entity, dict)
			object = entity
		"enemy":
			var enemy = Enemy.new()
			construct_entity(enemy, dict)
			construct_enemy(enemy, dict)
			object = enemy
		"player":
			var player = Player.new()
			construct_entity(player, dict)
			construct_player(player, dict)
			object = player
		"weapon":
			var weapon = Weapon.new()
			construct_weapon(weapon, dict)
			object = weapon
	return object

func cache_object(object):
	var cache_path = str("res://game/cache/", object.name.to_lower(), ".tscn")
	var packed_scene = PackedScene.new()
	packed_scene.pack(object)
	var _err = ResourceSaver.save(cache_path, packed_scene)

func construct_entity(entity, dict):
	var prop = dict.properties
	for property in prop:
		match property:
			"SpriteSheet":
				initialize_sprite(entity, prop.SpriteSheet[0].replace("\"", ""), prop.SpriteSheet[1], prop.SpriteSheet[2])
			"Size":
				initialize_collision(entity, prop.Size[0], prop.Size[1])
			_:
				entity.set(property.to_lower(), float(prop.get(property)[0]))
	
	initialize_animations(entity, dict.animations)
	initialize_state_machine(entity, dict.states)
	
	entity.name = dict.name

func construct_enemy(_enemy, _dict):
	pass

func construct_player(player, _dict):
	var camera = Camera2D.new()
	camera.name = "camera"
	player.add_child(camera)
	camera.owner = player
	camera.current = true
	camera.zoom = Vector2(0.5, 0.5)

func construct_weapon(weapon, dict):
	var prop = dict.properties
	for property in prop:
		match property:
			"SpriteSheet":
				initialize_sprite(weapon, prop.SpriteSheet[0].replace("\"", ""), prop.SpriteSheet[1], prop.SpriteSheet[2])
	
	initialize_animations(weapon, dict.animations)
	initialize_state_machine(weapon, dict.states)
	
	weapon.name = dict.name


func initialize_sprite(obj, tex, hf, vf):
	var sprite = Sprite.new()
	sprite.name = "sprite"
	obj.add_child(sprite)
	sprite.owner = obj
	sprite.texture = load(root_path+tex+".png")
	sprite.hframes = int(hf)
	sprite.vframes = int(vf)
	obj.sprite = sprite

func initialize_collision(obj, w, h):
	var collision = CollisionShape2D.new()
	collision.name = "collision"
	obj.add_child(collision)
	collision.owner = obj
	var shape = CapsuleShape2D.new()
	shape.radius = float(w)
	shape.height = float(h)
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
		a.add_track(Animation.TYPE_VALUE, 0)
		a.track_set_path(0, "sprite:frame")
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

func initialize_state_machine(obj, states):
	var state_machine = StateMachine.new()
	state_machine.name = "state_machine"
	obj.add_child(state_machine)
	state_machine.owner = obj
	state_machine.states = states
	
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
					var area = Area2D.new()
					area.name = str("area_", state)
					obj.add_child(area)
					area.owner = obj
					var collision = CollisionShape2D.new()
					collision.name = "radius"
					area.add_child(collision)
					collision.owner = obj
					var shape = CircleShape2D.new()
					shape.radius = int(trigger[1][0])
					collision.shape = shape







