/// @description  Update the view position

camera_set_view_size(view_camera[0],width,height);

target[? "x"] = clamp(target[? "x"], 0, room_width);
target[? "y"] = clamp(target[? "y"], 0, room_height);
// Move the view towards the target point
x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);

camera_set_view_pos(view_camera[0],
    x - width/2,// + irandom_range(-screenshake, screenshake),
    y - height/2 + irandom_range(-screenshake, screenshake));
