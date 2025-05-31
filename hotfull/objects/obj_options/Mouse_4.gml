/// @desc

with (obj_game) {
	if (paused == false) {
		paused = true
		instance_deactivate_object(obj_attack)
		instance_deactivate_object(obj_catchfish)
		instance_deactivate_object(obj_feedfire)
		instance_deactivate_object(obj_gatherwood)
		instance_deactivate_object(obj_getitem)
		instance_deactivate_object(obj_gotocampfire)
		instance_deactivate_object(obj_gotocave)
		instance_deactivate_object(obj_gotoforest)
		instance_deactivate_object(obj_gotolake)
		instance_deactivate_object(obj_spelunk)
		instance_deactivate_object(obj_putitem)
		instance_deactivate_object(obj_roastfish)
	} else {
		paused = false
		instance_activate_all()
	}
}