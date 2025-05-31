/// @desc

draw_set_halign(fa_center)

draw_set_valign(fa_center)

if (global.highscore >= 1) {
	draw_text_color(375,200-10,"Highscore",c_black,c_black,c_black,c_black,1)
	draw_text_color(375,200+10,global.highscore,c_black,c_black,c_black,c_black,1)
}

if (global.highscore >= 1) || (file_exists("save.file")) {
	instance_activate_object(obj_deleteprogress)
} else {
	instance_deactivate_object(obj_deleteprogress)
}

draw_set_halign(fa_right)

//have the game-in-progress's round number next to the resume button
if (file_exists("save.file")) {
	var file = file_text_open_read(working_directory + "save.file");
	file_text_readln(file)
	file_text_readln(file)
	file_text_readln(file)
	file_text_readln(file)
	file_text_readln(file)
	draw_text_color(obj_resume.x - 8,obj_resume.y + obj_resume.sprite_height / 2,file_text_read_real(file),c_black,c_black,c_black,c_black,1) 
	file_text_close(file)
}

///for some reason an object having the draw event at all makes it invisible. thanks gamemaker >:)
if (file_exists("save.file")) && (instance_exists(obj_newgamedarkoverlay)) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_colour(c_black)
	draw_text_transformed(room_width/2,room_height*0.28, "Are you sure?", 1.5, 1.5,0)
	draw_text_color(room_width/2,room_height*0.28+30,"you will lose your current game in progress!",c_black,c_black,c_black,c_black,1)
}

if (file_exists("save.file")) && (instance_exists(obj_deleteprogressdarkoverlay)) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_colour(c_black)
	draw_text_transformed(room_width/2,room_height*0.28, "WAIWAIT", 1.5, 1.5,0)
	draw_text_color(room_width/2,room_height*0.28+30,"are you suurre you wanna delete ALL the data?",c_black,c_black,c_black,c_black,1)
}

draw_set_colour(noone)