// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damage(_hurtamount){
	with(obj_game) {
		if (event_bearisattacking == true) {event_bearhealth -= _hurtamount}
		if (event_wolfisattacking == true) {event_wolfhealth -= _hurtamount}
		if (event_mooseisattacking == true) {event_moosehealth -= _hurtamount}
	}
}