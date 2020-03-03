/// @description Create the important objects

globalvar font;
font = font_add_sprite_ext(font_sp,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-=+.!?,\"'",true,2);
draw_set_font(font);

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
up = false;
jump = false;
dodge = false;
attack = false;
block = false;

globalvar rock_mass;
rock_mass = 1;
