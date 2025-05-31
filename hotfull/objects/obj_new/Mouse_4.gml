/// @desc

if (!instance_exists(obj_newgamedarkoverlay)) && (!instance_exists(obj_deleteprogressdarkoverlay)) {
	if (file_exists("save.file")) {
		//draw_text_color(room_width/2,room_height*0.33,"Are you sure?",c_black,c_black,c_black,c_black,1)
		//draw_text_color(room_width/2,room_height*0.33+15,"you currently have a game in-progress. if you begin again all progress will be lost!",c_black,c_black,c_black,c_black,1)
		instance_create_depth(room_width*0.33,room_height*0.66,-1,obj_certain_newgame)
		instance_create_depth(room_width*0.66,room_height*0.66,-1,obj_certain_back)
		instance_create_depth(0,0,-1,obj_newgamedarkoverlay)
	} else {

		room_goto(rm_game)

	}
}