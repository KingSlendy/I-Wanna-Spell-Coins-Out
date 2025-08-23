surf = noone;

layer_script_begin("Blocks", method(id, function() {
	if (event_type != ev_draw || event_number != ev_draw_normal) {
		return;
	}
	
	var cam = camera_properties(0);
	
	if (!surface_exists(surf)) {
		surf = surface_create(cam.view_w, cam.view_h);
	}
	
	matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
	surface_set_target(surf);
}));

layer_script_begin("Tiles", method(id, function() {
	if (event_type != ev_draw || event_number != ev_draw_normal) {
		return;
	}
	
	gpu_set_colorwriteenable(true, true, true, false);
}));

layer_script_end("Tiles", method(id, function() {
	if (event_type != ev_draw || event_number != ev_draw_normal) {
		return;
	}
	
	gpu_set_colorwriteenable(true, true, true, true);
	
	with (objPlanet) {
		draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
	
	surface_reset_target();
	matrix_set(matrix_world, matrix_build_identity());
}));