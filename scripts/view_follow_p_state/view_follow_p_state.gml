/// @description view_follow_p_state()

// follow target
if (instance_exists(player)) {
    target[? "x"] = round(player.x);
    target[? "y"] = round(player.y);
} else if (instance_exists(character_parent)) {
    target[? "x"] = round(character_parent.x);
    target[? "y"] = round(character_parent.y);
}

//view_zoom(zoom);
lw = standard_width * zoom;
lh = standard_height * zoom;
