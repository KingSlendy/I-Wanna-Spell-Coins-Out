surf = noone;

layer_script_begin("Blocks", method(id, function() {
	if (event_type != ev_draw && event_number != ev_draw_normal) {
		return;
	}
	
	var cam = camera_properties(0);
	
	if (!surface_exists(surf)) {
		surf = surface_create(cam.view_w, cam.view_h);
	}
	
	matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
}));

layer_script_begin("Tiles", method(id, function() {
	if (event_type != ev_draw && event_number != ev_draw_normal) {
		return;
	}
	
	gpu_set_colorwriteenable(true, true, true, false);
	
	var layer_id = layer_get_id("Tiles");
    var tilemap_id = layer_tilemap_get_id(layer_id);

    var w  = tilemap_get_width(tilemap_id);
    var h  = tilemap_get_height(tilemap_id);
    var tw = tilemap_get_tile_width(tilemap_id);
    var th = tilemap_get_tile_height(tilemap_id);

    for (var tx = 0; tx < w; tx++) {
        for (var ty = 0; ty < h; ty++) {
            var t = tilemap_get(tilemap_id, tx, ty);
			
            if (t != 0) {
                draw_tile(tlsDefault, t, 0, tx * tw, ty * th);
            }
        }
    }
}));

layer_script_end("Tiles", method(id, function() {
	if (event_type != ev_draw && event_number != ev_draw_normal) {
		return;
	}
	
	gpu_set_colorwriteenable(true, true, true, true);
	
	with (objPlanetMask) {
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
	
	surface_reset_target();
	matrix_set(matrix_world, matrix_build_identity());
}));