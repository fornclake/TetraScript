extends SceneTree

func _init():
	var helper = Helper.new()
	var temp_def = helper.load_text("res://game/objects/objects.txt")
	var parser = Parser.new()
	var dicts = parser.parse_objects(temp_def)
	print(dicts)
	
	var constructor = Constructor.new()
	for dict in dicts:
		var object = constructor.construct_object(dict)
		constructor.cache_object(object)
	
	quit()
