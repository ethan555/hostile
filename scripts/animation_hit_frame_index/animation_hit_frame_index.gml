/// @description animation_hit_frame_index(frame)
/// @param index
/// @param frame
/// @param img_speed
/*
    Returns true if an animation hits a specific
    frame. You must have a positive animation speed.
*/

var i = 0;
var index = argument[i++];      // The index we are at
var frame = argument[i++];      // The frame to check for
var img_speed = argument[i++];  // The image speed

var result = false;
if (img_speed > 0)
    result = (index >= frame - get_image_fps_speed(img_speed)) && (index < frame);
else
    result = (index <= frame - get_image_fps_speed(img_speed)) && (index > frame);
return result;
