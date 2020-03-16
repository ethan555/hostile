/// @description Set the resolution of the room;
view_camera[0] = camera_create_view(0,0,monitorw / wmult,monitorh / hmult);
view_enabled = true;
view_visible[0] = true;
display_set_gui_size(camera_get_view_width(view_camera[0]) / wmult, camera_get_view_height(view_camera[0]) / hmult);

max_line_length = floor((display_get_gui_width() - TEXT_MARGIN * 2) / string_width("A"));
/* */
/*  */
