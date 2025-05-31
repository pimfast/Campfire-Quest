/// @desc

with (obj_game) {
	if (location != "campfire") {
		location = "campfire"
		scr_blog("You are now at the campfire.")
		//rounds += 1
	} else {
		scr_blog("You're already at the campfire.")
	}
}