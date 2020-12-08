extends Node

class_name StateMachine

var object

var current_state = "Spawn"
export var states = {}
var triggers = [] # [[connecter, name, func], [connecter, name, func], ...]

func _ready():
	object = get_parent()

func _physics_process(_delta):
	state_machine()

func state_machine():
	for action in states[current_state]["actions"]:
		object.callv(action[0], action[1])

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

func process_trigger(trigger, state):
	object.call(str("trigger_", trigger[0]), trigger, state)

func connect_trigger(node, sig, fnc, state):
	node.connect(sig, self, fnc, [state])
	triggers.append([node, sig, fnc])

func change_state_skip1var(_var1, state):
	change_state(state)

func change_state_check_group(node, p): # p[0] = group, p[1] = state
	if node.is_in_group(p[0]) && node != self:
		change_state(p[1])
