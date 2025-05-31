///// @desc

//delete the file (new file will be made immediately by obj_game)
if (file_exists("save.file")) {file_delete("save.file")}

room_goto(rm_game)