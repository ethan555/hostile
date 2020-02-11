/// @description Set the resolution of the room;
view_camera[0] = camera_create_view(0,0,VIEW_STANDARD_WIDTH,VIEW_STANDARD_HEIGHT);
view_enabled = true;
view_visible[0] = true;
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

/* */
/*  */
