extends Node2D

class_name TSObject

# Node References
var myself = self
var sprite : Sprite
var anim : AnimationPlayer
var collision : CollisionShape2D

# State Machine
export var current_state = "Spawn"
export var states = {}
var triggers = [] # [[connecter, name, func], [connecter, name, func], ...]

export var flags = []
export var variables = {} ### CURRENTLY CUSTOM VARIABLES ONLY SUPPORT ACTIONS NOT TRIGGERS ###

var home_position = position
var home_zone = null

signal state_changed

func _ready():
	hide()
	add_to_group("object")
	
	sprite = get_node("sprite")
	anim = get_node("anim")
	if has_node("collision"):
		collision = get_node("collision")
	
	z_index += 100
	
	home_position = position
	
	process_flags()
	change_state(current_state)
	
	yield(get_tree(), "physics_frame")
	
	show()

func process_flags():
	pass

# STATE MACHINE
func _physics_process(_delta):
	actions()

func actions():
	for action in states[current_state]["actions"]:
		var function = action[0]
		var parameters = []
		for parameter in action[1]:
			# strings w/o quotes are custom variables
			if parameter is String && parameter.count("\"") == 0:
				var p = str(parameter.to_lower())
				if p in variables.keys(): # if custom variable is found,
					parameter = variables[p] # replace parameter with variable's value
			parameters.append(parameter)
		callv(function, parameters)

func change_state(state):
	for child in get_children():
		if child.is_in_group("state_node"):
			child.queue_free()
	
	for old_trigger in triggers:
		old_trigger[0].disconnect(old_trigger[1], self, old_trigger[2])
	triggers = []
	
	for new_trigger in states[state]["triggers"]:
		process_trigger(new_trigger, state)
	
	current_state = state
	
	emit_signal("state_changed")

func process_trigger(trigger, state):
	call(str("trigger_", trigger[0]), trigger, state)

func connect_trigger(node, sig, fnc, state):
		node.connect(sig, self, fnc, [state])
		triggers.append([node, sig, fnc])

func change_state_skip1var(_var1, state): # some signals return stuff. this function just skips those
	change_state(state)

func change_state_check_group(node, p): # p[0] = group, p[1] = state
	if node.is_in_group(p[0]) && node != self:
		change_state(p[1])

# ACTIONS #
func anim_play(animation):
	if anim.current_animation != animation:
		anim.play(animation)

func anim_dir_play(animation):
	var newanim = str(animation, get("spritedir"))
	if !anim.has_animation(newanim):
		if get("spritedir") in ["Left", "Right"]:
			newanim = str(animation, "Side")
	if anim.current_animation != animation:
		anim.play(newanim)

func say(message):
	print(str(name, self, ": ", message))

func delete():
	queue_free()

func change_map(map, entrance):
	Client.change_map(map, entrance)

# TRIGGERS #
func trigger_anim_finished(trigger, _state):
	connect_trigger(anim, "animation_finished", "change_state_skip1var", trigger[2])

func trigger_timer(trigger, state):
	var timer = get_node(str("timer_", state))
	connect_trigger(timer, "timeout", "change_state", trigger[2])
	timer.start()

func trigger_object_entered(trigger, state):
	var area = get_node(str("area_", state))
	connect_trigger(area, "body_entered", "change_state_check_group", [trigger[1][1], trigger[2]])
	yield(get_tree(), "physics_frame")
	for body in area.get_overlapping_bodies():
		if body.is_in_group(trigger[1][1]):
			change_state(trigger[2])
			break

func trigger_object_exited(trigger, state):
	var area = get_node(str("area_", state))
	connect_trigger(area, "body_exited", "change_state_check_group", [trigger[1][1], trigger[2]])
	yield(get_tree(), "physics_frame")
	var has_body = false
	for body in area.get_overlapping_bodies():
		if body.is_in_group(trigger[1][1]):
			has_body = true
			break
	if !has_body:
		change_state(trigger[2])

func execute_timer(length, function, args=[]):
	if !has_node(str("timer_",function)):
		var timer = Timer.new()
		add_child(timer)
		timer.name = str("timer_",function)
		timer.wait_time = float(length)
		timer.connect("timeout", self, function, args)
		timer.add_to_group("state_node")
		timer.start()

func random_direction():
	match randi() % 3:
		0:
			return Vector2.LEFT
		1:
			return Vector2.RIGHT
		2:
			return Vector2.UP
		3:
			return Vector2.DOWN
