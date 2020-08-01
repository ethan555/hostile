/// @description view_follow_p_restricted_state()

// follow target
var width_ = standard_width * zoom;
var height_ = standard_height * zoom;
var min_x = floor(width_/2);
var max_x = room_width - ceil(width_/2);
var min_y = floor(height_/2);
var max_y = room_height - ceil(height_/2);
if (instance_exists(player)) {
    target[? "x"] = clamp((player.x), min_x, max_x);
    target[? "y"] = clamp((player.y), min_y, max_y);
} else if (instance_exists(character_parent)) {
    target[? "x"] = clamp((character_parent.x), min_x, max_x);
    target[? "y"] = clamp((character_parent.y), min_y, max_y);
}

//view_zoom(zoom);
lw = width_;
lh = height_;
