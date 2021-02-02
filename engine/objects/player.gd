extends Entity

class_name Player

func _ready():
	add_to_group("player")

# ACTIONS #
func default():
	loop_controls()
	loop_movement()
	loop_spritedir()
	if movedir == Vector2.ZERO:
		anim_dir_play("idle")
	else:
		anim_dir_play("walk")
	
	if Input.is_action_just_pressed("a"):
		use_weapon("sword")

func swing():
	anim_dir_play("swing")
	loop_movement()
	movedir = Vector2.ZERO

# PLAYER LOGIC #
func loop_controls():
	movedir.x = -int(Input.is_action_pressed("ui_left")) + int(Input.is_action_pressed("ui_right"))
	movedir.y = -int(Input.is_action_pressed("ui_up")) + int(Input.is_action_pressed("ui_down"))

# NETWORK #
func update_network_master():
	set_network_master(int(name))
