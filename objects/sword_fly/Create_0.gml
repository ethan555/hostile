/// @description Fly

// Inherit the parent event
event_inherited();

image_speed = 1;
mass = rock_mass;
landed = false;

image_blend = make_color_hsv(0,0,255 * (ROCK_DEPTH / depth));
