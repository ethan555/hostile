/// @description Init shader stuff
time = shader_get_uniform(aurora_sh,"time");
v_resolution = shader_get_uniform(aurora_sh,"v_resolution");
resolution = shader_get_uniform(aurora_sh,"resolution");
pixel_width = shader_get_uniform(aurora_sh,"pixel_width");
pixel_height = shader_get_uniform(aurora_sh,"pixel_height");
var tex = sprite_get_texture(sprite_index,0);
texel_width = texture_get_texel_width(tex);
texel_height = texture_get_texel_height(tex);
