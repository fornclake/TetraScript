extends Entity

class_name Enemy

export(float) var damage = 0

var hitbox

func _ready():
	hitbox = get_node("hitbox")
	add_to_group("enemy")
	randomize_movedir()
	
	hitbox.connect("body_entered", self, "attempt_contact_damage")

func attempt_contact_damage(body):
	if body is Player && current_state != "Hurt":
		body.damage(damage, position)
