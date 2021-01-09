extends Area2D

class_name Zone

const ZONE_MARGIN = 10

func _ready():
	var _err = connect("area_exited", self, "object_exited")
	yield(get_tree(), "idle_frame")
	for object in get_objects():
		object.home_zone = self

func clamp_enemies():
	var rect = get_rect()
	var enemies = get_objects("enemy")
	for enemy in enemies:
		if enemy.home_zone == self:
			enemy.position.x = clamp(enemy.position.x, rect.position.x + ZONE_MARGIN, rect.position.x + rect.size.x - ZONE_MARGIN)
			enemy.position.y = clamp(enemy.position.y, rect.position.y + ZONE_MARGIN, rect.position.y + rect.size.y - ZONE_MARGIN)
		else:
			enemy.position = enemy.home_position

func object_exited(object):
	if object is Weapon && object.is_in_group("projectile"):
		object.queue_free() # to network

func get_objects(type="object"):
	var objects = []
	for body in get_overlapping_bodies():
		if body.is_in_group(type):
			objects.append(body)
	for area in get_overlapping_areas():
		if area.is_in_group(type):
			objects.append(area)
	return objects

func get_rect():
	var extents = get_node("CollisionShape2D").shape.extents
	return Rect2(position, extents*2)
