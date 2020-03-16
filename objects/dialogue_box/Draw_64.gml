/// @description Draw GUI
var y1 = display_get_gui_height() - sprite_get_height(sprite_index);
draw_nineslice(sprite_index,0,0,
	y1,
	display_get_gui_width() - 1,
	display_get_gui_height() - 1
);

var text_size = 1;
draw_text_transformed(TEXT_MARGIN,y1 + TEXT_MARGIN,text_shown, text_size, text_size, image_angle);
