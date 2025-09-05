var surf_tiles = surface_create(total_w, total_h);
surface_set_target(surf_tiles);
draw_clear_alpha(c_black, 0);
draw_set_color(c_white);
var tilemap_id = layer_tilemap_get_id(layer_get_id("Tiles"));
var tilemap_w = tilemap_get_width(tilemap_id);
var tilemap_h = tilemap_get_height(tilemap_id);
var tile_w = tilemap_get_tile_width(tilemap_id);
var tile_h = tilemap_get_tile_height(tilemap_id);

for (var tx = 0; tx < tilemap_w; tx++) {
    for (var ty = 0; ty < tilemap_h; ty++) {
        var t = tilemap_get(tilemap_id, tx, ty);
			
        if (t != 0) {
			var tile_pos_x = tx * tile_w;
			var tile_pos_y = ty * tile_h;
            draw_tile(tlsDefault, t, 0, tile_pos_x, tile_pos_y);
        }
    }
}

surface_reset_target();

for (var r = 0; r < slide_n; r++) {
	for (var c = 0; c < slide_n; c++) {
		var slide_x = slide_w * c;
		var slide_y = slide_h * r;
		
		with (instance_create_layer(slide_x, slide_y, "Blocks", objSlidePieceBlocks)) {
			sprite_index = sprite_create_from_surface(surf_tiles, slide_x, slide_y, other.slide_w, other.slide_h, false, false, 0, 0);
			sprite_collision_mask(sprite_index, false, bboxmode_automatic, 0, 0, 0, 0, bboxkind_precise, 0);
		}
	}
}

surface_free(surf_tiles);

var surf_spikes = surface_create(total_w, total_h);
surface_set_target(surf_spikes);
draw_clear_alpha(c_black, 0);
draw_set_color(c_white);

with (objSpikeController) {
	draw_self();
}

surface_reset_target();

for (var r = 0; r < slide_n; r++) {
	for (var c = 0; c < slide_n; c++) {
		var slide_x = slide_w * c;
		var slide_y = slide_h * r;
		
		with (instance_create_layer(slide_x, slide_y, "Spikes", objSlidePieceSpikes)) {
			sprite_index = sprite_create_from_surface(surf_spikes, slide_x, slide_y, other.slide_w, other.slide_h, false, false, 0, 0);
			sprite_collision_mask(sprite_index, false, bboxmode_automatic, 0, 0, 0, 0, bboxkind_precise, 0);
		}
	}
}

surface_free(surf_spikes);

layer_set_visible("Tiles", false);

with (objSpikeController) {
	instance_destroy();
}