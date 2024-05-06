var c_bottom = make_color_rgb(0, 0, 0);
var c_top = make_color_rgb(sprite_height, 0, 0);

var z = 50 * cos(current_time / 1000 + xstart + ystart);
//matrix_set(matrix_world, matrix_build(0, 0, z, 0, 0, 0, 1, 1, 1));

var old_depth = gpu_get_depth();
gpu_set_depth(z);

draw_sprite_general(sprite_index, 0, 0, 0, sprite_width, sprite_height, x, y, 1, 1, 0, c_top, c_top, c_bottom, c_bottom, 1);

gpu_set_depth(old_depth);

//matrix_set(matrix_world, matrix_build_identity());