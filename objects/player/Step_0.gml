/// @description Take input and check physics

// Inherit the parent event
event_inherited();

#region Execute state

if (keyboard_check_pressed(ord("R"))) {
	state = IDLE;
	x = xstart;
	y = ystart;
	room_restart();
}
#endregion
