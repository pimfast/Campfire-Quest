/// @desc

//gray out if not in area
with (obj_game) {
	if (debriscleared == false) {
		with (obj_gotocave) {
			image_index = 1
		}
	} else {
		with (obj_gotocave) {
			image_index = 0
		}
	}
}