extends Control

func start_update():
	$update.start()

func stop_update():
	$update.stop()

func update():
	hide()
	return
	$fps.text = str("FPS: ", Engine.get_frames_per_second())
	$map.text = str("Map: ", Client.current_map.name)
	$zone.text = str("Zone: ", Client.get_current_zone().name)
	
	$map_objects.text = str(" Map: ", get_tree().get_nodes_in_group("object").size())
	$zone_objects.text = str(" Zone: ", Client.get_current_zone().get_objects().size())
	$active_objects.text = str(" Active: ", Client.current_map.get_active_objects().size())
	
	$mp_mode.text = str("MP: ", Network.mode)
	$player_list.text = str("Players: ", Network.player_list)
	$map_hosts.text = str("Hosts: ", Network.map_hosts)
	
