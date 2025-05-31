/// @desc

with (obj_game) {
	if (location == "campfire") {
		if (inventory != "empty") {
			
			if (chestslot1 != "empty") && (chestslot2 != "empty") && (chestslot3 != "empty") {
			scr_blog("Chest is full.")
			} else {
				if (chestslot1 == "empty") {
					chestslot1 = inventory
					inventory = "empty"
				
					scr_blog("You deposited your "+chestslot1+".")
					audio_play_sound(sfx_putitem,1,0,1,0,1)
					rounds += 1
				} else {
					if (chestslot2 == "empty") {
						chestslot2 = inventory
						inventory = "empty"
				
						scr_blog("You deposited your "+chestslot2+".")
						audio_play_sound(sfx_putitem,1,0,1,0,0.9)
						rounds += 1
					} else {
						if (chestslot3 == "empty") {
							chestslot3 = inventory
							inventory = "empty"
					
							scr_blog("You deposited your "+chestslot3+". The chest is now full.")
							audio_play_sound(sfx_putitem,1,0,1,0,0.8)
							rounds += 1
						}
					}
				} 
			}
		} else {
			scr_blog("You have nothing to store.")
		}
	} else {
		scr_blog("You need to be at the campfire to use the chest.")
	}
}