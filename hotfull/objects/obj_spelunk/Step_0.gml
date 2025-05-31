/// @desc

//gray out if not in area
with (obj_game) {
	if (location != "cave") {
		with (obj_spelunk) {
			image_index = 1
		}
	} else {
		with (obj_spelunk) {
			image_index = 0
		}
	}
}