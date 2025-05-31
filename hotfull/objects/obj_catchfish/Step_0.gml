/// @desc

//gray out if not in area
with (obj_game) {
	if (location != "lake") {
		with (obj_catchfish) {
			image_index = 1
		}
	} else {
		with (obj_catchfish) {
			image_index = 0
		}
	}
}