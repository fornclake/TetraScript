extends PanelContainer

onready var entry = $vsplit/entry
onready var messages = $vsplit/scroll/messages
onready var line = $vsplit/entry/hbox/line

func _ready():
	line.editable = false
	entry.hide()

func _input(event):
	if event.is_action_pressed("chat"):
		if line.editable:
			if line.text.begins_with("/"):
				run_command(line.text)
			else:
				add_message(line.text)
				if Network.mode != Network.MODE.SP:
					Network.rpc("receive_chat_message", line.text)
			line.editable = false
			line.text = ""
			entry.hide()
		else:
			line.editable = true
			line.grab_focus()
			entry.show()
	elif event.is_action_pressed("command") && !line.editable:
		line.editable = true
		line.grab_focus()
		entry.show()

func run_command(text : String):
	var function
	var arguments = text.replace("/", "").split(" ")
	if Client.commands.keys().has(arguments[0]):
		function = Client.commands[arguments[0]]
	else:
		Client.debug_msg(str("Command \"", arguments[0], "\" does not exist."))
		return
	arguments.remove(0)
	Client.callv(function, arguments)

func add_message(text, from=""):
	if text == "":
		return
	var label = Label.new()
	label.autowrap = true
	label.add_constant_override("line_spacing", -3)
	messages.add_child(label)
	
	if Network.mode != 0 && from == "":
		from = get_tree().get_network_unique_id()
	
	label.text = str("[",from,"] ", text)
	yield(get_tree(), "idle_frame")
	$vsplit/scroll.scroll_vertical += 99999999




