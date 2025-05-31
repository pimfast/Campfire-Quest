///// @desc

//write to file
if (file_exists("save.file")) {file_delete("save.file")}
	
var file;
file = file_text_open_write("save.file");
file_text_write_string(file,location);
file_text_writeln(file)
file_text_write_string(file,inventory);
file_text_writeln(file)
file_text_write_real(file,fire_level);
file_text_writeln(file)
file_text_write_real(file,hunger);
file_text_writeln(file)
file_text_write_real(file,cold);
file_text_writeln(file)
file_text_write_real(file,rounds);
file_text_writeln(file)
file_text_write_real(file,prevroundsnum);
file_text_writeln(file)
file_text_write_string(file,blog);
file_text_writeln(file)
file_text_write_string(file,blog2);
file_text_writeln(file)
file_text_write_string(file,blog3);
file_text_writeln(file)
file_text_write_string(file,chestslot1);
file_text_writeln(file)
file_text_write_string(file,chestslot2);
file_text_writeln(file)
file_text_write_string(file,chestslot3);
file_text_writeln(file)
file_text_write_real(file,mathrandom);
file_text_writeln(file)
file_text_write_real(file,hungersaturation);
file_text_writeln(file)
file_text_write_real(file,fire_levelsaturation);
file_text_writeln(file)
file_text_write_real(file,roundsuntilfireleveldecrease);
file_text_writeln(file)
file_text_write_string(file,threat);
file_text_writeln(file)
file_text_write_string(file,event);
file_text_writeln(file)
file_text_write_string(file,night);
file_text_writeln(file)
file_text_write_real(file,hhealth)
file_text_writeln(file)
file_text_write_real(file,debriscleared)
file_text_writeln(file)
file_text_write_real(file,bombpieces)
file_text_writeln(file)
file_text_write_real(file,ENABLEDattackbutton)
file_text_writeln(file)

//events
file_text_write_real(file,event_twigsnapped)
file_text_writeln(file)
file_text_write_real(file,event_remembertwigsnap)
file_text_writeln(file)
file_text_write_real(file,event_bearisattacking)
file_text_writeln(file)
file_text_write_real(file,event_bearisattacking)
file_text_writeln(file)
file_text_write_string(file,event_bearlocation)
file_text_writeln(file)
file_text_write_real(file,event_bearhealth)
file_text_writeln(file)

file_text_close(file)