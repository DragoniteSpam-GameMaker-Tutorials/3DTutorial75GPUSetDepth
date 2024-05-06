var tile_layer = layer_get_id("tiles");
var tilemap = layer_tilemap_get_id(tile_layer);
layer_set_visible(tile_layer, false);
draw_tilemap(tilemap, 0, 0);
matrix_set(matrix_world, matrix_build_identity());

shader_set(shd_nothingspecial);
with (par_thingy) {
	event_perform(ev_draw, 0);
}
shader_reset();