/// @desc

//only enable if it is good to do so and stuff
if (obj_game.hhealth < 3) || (obj_game.event_bearisattacking) {
	sprite_index = spr_health
} else {
	sprite_index = noone
}

with (obj_game) {
	
	if (hhealth > 0){
		with (obj_health) {
			image_index = 0
		}
	}

	if (hhealth <= 0){
		with (obj_health) {
			image_index = 1
		}
	}
}