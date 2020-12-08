extends KinematicBody2D

class_name Entity

# Properties
export var health = 0.5
export var speed = 40
export var damage = 0.5

# Node References
var sprite : Sprite
var anim : AnimationPlayer
var collision : CollisionShape2D
var state_machine : StateMachine

# Movement
var movedir = Vector2(0,0)
var spritedir = "Down"

func _ready():
	add_to_group("object")
	add_to_group("entity")
	
	sprite = get_node("sprite")
	anim = get_node("anim")
	collision = get_node("collision")
	state_machine = get_node("state_machine")
	
	randomize_movedir()
	
	state_machine.change_state(state_machine.current_state)

# ACTIONS #
func use_weapon(_weapon):
	pass

func anim_play(animation):
	if anim.current_animation != animation:
		anim.play(animation)

func anim_dir_play(animation):
	var newanim = str(animation, spritedir)
	if spritedir in ["Left", "Right"]:
		newanim = str(animation, "Side")
	if anim.current_animation != animation:
		anim.play(newanim)

func wander(length):
	execute_timer(length, "randomize_movedir")
	loop_movement()
	if is_on_wall():
		movedir = -movedir

# TRIGGERS #
func trigger_anim_finished(trigger, _state):
	state_machine.connect_trigger(anim, "animation_finished", "change_state_skip1var", trigger[2])

func trigger_timer(trigger, state):
	var timer = get_node(str("timer_", state))
	state_machine.connect_trigger(timer, "timeout", "change_state", trigger[2])
	timer.start()

func trigger_object_entered(trigger, state):
	var area = get_node(str("area_", state))
	state_machine.connect_trigger(area, "body_entered", "change_state_check_group", [trigger[1][1], trigger[2]])
	yield(get_tree(), "physics_frame")
	for body in area.get_overlapping_bodies():
		if body.is_in_group(trigger[1][1]):
			state_machine.change_state(trigger[2])
			break

func trigger_object_exited(trigger, state):
	var area = get_node(str("area_", state))
	state_machine.connect_trigger(area, "body_exited", "change_state_check_group", [trigger[1][1], trigger[2]])
	yield(get_tree(), "physics_frame")
	var has_body = false
	for body in area.get_overlapping_bodies():
		if body.is_in_group(trigger[1][1]):
			has_body = true
			break
	if !has_body:
		state_machine.change_state(trigger[2])

# ENTITY LOGIC #
func loop_movement():
	var motion = movedir.normalized() * speed
	motion = move_and_slide(motion)

func loop_spritedir():
	match movedir:
		Vector2.LEFT:
			spritedir = "Left"
		Vector2.RIGHT:
			spritedir = "Right"
		Vector2.UP:
			spritedir = "Up"
		Vector2.DOWN:
			spritedir = "Down"
	
	sprite.flip_h = (spritedir == "Left")

func execute_timer(length, function, args=[]):
	if !has_node(str("timer_",function)):
		var timer = Timer.new()
		add_child(timer)
		timer.name = str("timer_",function)
		timer.wait_time = float(length)
		timer.connect("timeout", self, function, args)
		timer.add_to_group("state_node")
		timer.start()

func randomize_movedir():
	movedir = random_direction()

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

