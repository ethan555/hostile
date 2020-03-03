/// @description Check landing
if (!landed && check_land()) {
	image_index = xspd < 0;
	image_speed = 0;
	landed = true;
	xspd = 0;
}
