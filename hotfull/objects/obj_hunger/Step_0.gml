/// @desc

with (obj_game) {
	
	if (fire_level > 0){
		with (obj_fire_level) {
			image_index = 0
		}
	}

	if (fire_level <= 0){
		with (obj_fire_level) {
			image_index = 1
		}
	}
}