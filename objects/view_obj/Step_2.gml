/// @description  Run view state
event_inherited();
if (state != noone) {script_execute(state);}

width = lerp(width, lw, .1);
height = lerp(height, lh, .1);
