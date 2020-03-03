/// @description get_last_pressed

last_pressed_timer = clamp(last_pressed_timer - 1, -1, last_pressed_timer);
var old = last_pressed;
last_pressed = noone;
if (in[suicide] && last_pressed != suicide) {
	last_pressed = suicide;
}
else if (in[dodge] && last_pressed != dodge) {
	last_pressed = dodge;
}
else if (in[block] && last_pressed != block) {
	last_pressed = block;
}
else if (in[jump] && last_pressed != jump) {
	last_pressed = jump;
}
else if (in[attack] && last_pressed != attack) {
	last_pressed = attack;
}

if (last_pressed != noone && last_pressed != old) {
	last_pressed_timer = last_pressed_time;
}
else if (last_pressed_timer > 0) {
	last_pressed = old;
} else {
	last_pressed = noone;
}

if (last_pressed != noone) {
	in[last_pressed] = true;
	if (state == IDLE && on_land)
		last_pressed = noone;
}
