/// @description Create the important objects

globalvar debug;
debug = true;

globalvar font;
font = font_add_sprite_ext(font_sp,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-=+.!?,\"'",false,2);
draw_set_font(font);

/* Load some font TODO
var _slash;
if (os_type == os_windows || os_type == os_win32 || os_type == os_win8native)
    _slash = "\\";
else
    _slash = "/";
var _resdir = working_directory + _slash + "Fonts" + _slash; 
var _path = _resdir  + "_bitmap_font____romulus_by_pix3m-d6aokem.ttf";
show_debug_message("Loading from ... " + string(_path));

globalvar font;
font = font_add(_path, 7, false, false, 32, 128);
*/

draw_set_font(font);

globalvar max_line_length;
max_line_length = (display_get_gui_width() - TEXT_MARGIN * 2) / string_width("A");

globalvar dialogue_queue, dialogue_options_queue;
dialogue_queue = ds_queue_create();
dialogue_options_queue = ds_queue_create();

instance_create_depth(x,y,depth,particle_control);
instance_create_depth(x,y,depth,audio_player);

esc = vk_escape;
s = noone;//ord("K");

l = ord("A");
r = ord("D");
d = ord("S");
u = ord("W");

dod = vk_shift;
dod2 = ord("L");
jup = vk_space;
a = ord("K");
b = ord("J");

escape = false;
suicide = false;
left = false;
right = false;
down = false;
down_pressed = false;
up = false;
up_pressed = false;
jump = false;
dodge = false;
attack = false;
block = false;

globalvar rock_mass;
rock_mass = 1;
