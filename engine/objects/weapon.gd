extends Node2D

class_name Weapon

# Node References
var sprite : Sprite
var anim : AnimationPlayer
var collision : CollisionShape2D
var state_machine : StateMachine

func _ready():
	add_to_group("object")
	add_to_group("weapon")
	
	sprite = get_node("sprite")
	anim = get_node("anim")
	collision = get_node("collision")
	state_machine = get_node("state_machine")
	
	state_machine.change_state(state_machine.current_state)
