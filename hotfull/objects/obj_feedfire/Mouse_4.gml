/// @desc

if (obj_game.inventory == "1/3 bomb") || (obj_game.inventory == "2/3 bomb") || (obj_game.inventory == "3/3 bomb") {
	obj_game.inventory = "bomb"
}

with (obj_game) {
	if (location == "campfire") {
		if (inventory == "log") {
		    inventory = "empty"
			fire_level += 1
			fire_levelsaturation = 3
			if (fire_level >= 3) {
				scr_blog("You fed the fire. It's as big as it gets.")
			} else {
				scr_blog("You fed the fire.")
			}
			roundsuntilfireleveldecrease = 3
			audio_play_sound(sfx_feedfire,1,0)
			rounds += 1
		} else {
			if (inventory == "empty") {
				scr_blog("You need a log.")
			} else {
				if (inventory != "empty") || (inventory != "log") {
					scr_blog("You disposed your "+inventory+".")
					inventory = "empty"
					audio_play_sound(sfx_disposeitem,1,0)
					if (fire_level > 0) {audio_play_sound(sfx_feedfire2,1,false,1)}
					rounds += 1
				}
			}
		}
	} else {
		scr_blog("You need to be at the campfire to feed the fire.")
	}
}