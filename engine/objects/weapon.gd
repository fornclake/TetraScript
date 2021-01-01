extends TSObject

class_name Weapon

export(int) var speed = 0
export(float) var damage = 0

var user = null
var movedir = Vector2(0,0)
var spritedir = "Down"

func _ready():
	add_to_group("weapon")
	connect("body_entered", self, "attempt_damage")

func process_flags():
	if flags.has("delete_on_hit"):
		connect("body_entered", self, "delete_on_hit")
	if flags.has("delete_on_state_change"):
		user.connect("state_changed", self, "queue_free")

func move():
	position += movedir * speed * get_physics_process_delta_time()

func target_nearest(group):
	var nearest_distance = 99999999
	var objects = get_tree().get_nodes_in_group(group)
	var closest_node = null
	for object in objects:
		if position.distance_to(object.position) < nearest_distance:
			nearest_distance = position.distance_to(object.position)
			closest_node = object
	if closest_node != null:
		movedir = Vector2(-1,0).rotated(position.angle_to_point(closest_node.position))

func match_spritedir():
	spritedir = user.spritedir

func match_position():
	position = user.position

func change_user_state(state):
	user.change_state(state)

func delete_on_hit(body):
	if body != user:
		queue_free()

func attempt_damage(body):
	if body is Entity && body != user:
		body.damage(damage, position)







