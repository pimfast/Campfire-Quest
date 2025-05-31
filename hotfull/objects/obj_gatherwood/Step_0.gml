/// @desc

//gray out if not in area
with (obj_game) {
	if (location != "forest") {
		with (obj_gatherwood) {
			image_index = 1
		}
	} else {
		with (obj_gatherwood) {
			image_index = 0
		}
	}
}