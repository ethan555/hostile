/// @description Take input and check physics

// Inherit the parent event
event_inherited();

#region Execute state

if (keyboard_check_pressed(ord("T"))) {
	add_dialogue("Do we crash? Hope not.");
	add_dialogue("Here's a test.");
	//add_dialogue_options("This shouldn't work");

	add_dialogue("Here are your options.");
	add_dialogue_options("Option 0.", d_none, "Option 1", d_response_1, "Option 2", d_response_2);
	
}

if (keyboard_check_pressed(ord("R"))) {
	state = IDLE;
	x = xstart;
	y = ystart;
	room_restart();
}
#endregion
