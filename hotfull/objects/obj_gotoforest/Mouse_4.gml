/// @desc

with (obj_game) {
	if (location != "forest") {
		location = "forest"
		scr_blog("You are now in the forest.")
		//rounds += 1
	} else {
		scr_blog("You're already in the forest.")
	}
}