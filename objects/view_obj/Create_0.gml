/// @description  Init the view
event_inherited();

// Set view state
state = view_follow_p_restricted_state;

//Set view zoom
zoom = 1;

lw = width;
lh = height;

camera_set_view_size(view_camera[0],width,height);

//Move view
camera_set_view_pos(view_camera[0],x,y);

// Update target point
if (instance_exists(player)) {
	x = player.x;
	y = player.y;
	//target[? "x"] = player.x;
	//target[? "y"] = player.y;
} else {
	target[? "x"] = x;
	target[? "y"] = y;
}
script_execute(state);
