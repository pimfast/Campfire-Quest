/// @desc

//mouseover
if (instance_position(mouse_x, mouse_y, all)) && (!instance_exists(obj_newgamedarkoverlay)) && (!instance_exists(obj_deleteprogressdarkoverlay)) {
	if (!instance_position(mouse_x, mouse_y, obj_fire_level)) && (!instance_position(mouse_x, mouse_y, obj_inventory)){
		cursor_sprite = spr_handpoint
	} else {
		cursor_sprite = spr_cursor
	}
} else {
	
	if (instance_position(mouse_x,mouse_y,obj_certain_newgame)) || (instance_position(mouse_x,mouse_y,obj_certain_delete)) || (instance_position(mouse_x,mouse_y,obj_certain_back)){
		cursor_sprite = spr_handpoint
	} else {
		cursor_sprite = spr_cursor
	}
}