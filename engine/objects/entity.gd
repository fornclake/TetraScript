extends KinematicBody2D

class_name Entity

# Properties
var health = 0.5
var speed = 40
var damage = 0.5

# State Machine
var current_state = "Spawn"
var states = {}
var triggers = [] # [[connecter, name, func], [connecter, name, func], ...]

# Node References
var sprite : Sprite
var anim : AnimationPlayer
var collision : CollisionShape2D

# Movement
var movedir = Vector2(0,0)
var spritedir = "Down"

func _ready():
	set_physics_process(false)

func initialize():
	set_physics_process(true)

func _physics_process(_delta):
	state_machine()

# STATE MACHINE #
func state_machine():
	for action in states[current_state]["actions"]:
		callv(action[0], action[1])

func change_state(state):
	for old_trigger in triggers:
		old_trigger[0].disconnect(old_trigger[1], self, old_trigger[2])
	triggers = []
	
	for new_trigger in states[state]["triggers"]:
		process_trigger(new_trigger)
	
	current_state = state

func process_trigger(trigger):
	match trigger[0]:
		"anim_finished":
			connect_trigger(anim, "animation_finished", "trigger_1var", trigger[2])

func connect_trigger(obj, sig, fnc, state):
	obj.connect(sig, self, fnc, [state])
	triggers.append([obj, sig, fnc])

# ACTIONS #
func use_weapon(_weapon):
	pass

func anim_play(animation):
	if anim.current_animation != animation:
		anim.play(animation)

func wander():
	pass

# TRIGGERS #
func trigger_1var(_var1, state):
	change_state(state)





