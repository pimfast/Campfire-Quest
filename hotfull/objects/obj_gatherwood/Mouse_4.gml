/// @desc

with (obj_game) {
	if (location == "forest") {
		if (inventory == "empty") {
		    inventory = "log"
			scr_blog("You gathered wood.")
			audio_play_sound(sfx_gatherwood,1,0)
			rounds += 1
		} else {
			scr_blog("Your inventory is full.")
		}
	} else {
		scr_blog("You need to be in the forest to gather wood.")
	}
} 