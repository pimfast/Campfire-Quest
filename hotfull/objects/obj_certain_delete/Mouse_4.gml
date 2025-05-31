/// @desc

if (file_exists("highscore.coolz")) {
	global.highscore = 0
	file_delete("highscore.coolz")
}

if (file_exists("save.file")) {
	file_delete("save.file")
}

game_restart()