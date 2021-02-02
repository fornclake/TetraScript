extends Node2D

class_name TSObject

# Node References
var myself = self
var sprite : Sprite
var anim : AnimationPlayer
var collision : CollisionShape2D
var tween : Tween

# State Machine
export var current_state = "Spawn"
export var states = {}
var triggers = [] # [[connecter, name, func], [connecter, name, func], ...]
signal state_changed

export var flags = []
export var variables = {} ### CURRENTLY CUSTOM VARIABLES ONLY SUPPORT ACTIONS NOT TRIGGERS ###

var home_position = position
var home_zone = null

var network_position = Vector2(0,0) setget position_changed
var network_animation = "idleDown" setget animation_changed

# Networking
export(Dictionary) var update_properties = {}
export(Dictionary) var enter_properties = {}

func _ready():
	hide()
	add_to_group("object")
	
	var _player_list_received = Network.connect("player_list_received", self, "update_network_master")
	if Network.mode != Network.MODE.SP:
		update_network_master()
	var _tick = Network.tick_timer.connect("timeout", self, "network_tick")
	
	sprite = get_node("sprite")
	anim = get_node("anim")
	tween = get_node("tween")
	if has_node("collision"):
		collision = get_node("collision")
	
	z_index += 100
	
	home_position = position
	
	process_flags()
	change_state(current_state)
	
	yield(get_tree(), "physics_frame")
	
	show()

func process_flags():
	if flags.has("ClientSide"):
		add_to_group("clientside")
	if flags.has("ForceSync"):
		add_to_group("forcesync")

# STATE MACHINE
func _physics_process(_delta):
	match Network.mode:
		Network.MODE.SP:
			actions()
		Network.MODE.CLIENT, Network.MODE.SERVER:
			if is_network_master() || is_in_group("clientside"):
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
	if Network.mode != Network.MODE.SP && !is_network_master() && !is_in_group("clientside"):
		return
	
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
	network_animation = animation

func anim_dir_play(animation):
	var newanim = str(animation, get("spritedir"))
	network_animation = newanim
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
	if Network.mode == Network.MODE.SP:
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

# NETWORK #
func update_network_master():
	if Client.current_map == null:
		yield(Client, "map_changed")
	set_network_master(int(Network.map_hosts[Client.current_map.name]))
	change_state(current_state)

func network_tick():
	if (Network.is_map_host() || is_in_group("forcesync")) && is_network_master():
		sync_update_properties()

func sync_update_properties():
	for key in update_properties.keys():
		update_properties[key] = get(str(key))
	for peer in Network.map_peers:
		rpc_id(peer, "_receive_update", update_properties)

remote func _receive_update(properties):
	for key in properties.keys():
		set(key, properties[key])

func position_changed(value):
	network_position = value
	var _interpolate = tween.interpolate_property(self, "position", position, network_position, Network.tick_timer.wait_time, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	var _start = tween.start()

func animation_changed(value):
	network_animation = value
	if !anim.has_animation(network_animation):
		if get("spritedir") in ["Left", "Right"]:
			network_animation = network_animation.replace(get("spritedir"), "Side")
	if anim.current_animation != network_animation:
		anim.play(network_animation)






