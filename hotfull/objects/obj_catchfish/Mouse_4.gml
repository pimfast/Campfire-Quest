/// @desc

with (obj_game) {
	if (location == "lake") {
		if (inventory == "empty") {
			
			//fishcatch = irandom_range(0,4)
			fishcatch = irandom_range(0,2)
			if (fishcatch == 2) {
				inventory = "big fish"
			    scr_blog("WHOA!! You caught a big one!")
			} else {
			    inventory = "fish"
			    scr_blog("You caught a fish.")
			}
			audio_play_sound(sfx_catchfish,1,0)
			rounds += 1
		} else {
		    scr_blog("Your inventory is full.")
		}
	} else {
		scr_blog("You need to be at the lake to catch fish.")
	}
} 