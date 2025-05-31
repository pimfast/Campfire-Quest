/// @desc

randomize()

draw_set_font(fnt_text)

window_set_color(#FCCB83)

window_set_cursor(cr_none)

cursor_sprite = spr_cursor

global.highscore = 0

if (file_exists("highscore.coolz")) {
	
	//load data from highscore.coolz
	var file = file_text_open_read(working_directory + "highscore.coolz");
	global.highscore = file_text_read_real(file)
	
	file_text_close(file)
	
}