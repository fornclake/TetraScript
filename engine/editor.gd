extends MarginContainer

onready var script_view = $"hsplit/scrollviews/Script View/text"
onready var object_view = $"hsplit/scrollviews/Object View"
onready var states = $hsplit/viewer/states_scroll/states
onready var objects_hbox = $hsplit/viewer/objects_scroll/objects
onready var viewport = $Viewport
onready var helper = Helper.new()

func _ready():
	script_view.text = helper.load_text("res://game/objects/objects.txt")

func _on_parse_pressed():
	var parser = Parser.new()
	var dicts = parser.parse_objects(script_view.text)
	for dict in dicts:
		var constructor = Constructor.new()
		var object = constructor.construct_object(dict)
		constructor.cache_object(object)
	for object in get_tree().get_nodes_in_group("object"):
		object.queue_free()
	spawn_object(dicts[0])

func spawn_object(dict):
	var constructor = Constructor.new()
	var object = constructor.construct_object(dict)
	object_view.text = JSON.print(dict, "    ")
	viewport.add_child(object)
	object.position = Vector2(128,72)
	
	yield(get_tree(), "idle_frame")
	
	for child in states.get_children():
		child.queue_free()
	for state in dict.states:
		var new_button = Button.new()
		new_button.text = state
		new_button.connect("pressed", object, "change_state", [state])
		states.add_child(new_button)

func _on_save_pressed():
	$save_dialog.popup()

func _on_save_dialog_file_selected(path):
	var file = File.new()
	file.open(path, File.WRITE)
	file.store_line(script_view.text)
	file.close()

func _on_load_pressed():
	$load_dialog.popup()

func _on_load_dialog_file_selected(path):
	script_view.text = helper.load_text(path)

func _on_user_dir_pressed():
	var _err = OS.shell_open(OS.get_user_data_dir())
