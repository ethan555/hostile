/// @description draw_nineslice
/// @param sprite
/// @param index
/// @param x1
/// @param y1
/// @param x2
/// @param y2

var i = 0;
var sprite = argument[i++];
var index = argument[i++];
var x_cut = sprite_get_width(sprite) / 3;//argument[i++];
var y_cut = sprite_get_height(sprite) / 3;//argument[i++];
var x1 = argument[i++];
var y1 = argument[i++];
var x2 = argument[i++];
var y2 = argument[i++];

// x1, y1
draw_sprite_part(sprite, index, 0, 0, x_cut, y_cut, x1, y1);
// x2, y1
draw_sprite_part(sprite, index,
	sprite_get_width(sprite) - (x_cut),
	0,
	x_cut,
	y_cut,
	x2 - (x_cut),
	y1
);
// x1, y2
draw_sprite_part(sprite, index,
	0,
	sprite_get_height(sprite) - (y_cut),
	x_cut,
	y_cut,
	x1,
	y2 - (y_cut)
);
// x2, y2
draw_sprite_part(sprite, index,
	sprite_get_width(sprite) - (x_cut),
	sprite_get_height(sprite) - (y_cut),
	x_cut,
	y_cut,
	x2 - (x_cut),
	y2 - (y_cut)
);
// Top center
/*for (var _xPos = 1; _xPos <= _tileWidth; _xPos++) {
	draw_sprite_part(sprite, index, x_cut, y_cut, x_cut, y_cut + (_xPos * _spriteWidth), _y); 
}*/
draw_sprite_part_ext(sprite,index,x_cut,0,x_cut,y_cut,x1 + x_cut,y1,
	((x2 - x_cut) - (x1 + x_cut)) / (x_cut),
	1,image_blend,image_alpha);
// Bottom center
draw_sprite_part_ext(sprite,index,
	x_cut,
	sprite_get_height(sprite) - (y_cut),
	x_cut,
	y_cut,
	x1 + x_cut,
	y2 - (y_cut),
	((x2 - x_cut) - (x1 + x_cut)) / (x_cut),
	1,image_blend,image_alpha);
// Left center
draw_sprite_part_ext(sprite,index,
	0,
	y_cut,
	x_cut,
	y_cut,
	x1,
	y1 + y_cut,
	1,
	((y2 - y_cut) - (y1 + y_cut)) / (y_cut),
	image_blend,image_alpha);
// Right center
draw_sprite_part_ext(sprite,index,
	sprite_get_width(sprite) - (x_cut),
	y_cut,
	x_cut,
	y_cut,
	x2 - (x_cut),
	y1 + y_cut,
	1,
	((y2 - y_cut) - (y1 + y_cut)) / (y_cut),
	image_blend,image_alpha);
	
// Center
draw_sprite_part_ext(sprite,index,
	x_cut,
	y_cut,
	x_cut,
	y_cut,
	x1 + x_cut,
	y1 + y_cut,
	((x2 - x_cut) - (x1 + x_cut)) / (x_cut),
	((y2 - y_cut) - (y1 + y_cut)) / (y_cut),
	image_blend,image_alpha);

