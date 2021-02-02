extends MarginContainer

onready var debug = $debug
onready var chat = $chat

func _ready():
	var _err = get_tree().root.connect("size_changed", self, "window_size_changed")
	$debug/update.start()

func window_size_changed():
	rect_size = get_tree().root.get_viewport().size / 2
