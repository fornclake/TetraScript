extends Node

class_name Helper

static func load_text(path):
	var f = File.new()
	var err = f.open(path, File.READ)
	if err != OK:
		printerr("Could not open file. Error code ", err)
		return ""
	var t = f.get_as_text()
	f.close()
	return t

static func create_directory(path):
	var dir = Directory.new()
	dir.open("user://")
	dir.make_dir(path.right(path.find("user://")))

static func clear_directory(path):
	var files = []
	var dir = Directory.new()
	if dir.open(path) != OK:
		print("\"", path, "\" does not exist")
		return
	dir.list_dir_begin()
	
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif not file.begins_with("."):
			files.append(file)
	
	dir.list_dir_end()
	
	for file in files:
		dir.remove(file)
