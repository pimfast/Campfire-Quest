/// @desc
if (!instance_exists(obj_newgamedarkoverlay)) && (!instance_exists(obj_deleteprogressdarkoverlay)) {
	//draw_text_color(room_width/2,room_height*0.33,"WAIWAIT",c_black,c_black,c_black,c_black,1)
	//draw_text_color(room_width/2,room_height*0.33+15,"are you suurre you wanna delete all the data?",c_black,c_black,c_black,c_black,1)
	instance_create_depth(room_width*0.33,room_height*0.66,-1,obj_certain_delete)
	instance_create_depth(room_width*0.66,room_height*0.66,-1,obj_certain_back)
	instance_create_depth(0,0,-1,obj_deleteprogressdarkoverlay)
}