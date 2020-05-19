/// @description Init shader stuff
shader = aurora_sword_sh;
time = shader_get_uniform(shader,"time");
resolution = shader_get_uniform(shader,"resolution");
pixel_width = shader_get_uniform(shader,"pixel_width");
pixel_height = shader_get_uniform(shader,"pixel_height");
var tex = sprite_get_texture(sprite_index,0);
texel_width = texture_get_texel_width(tex);
texel_height = texture_get_texel_height(tex);

sprite_w = min(sprite_get_width(sprite_index) * 4, sprite_width);
sprite_h = min(sprite_get_height(sprite_index) * 4, sprite_height);
