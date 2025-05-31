/// @desc

with (obj_game) {
	if (inventory == "bomb") {
		debriscleared = true
		inventory = "empty" 
	}
	if (threat != "nothing") {
		switch (inventory) {
			case "empty":
				//attacking w/ nothing
				scr_blog("You punched the "+threat+".")
				scr_damage(1)
		        break;
		    case "log":
				//attacking w/ log
				scr_blog("You whacked the "+threat+".")
				scr_damage(1)
		        break;
			case "fish":
				//attacking w/ fish
				scr_blog("You fish-slapped the "+threat+".")
				scr_damage(1)
				break;
			case "big fish":
				//attacking w/ big fish
				scr_blog("You fish-slapped the "+threat+".")
				scr_damage(1)
				break;
			case "old spear":
				//attacking w/ old spear
				scr_blog("You impaled the "+threat+".")
				scr_damage(2)
		    default:
				//attacking w/ something miscellaneous
				scr_blog("You attacked the "+threat+".")
				scr_damage(1)
		        break;
		}
	audio_play_sound(sfx_attack,1,0)
	rounds += 1
	} else {
		scr_blog("There's nothing to attack.")
	}
}