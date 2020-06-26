/// @description Begin the end

// Inherit the parent event
event_inherited();

image_speed = 0;
image_index = irandom(image_number);
alarm[0] = lifespan;
mass = rock_mass;

image_blend = make_color_hsv(0,0,255 * (ROCK_DEPTH / depth));

shader = colorize_sh;
