extends TSObject

class_name Tile

func _ready():
	z_index -= 50
	var _err = connect("state_changed", self, "actions")
	set_physics_process(false)
	actions()

func process_flags():
	.process_flags()
	if flags.has("NoCollision"):
		myself.layers = 0
		myself.set_collision_layer_bit(4,1)
