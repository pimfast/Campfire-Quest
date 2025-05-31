/// @desc

with (obj_game) {
	if (location == "campfire") {
		if (inventory == "empty") {
			
			if (chestslot3 != "empty") {
				inventory = chestslot3
				chestslot3 = "empty"
				
				scr_blog("You took your "+inventory+".")
				audio_play_sound(sfx_getitem,1,0,1,0,0.8)
				rounds += 1
			} else {
				if (chestslot2 != "empty") {
					inventory = chestslot2
					chestslot2 = "empty"
				
					scr_blog("You took your "+inventory+".")
					audio_play_sound(sfx_getitem,1,0,1,0,0.9)
					rounds += 1
				} else {
					if (chestslot1 != "empty") {
						inventory = chestslot1
						chestslot1 = "empty"
					
						scr_blog("You took your "+inventory+". The chest is now empty.")
						audio_play_sound(sfx_getitem,1,0,1,0,1)
						rounds += 1
					}
				}
			} 
			if (chestslot1 == "empty") && (chestslot2 == "empty") && (chestslot3 == "empty") && (inventory == "empty") {
				scr_blog("Chest is empty.")
			}
		} else {
			scr_blog("Your inventory is full.")
		}
	} else {
		scr_blog("You need to be at the campfire to use the chest.")
	}
}