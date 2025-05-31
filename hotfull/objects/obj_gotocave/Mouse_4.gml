/// @desc

with (obj_game) {
	if (debriscleared == true) {
		if (location != "cave") {
			location = "cave"
			scr_blog("You are now in the cave.")
			//rounds += 1
		} else {
			scr_blog("You're already in the cave.")
		}
	} else {
		scr_blog("The entrance is blocked by debris.")
	}
}