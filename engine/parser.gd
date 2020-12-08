extends Node

class_name Parser

const OBJECT_TYPES = ["entity", "enemy", "player", "weapon"]

func parse_objects(t):
	var objects = []
	
	for type in OBJECT_TYPES:
		var last_line = t.find(type)
		#prints(type, last_line)
		for i in t.count(type):
			var right = t.right(last_line)
			var split = right.split(" ", false, 3)
			if split[0] == type && split[2].begins_with("{"):
				print(split[0])
				objects.append(parse_object(right))
			last_line = t.find(type, last_line+1)
	
	return objects

func parse_object(t):
	var obj = t.split(" ", false, 3)
	var obj_type = obj[0]
	var obj_name = obj[1]
	var obj_text = find_bracket(t)
	var properties = {}
	var states = {}
	var animations = {}
	
	var p_text = obj_text.left(obj_text.find("States"))
	p_text = p_text.strip_edges().replace(",", "").split("\n")
	for p in p_text:
		var p_arr = split_text(p)
		properties[p_arr[0]] = p_arr
		properties[p_arr[0]].pop_front()
	
	var s_text = find_bracket(obj_text.right(obj_text.find("States")))
	s_text = s_text.strip_edges().split("\n")
	var current_state = ""
	for s in s_text:
		var s_arr = split_text(s)
		if s_arr[0].ends_with(":"):
			current_state = s_arr[0].rstrip(":")
			states[current_state] = {"actions":[], "triggers":[]}
		elif s_arr[0] == "trigger":
			states[current_state].triggers.append([s_arr[1].left(s_arr[1].find("(")), get_parameters(s_arr[1]), s_arr[3]])
		elif s_arr[0].begins_with("state"):
			pass
		else:
			for action in s_arr:
				states[current_state].actions.append([s_arr[0].left(s_arr[0].find("(")), get_parameters(action)])
	
	var a_text = find_bracket(obj_text.right(obj_text.find("Animations")))
	a_text = a_text.strip_edges().split("\n")
	var current_animation = ""
	for a in a_text:
		var a_arr = split_text(a)
		if a_arr[0].ends_with(":"):
			current_animation = a_arr[0].rstrip(":")
			animations[current_animation] = []
		elif a_arr[0] == "loop":
			animations[current_animation].append(a_arr[0])
		else:
			animations[current_animation].append([a_arr])
	
	return {"type":obj_type, "name":obj_name, "properties":properties, "states":states, "animations":animations}

func split_text(t):
	var psa = t.strip_edges().split(" ")
	var arr = []
	for i in psa:
		arr.append(i)
	return arr

func get_parameters(t):
	var parameters = t.right(t.find("(") + 1) # remove left parenthesis
	parameters = parameters.left(parameters.find(")")) # remove right parenthesis
	parameters = parameters.replace("\"", "") # remove quotations
	parameters = parameters.replace(" ", "").split(",") # get parameters array with no spaces
	if parameters[0] == "":
		return []
	return parameters

func find_bracket(t):
	var depth = 0 # used to see how many layers deep into brackets
	var index = -t.find("{") # start negative so index 0 is the first bracket
	for c in t: # for character in text
		if c == "{":
			depth += 1 # go down a level
		if c == "}":
			depth -= 1 # go up a level
			if depth == 0: # if we're at an end bracket & we're not nested,
				return t.substr(t.find("{")+1, index-1) # return everything between the brackets
		index += 1
	return "failed"
