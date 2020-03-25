/// @description Draw GUI
event_inherited();

#region Draw option text, highlight
var option_number = min(option_index + 3, ds_list_size(option_text));
var option_i = max(0, option_index - 1);
if (option_number - option_i < 3) {
	option_i = max(0, option_number - 3);
}
for (var i = 0; i < 3 && option_i < option_number; i++) {
	// Bad but easy, draw option highlight
	if (option_i == option_index) {
		draw_primitive_begin(pr_trianglestrip);
		draw_set_color(c_gray);
		draw_vertex(x1 + TEXT_MARGIN, y1 + TEXT_MARGIN + i * string_height(option_text[| option_index]));
		draw_vertex(x1 + TEXT_MARGIN, y1 + TEXT_MARGIN + (i + 1) * string_height(option_text[| option_index]));
		draw_set_alpha(0);
		draw_vertex(x2 - TEXT_MARGIN, y1 + TEXT_MARGIN + (i) * string_height(option_text[| option_index]));
		draw_vertex(x2 - TEXT_MARGIN, y1 + TEXT_MARGIN + (i + 1) * string_height(option_text[| option_index]));
		draw_set_alpha(1);
		draw_primitive_end();
	}
	// Draw the option
	draw_set_color(c_white);
	draw_text(
		x1 + TEXT_MARGIN,
		y1 + TEXT_MARGIN + i * string_height(option_text[| option_i]),
		option_text[| option_i]
	);
	option_i ++;
}
#endregion