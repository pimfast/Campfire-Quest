/// @desc

draw_set_font(fnt_text)
location = "campfire"
inventory = "empty"
fire_level = 1
hunger = 0
cold = 0
rounds = 0
prevroundsnum = rounds
blog = "You are now at the campfire."
blog2 = "Don't die to death."
blog3 = "It's over if the cold or hunger meter reaches 5."
chestslot1 = "empty"
chestslot2 = "empty"
chestslot3 = "empty"
mathrandom = 0
hungersaturation = 0
fire_levelsaturation = 0
threat = "nothing"
paused = false
event = ""
night = false
hhealth = 3
debriscleared = false
bombpieces = 0
ENABLEDattackbutton = false
roundsuntilfireleveldecrease = 3
//variables not saved beyond this point (make it save it later (when you feel like it))

//events
event_twigsnapped = false
event_remembertwigsnap = 0
event_bearisattacking = false
event_bearisattacking = false
event_bearlocation = ""
event_bearhealth = 0

if (file_exists("save.file")) {
	//load data from save.file
	var file = file_text_open_read(working_directory + "save.file");
	location = file_text_read_string(file)
	file_text_readln(file)
	inventory = file_text_read_string(file)
	file_text_readln(file)
	fire_level = file_text_read_real(file)
	file_text_readln(file)
	hunger = file_text_read_real(file)
	file_text_readln(file)
	cold = file_text_read_real(file)
	file_text_readln(file)
	rounds = file_text_read_real(file)
	file_text_readln(file)
	prevroundsnum = file_text_read_real(file)
	file_text_readln(file)
	blog = file_text_read_string(file)
	file_text_readln(file)
	blog2 = file_text_read_string(file)
	file_text_readln(file)
	blog3 = file_text_read_string(file)
	file_text_readln(file)
	chestslot1 = file_text_read_string(file)
	file_text_readln(file)
	chestslot2 = file_text_read_string(file)
	file_text_readln(file)
	chestslot3 = file_text_read_string(file)
	file_text_readln(file)
	mathrandom = file_text_read_real(file)
	file_text_readln(file)
	hungersaturation = file_text_read_real(file)
	file_text_readln(file)
	fire_levelsaturation = file_text_read_real(file)
	file_text_readln(file)
	roundsuntilfireleveldecrease = file_text_read_real(file)
	file_text_readln(file)
	threat = file_text_read_string(file)
	file_text_readln(file)
	event = file_text_read_string(file)
	file_text_readln(file)
	night = file_text_read_string(file)
	file_text_readln(file)
	hhealth = file_text_read_real(file)
	file_text_readln(file)
	debriscleared = file_text_read_real(file)
	file_text_readln(file)
	bombpieces = file_text_read_real(file)
	file_text_readln(file)
	ENABLEDattackbutton = file_text_read_real(file)
	file_text_readln(file)

	event_twigsnapped = file_text_read_real(file)
	file_text_readln(file)
	event_remembertwigsnap = file_text_read_real(file)
	file_text_readln(file)
	event_bearisattacking = file_text_read_real(file)
	file_text_readln(file)
	event_bearisattacking = file_text_read_real(file)
	file_text_readln(file)
	event_bearlocation = file_text_read_string(file)
	file_text_readln(file)
	event_bearhealth = file_text_read_real(file)
	
	file_text_close(file)
}