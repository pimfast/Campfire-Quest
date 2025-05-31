/// @desc

with (obj_game) {
	if (location != "lake") {
		location = "lake"
		scr_blog("You are now at the lake.")
		//rounds += 1
	} else {
		scr_blog("You're already at the lake.")
	}
}