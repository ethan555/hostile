/// @description Set up the resolution scaling

/*application_surface_draw_enable(false);
globalvar monitorw, monitorh, xoffset, yoffset;
monitorw = display_get_width();
monitorh = display_get_height();
xoffset = (monitorw - 800) / 2;
yoffset = (monitorw - 450) / 2;

if (monitorw >= 1600 && monitorh >= 900) {
	surface_resize(application_surface, 1600, 900)
	xoffset = (monitorw - 1600) / 2;
	yoffset = (monitorh - 900) / 2;
}*/
window_set_fullscreen(true);

room_goto_next();
