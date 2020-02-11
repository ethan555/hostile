/// @description update_emitter_feet
/// @param left
/// @param right
/// @param up
/// @param down
var i = 0, left, right, top, bottom;
left = argument[i++];
right = argument[i++];
top = argument[i++];
bottom = argument[i++];

part_emitter_region(part_system,emitter,
	bbox_left+left,
	bbox_right+right,
	bbox_bottom+top,
	bbox_bottom+bottom,
	ps_shape_rectangle,
	ps_distr_linear
);