/// @desc

//only enable if it is good and you've seen an enemy before
if (obj_game.ENABLEDattackbutton == true) {
	sprite_index = spr_attack
} else {
	sprite_index = noone
}

//gray out if not doable
with (obj_game) {
	if (threat == "nothing") {
		with (obj_attack) {
			image_index = 1
		}
	} else {
		with (obj_attack) {
			image_index = 0
		}
	}
}