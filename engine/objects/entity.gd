extends TSObject

class_name Entity

# Properties
export(float) var health = 0.5
export(int) var speed = 40
export(float) var damage = 0

var entity = self

# Movement
var movedir = Vector2(0,0)
var spritedir = "Down"

const DEFAULT_STATES = {
	"Hurt": {
		"actions": [
			["set_hurt_shader",[1]],
			["move",[125]]
		],
		"triggers": [
			["timer",[0.15],"EndHurt"]
		]
	},
	"EndHurt": {
		"actions": [
			["set_hurt_shader",[0]],
			["change_state",["Default"]]
		],
		"triggers": []
	},
}

func _ready():
	add_to_group("entity")
	collision = get_node("collision")
	if !sprite.material:
		sprite.material = ShaderMaterial.new()
		sprite.material.set_shader(preload("res://engine/shaders/entity.shader"))

func move(spd=speed):
	spd = int(spd)
	loop_movement(spd)

func wander(length):
	execute_timer(length, "randomize_movedir")
	loop_movement()
	if entity.is_on_wall():
		movedir = -movedir

func use_weapon(path : String):
	var weapon = load(str("res://game/cache/", path.to_lower(), ".tscn")).instance()
	get_parent().add_child(weapon)
	weapon.position = position
	weapon.user = self
	weapon.process_flags()

func loop_movement(spd=speed):
	var motion = movedir.normalized() * spd
	motion = entity.move_and_slide(motion)

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
	if states.has("Hurt"):
		movedir = position - pos
		change_state("Hurt")

func set_hurt_shader(h):
	sprite.material.set_shader_param("is_hurt", bool(int(h)))

func randomize_movedir():
	movedir = random_direction()
