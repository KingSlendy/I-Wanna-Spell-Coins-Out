surf = noone;

var surf_tiles = surface_create(room_width, room_height);
surface_set_target(surf_tiles);
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
sprite_tiles = sprite_create_from_surface(surf_tiles, 0, 0, room_width, room_height, false, false, 0, 0);
surface_free(surf_tiles);

layer_set_visible("Tiles", false);