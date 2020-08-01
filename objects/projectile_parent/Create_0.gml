/// @description Init projectile
event_inherited();

image_angle = point_direction(0,0,xspd,yspd);

sprite[PROJECTILE_START] = fireball_init_sp;
sprite[PROJECTILE_MID] = fireball_sp;
sprite[PROJECTILE_HIT] = fireball_hit_sp;

hit_script = fireball_hit;
hit = false;

alarm[0] = lifespan;

emitter = part_emitter_create(part_system);
hit_particle = part_flame;

shader = outline_sh;
var tex = sprite_get_texture(sprite_index,0);
texel_width = texture_get_texel_width(tex);
texel_height = texture_get_texel_height(tex);

pixel_width = shader_get_uniform(shader,"pixel_width");
pixel_height = shader_get_uniform(shader,"pixel_height");