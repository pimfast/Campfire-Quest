/// @desc

with (obj_game) {
	if (location == "cave") {
		if (inventory == "empty") {
		    mathrandom = irandom_range(1,100)
			if (mathrandom > 10) {
				if (mathrandom <= 12) {inventory = "big fish"}
				if (mathrandom > 12) && (mathrandom <= 35) {inventory = "spear"}
			} else {
				//junk item
				mathrandom = irandom(1)
				if (mathrandom == 0) {inventory = "fish"}
				if (mathrandom == 1) {inventory = "log"}
			}
			scr_blog("You found "+inventory+".")
			audio_play_sound(sfx_mineore,1,0)
			rounds += 1
		} else {
			scr_blog("Your inventory is full.")
		}
	} else {
		scr_blog("You need to be in the cave to spelunk.")
	}
}