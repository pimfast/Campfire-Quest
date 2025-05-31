/// @desc

with (obj_game) {
	if (location != "hill") {
		if (rounds < 0) {
			//you go on the hill for the first time
			location = "hill"
			scr_blog("You are now on the hill. You see a shooting star.")
		} else {
			location = "hill"
			scr_blog("You are now on the hill.")
		//rounds += 1
		}
	} else {
		scr_blog("You're already on the hill.")
	}
}