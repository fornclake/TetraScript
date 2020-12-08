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

# PLAYER LOGIC #
func loop_controls():
	movedir = Vector2.ZERO
	
	var LEFT = Input.is_action_pressed("ui_left")
	var RIGHT = Input.is_action_pressed("ui_right")
	var UP = Input.is_action_pressed("ui_up")
	var DOWN = Input.is_action_pressed("ui_down")
	
	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)

