/// @description set_rock_speed
/// @param xspd
/// @param yspd

var i = 0;
var _xspd = argument[i++], _yspd = argument[i++];

with (rock) {
	xspd = _xspd;
	yspd = _yspd;
}