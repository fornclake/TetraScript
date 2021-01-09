extends TSObject

class_name Entity

# Properties
export(float) var health = 0.5
export(int) var speed = 40

# Movement
var movedir = Vector2(0,0)
var spritedir = "Down"

signal hurt

const DEFAULT_STATES = {
	"Hurt": {
		"actions": [
			["move",[100]]
		],
		"triggers": [
			["timer",[0.2],"Default"]
		]
	},
}

func _ready():
	add_to_group("entity")
	collision = get_node("collision")
	if !sprite.material:
		sprite.material = ShaderMaterial.new()
		sprite.material.set_shader(preload("res://engine/gameplay/shaders/entity.shader"))

func _process(_delta):
	set_hurt_shader(current_state == "Hurt")

func move(spd=speed):
	spd = int(spd)
	loop_movement(spd)

func wander(length):
	execute_timer(length, "randomize_movedir")
	loop_movement()
	if myself.is_on_wall():
		movedir = -movedir

func use_weapon(path : String):
	var weapon = load(str("res://game/cache/", path.to_lower(), ".tscn")).instance()
	get_parent().add_child(weapon)
	weapon.position = position
	weapon.user = self

func loop_movement(spd=speed):
	var motion = movedir.normalized() * spd
	motion = myself.move_and_slide(motion)

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

func damage(dmg, pos):
	health -= dmg
	if states.has("Hurt") && current_state != "Hurt":
		emit_signal("hurt")
		movedir = position - pos
		change_state("Hurt")

func set_hurt_shader(h):
	sprite.material.set_shader_param("is_hurt", bool(int(h)))

func randomize_movedir():
	movedir = random_direction()
