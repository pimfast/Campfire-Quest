/// @desc

//bababababa
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
//draw_text_color(0,25,"rounds: "+string(rounds),c_blue,c_blue,c_blue,c_blue,1)
//draw_text_color(0,45,"lastfirefed: "+string(lastfirefed),c_blue,c_blue,c_blue,c_blue,1)
//draw_text_color(0,115,"rounds - lastfirefed: "+string(rounds - lastfirefed),c_blue,c_blue,c_blue,c_blue,1)
//draw_text_color(0,135,"rounds - lastfirefed % 3: "+string(rounds - lastfirefed % 3),c_blue,c_blue,c_blue,c_blue,1)
draw_text_color(0,35,"rufld: "+string(roundsuntilfireleveldecrease),c_blue,c_blue,c_blue,c_blue,1)
draw_text_color(0,55,"fls: "+string(fire_levelsaturation),c_blue,c_blue,c_blue,c_blue,1)

draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text_color(250,0,rounds,c_red,c_red,c_red,c_red,1)
draw_text_color(250,30,blog3,c_black,c_black,c_black,c_black,0.3)
draw_text_color(250,55,blog2,c_black,c_black,c_black,c_black,0.6)
draw_text_color(250,80,blog,c_black,c_black,c_black,c_black,1)

draw_text_color(32,360,cold,c_aqua * cold / 5,c_aqua * cold / 5,c_aqua * cold / 5,c_aqua * cold / 5,1)
draw_text_color(96,360,hunger,c_maroon * hunger / 5,c_maroon * hunger / 5,c_maroon * hunger / 5,c_maroon * hunger / 5,1)
draw_text_color(404,360,fire_level,c_red * fire_level / 5,c_red * fire_level / 5,c_red * fire_level / 5,c_red * fire_level / 5,1)
if (event_bearisattacking == true) || (hhealth != 3) {draw_text_color(468,360,hhealth,c_black,c_black,c_black,c_black,1)}

//if (paused == true) {
//	draw_sprite(spr_pauseoverlay,1,0,0)
//}




if (hunger == 5) || (cold == 5) || (hhealth == 0) {
	
	instance_destroy(obj_catchfish)
	instance_destroy(obj_feedfire)
	instance_destroy(obj_gatherwood)
	instance_destroy(obj_getitem)
	instance_destroy(obj_gotocampfire)
	instance_destroy(obj_gotoforest)
	instance_destroy(obj_gotolake)
	instance_destroy(obj_putitem)
	instance_destroy(obj_roastfish)
	instance_destroy(obj_attack)
	instance_destroy(obj_gotocave)
	instance_destroy(obj_spelunk)
	
	draw_set_halign(fa_center)

	draw_set_valign(fa_middle)
	
	
	if (hunger == 5) && (cold == 5) {
		
		//you died of hunger and cold
		draw_text_color(room_width/2,room_height/2,"You died cold AND hungry! D:",c_aqua,c_maroon,c_maroon,c_aqua,1)
		file_delete("save.file")
	} else {
		
		if (hhealth == 0) && (event_bearisattacking) {
			
			//you died of bear
			draw_text_color(room_width/2,room_height/2,"You were mauled to death.",c_orange,c_orange,c_orange,c_orange,1)
			
		} else {
		
			if (hunger == 5) {
			
				//you died of hunger
				draw_text_color(room_width/2,room_height/2,"You starved to death.",c_maroon,c_maroon,c_maroon,c_maroon,1)
			}
		
			if (cold == 5) {
			
				//you died of cold
				draw_text_color(room_width/2,room_height/2,"You froze to death.",c_aqua,c_aqua,c_aqua,c_aqua,1)
			}
		
		}
		
		file_delete("save.file")
	}
	
	if (rounds > global.highscore) {
		
		global.highscore = rounds
		
		//write to file
		if (file_exists("highscore.coolz")) {file_delete("highscore.coolz")}
	
		var file;
		file = file_text_open_write(working_directory + "highscore.coolz");
		file_text_write_real(file,global.highscore);
		file_text_close(file)
		draw_text_color(250,200+25,"New high score!",c_yellow,c_yellow,c_yellow,c_yellow,1)
	}
}