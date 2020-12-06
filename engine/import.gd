extends SceneTree

func _init():
	var helper = Helper.new()
	var temp_def = helper.load_text("res://game/objects/enemies.txt")
	var parser = Parser.new()
	var dicts = parser.parse_objects(temp_def)
	parser.queue_free()
	
	helper.clear_directory("res://game/cache/")
	
	for dict in dicts:
		var constructor = Constructor.new()
		var object = constructor.construct_object(dict)
		constructor.cache_object(object)
		constructor.queue_free()
	
	quit()
