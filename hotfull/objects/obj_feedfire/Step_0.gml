/// @desc

//gray out if not in area
with (obj_game) {
	if (location != "campfire") {
		with (obj_feedfire) {
			image_index = 1
		}
	} else {
		with (obj_feedfire) {
			image_index = 0
		}
	}
}