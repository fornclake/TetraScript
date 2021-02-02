extends Area2D

class_name Zone

const ZONE_MARGIN = 10

func _ready():
	var _err = connect("area_exited", self, "object_exited")
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	for object in get_objects():
		object.home_zone = self

func clamp_enemies(): # clamps enemy positions to this zone
	var rect = get_rect()
	var enemies = get_objects("enemy")
	for enemy in enemies:
		if enemy.home_zone == self: # only clamps enemies that were spawned in this zone
			enemy.position.x = clamp(enemy.position.x, rect.position.x + ZONE_MARGIN, rect.position.x + rect.size.x - ZONE_MARGIN)
			enemy.position.y = clamp(enemy.position.y, rect.position.y + ZONE_MARGIN, rect.position.y + rect.size.y - ZONE_MARGIN)
		else:
			enemy.position = enemy.home_position # enemies that break through are deported

func object_exited(object):
	if object is Weapon && object.is_in_group("projectile"): # delete OOB projectiles
		object.queue_free() # to network

func get_objects(type="object"): # returns a list of all objects of "type" in this zone
	var objects = []
	var overlapping_objects = get_overlapping_bodies() + get_overlapping_areas()
	for object in overlapping_objects:
		if object.is_in_group(type):
			objects.append(object)
	return objects

func get_rect(): # Rect2 of zone's area
	return Rect2(position, get_node("CollisionShape2D").shape.extents*2)
