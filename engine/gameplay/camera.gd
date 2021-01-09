extends Camera2D

var target
var current_zone : Zone
onready var center = $center
onready var tween = $tween

signal zone_changed
signal scroll_start
signal scroll_end

const SCROLL_DURATION = 0.5
const SCREEN_SIZE = Vector2(256,144)
const TILE_SIZE = 16

func _ready():
	set_physics_process(false)

func start(): # call after target set
	position = target.position
	var _err = connect("zone_changed", self, "scroll_screen")
	
	yield(get_tree(), "physics_frame")
	
	set_physics_process(true)
	
	# wait 2 frames & skip the initial screen scroll catch up
	yield(get_tree(), "physics_frame")
	yield(get_tree(), "physics_frame")
	tween.seek(SCROLL_DURATION)

func _physics_process(_delta):
	position = target.position
	update_current_zone()

func update_current_zone():
	if center.get_overlapping_areas().size() > 0:
		var zone = center.get_overlapping_areas()[0] # priority shouldn't matter much
		if zone != current_zone:
			current_zone = zone
			emit_signal("zone_changed")

func scroll_screen():
	var zone_rect = current_zone.get_rect()
	
	emit_signal("scroll_start") # used to pause player processing
	set_physics_process(false) # pause camera behavior
	smoothing_enabled = false
	
	var scroll_from = get_camera_screen_center()
	
	# remove the current camera limits (can't have limits while scrolling)
	limit_left = -1000000
	limit_right = 1000000
	limit_top = -1000000
	limit_bottom = 1000000
	
	position = scroll_from # move camera's actual position to scroll start pos
	
	# where we're scrolling to. it's the first position in the next zone that
	# is at least halfway through the screen size away from the edge.
	# basically fake limits code just used to get where the camera /will/ be
	var scroll_to = target.position
	var scroll_to_min = zone_rect.position + SCREEN_SIZE / 2
	var scroll_to_max = zone_rect.position + zone_rect.size - SCREEN_SIZE / 2
	scroll_to.x = clamp(scroll_to.x, scroll_to_min.x, scroll_to_max.x)
	scroll_to.y = clamp(scroll_to.y, scroll_to_min.y, scroll_to_max.y)
	
	# tween & wait until finished
	tween.interpolate_property(self, "position", scroll_from, scroll_to, SCROLL_DURATION, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
	yield(tween, "tween_all_completed")
	
	# actually set the limits
	set_limits(zone_rect)
	
	# finish up and start following player again
	smoothing_enabled = true
	emit_signal("scroll_end")
	set_physics_process(true)

func set_limits(rect : Rect2):
	limit_left = int(rect.position.x)
	limit_right = int(rect.position.x + rect.size.x)
	limit_top = int(rect.position.y)
	limit_bottom = int(rect.position.y + rect.size.y)











