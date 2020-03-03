/// @description Get input

escape = keyboard_check_pressed(esc);
if (s != noone) {
	suicide = keyboard_check_pressed(s);
}
left = keyboard_check(l);
right = keyboard_check(r);
down = keyboard_check(d);
up = keyboard_check(u);
jump = keyboard_check_pressed(jup);
dodge = keyboard_check_pressed(dod) || keyboard_check_pressed(dod2);
attack = keyboard_check_pressed(a);
block = keyboard_check_pressed(b);
