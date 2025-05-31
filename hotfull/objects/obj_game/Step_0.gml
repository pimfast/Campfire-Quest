///// @desc

//mouseover
if (instance_position(mouse_x, mouse_y, all)) {
	if (!instance_position(mouse_x, mouse_y, obj_fire_level)) && (!instance_position(mouse_x, mouse_y, obj_inventory)) && (!instance_position(mouse_x, mouse_y, obj_cold)) && (!instance_position(mouse_x, mouse_y, obj_hunger)) && (!instance_position(mouse_x, mouse_y, obj_health)){
		cursor_sprite = spr_handpoint
	} else {
		cursor_sprite = spr_cursor
	}
} else {
	
	cursor_sprite = spr_cursor
	
}

//return to menu
if (keyboard_check_pressed(vk_escape)) {
	room_goto(rm_menu)
}


if (event_bearlocation == location) {threat = "bear"} else {threat = "nothing"}
////old pause code from before day/night cycle
//if (paused == true) {
//	instance_deactivate_all(true)
//	instance_activate_object(obj_pause)
//	instance_activate_object(obj_fire_level)
//	instance_activate_object(obj_inventory)
//	draw_sprite(spr_pauseoverlay,-1,0,0)
//	window_set_color(#7E6541)
//} else {
//	instance_activate_all()
//	window_set_color(#FCCB83)
//}

if (prevroundsnum != rounds) {
	
	event = ""
	
	//survival
	if (rounds % 2 == 0) && (hungersaturation == 0) {
		hunger += 1
	}
	roundsuntilfireleveldecrease -= 1
	if (roundsuntilfireleveldecrease <= 0) && (fire_levelsaturation <= 0) {
		fire_level -= 1
		roundsuntilfireleveldecrease = 3
	}
	if (rounds % 1 == 0) && (fire_level <= 0) {
			cold += 1
	} else {
		cold -= 1
	}
	if (rounds % 2 == 0) && (hunger <= 2) {
		hhealth += 1
	}
	
	//beasts
	if (event_bearisattacking == true) {
		if (event_bearlocation == location) {
			//if bear is here, 75% chance to hit (maybe make 15% chance to break "get item" square)
			mathrandom = irandom_range(1,100)
			if (mathrandom <= 75) {
				hhealth -= 1
				event = " THE BEAR ATTACKS!!"
				blog = blog+event
				audio_play_sound(sfx_attack,1,0)
			} else {
				event = " THE BEAR WHIFFS!"
				blog = blog+event
				audio_play_sound(sfx_disposeitem,1,0)
			}
		} else {
			//if bear is not here, 60% chance to go to your location, if failed, then go wherever
			mathrandom = irandom_range(1,100)
			if (mathrandom <= 60) {
				event_bearlocation = location
			} else {
				//if the cave is available include in the calculation
				if (debriscleared == false) {mathrandom = irandom_range(1,3)}
				if (debriscleared == true) {mathrandom = irandom_range(1,4)}
				if (rounds < 0) {mathrandom = irandom_range(1,5)}

				if (mathrandom == 1) && (event_bearlocation != "campfire") {
					event_bearlocation = "campfire"
					event = " The bear is at the "+event_bearlocation
				}
				if (mathrandom == 2) && (event_bearlocation != "forest") {
					event_bearlocation = "forest"
					event = " The bear is in the "+event_bearlocation
				}
				if (mathrandom == 3) && (event_bearlocation != "lake") {
					event_bearlocation = "lake"
					event = " The bear is at the "+event_bearlocation
				}
				if (mathrandom == 4) && (event_bearlocation != "cave") {
					event_bearlocation = "cave"
					event = " The bear is in the "+event_bearlocation
				}
				if (mathrandom == 5) && (event_bearlocation != "hill") {
					event_bearlocation = "hill"
					event = " The bear is on the "+event_bearlocation
				}
			}
		}
		//if after all that (cuz there's two opportunities for the bear to go to you)
		//and the bear is at your location then overwrite the above
		if (event_bearlocation == location) {
			event = " The bear is here."
		}
		blog = blog+event
	}
	
	//events
	
	//if (rounds >= 1) {
	//	mathrandom = irandom_range(1,100)
	//	if (mathrandom = 69) {
	//		blog3 = blog2
	//		blog2 = blog
	//		blog = "YOU JUST GOT RARE TEXT! 1 IN 100 CHANCE TO SEE THIS!!!"
	//	}
	//}
	
	if (rounds >= 25) && (event_twigsnapped == false) && (irandom(9) == 1) {
		//bear foreshadow
		event_twigsnapped = true
		event_remembertwigsnap = rounds
		event = " You hear a twig snap..."
		blog = blog+event
	}
	
	if (rounds > 5+event_remembertwigsnap) && (event_twigsnapped == true) && (event_bearisattacking == false) && (irandom(8) == 1) {
		//bear attack
		event_bearisattacking = true
		event_bearlocation = location
		event_bearhealth = 5
		ENABLEDattackbutton = true
		event = " OH MY GOD A BEAR!!!"
		blog = blog+event
	}
	
	//add encounters and make them more difficult and frequent as you go on
	//okay maybe only two more after the bear
	
	//unsaturate
	if (rounds % 1 == 0) {
		hungersaturation -= 1
		fire_levelsaturation -= 1
		if (hungersaturation < 0) {hungersaturation = 0}
		if (fire_levelsaturation < 0) {fire_levelsaturation = 0}
	}
	
	//update highscore
	if (rounds > global.highscore) {
		
		global.highscore = rounds
		
		//write to file
		if (file_exists("highscore.coolz")) {file_delete("highscore.coolz")}
	
		var file;
		file = file_text_open_write("highscore.coolz");
		file_text_write_real(file,global.highscore);
		file_text_close(file)
	}
	
	//nightfall 
	if (rounds % 20 == 0) {
		if (night == true) {
			//make day
			night = false
			//tell the player only if there's nothing else to tell
			if (event == "") {
				event = " The sun rises."
				blog = blog+event
			}
		} else {
			//make night
			night = true
			//tell the player only if there's nothing else to tell
			if (event == "") {
				event = " The sun sets."
				blog = blog+event
			}
		}
	}
	
	prevroundsnum = rounds
	
}

if (night == true) {
//darkness falls across the land...
if (obj_nightoverlay.image_alpha != 1){
	window_set_color(#7E6541)
	obj_nightoverlay.image_alpha += 0.01
}
} else {
	//let there be light!
	if (obj_nightoverlay.image_alpha != 0) {
		window_set_color(#FCCB83)
		obj_nightoverlay.image_alpha -= 0.01
	}
	//layer_sprite_destroy(spr_pauseoverlay)
}

if (obj_nightoverlay.image_alpha < 0) {obj_nightoverlay.image_alpha = 0}
if (obj_nightoverlay.image_alpha > 1) {obj_nightoverlay.image_alpha = 1}

//numbers cant go lower than 0
if (hunger < 0) {
	hunger = 0
}
if (cold < 0) {
	cold = 0
}
if (fire_level < 0) {
	fire_level = 0
}
if (hhealth < 0) {
	hhealth = 0
}

//numbers cant go heigher thblablabla
if (hunger > 5) {
	hunger = 5
}
if (cold > 5) {
	cold = 5
}
if (fire_level > 3) {
	fire_level = 3
}
if (hhealth > 3) {
	hhealth = 3
}