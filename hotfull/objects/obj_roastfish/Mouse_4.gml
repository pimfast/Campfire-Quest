/// @desc

with (obj_game) {
	if (location == "campfire") {
		if (fire_level > 0) {
			if (inventory == "fish") {
			    inventory = "empty"
				hunger -= 1
				hungersaturation += 1
				scr_blog("You cooked and ate a fish.")
				audio_play_sound(sfx_roastfish,1,0)
				rounds += 1
			} else {
				if (inventory == "big fish") {
					inventory = "empty"
					hunger -= 3
					hungersaturation += 1
					scr_blog("You cooked and ate a big fish.")
					audio_play_sound(sfx_roastfish,1,0,1,0,0.9)
					rounds += 1
				} else {
					scr_blog("You need fish.")
				}
			}
		} else {
			scr_blog("You need to fuel the fire to cook fish.")
		}
	} else {
		scr_blog("You need to be at the campfire to cook fish.")
	}
}