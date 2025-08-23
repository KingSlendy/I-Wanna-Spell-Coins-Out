surf = noone;

layer_script_begin("Blocks", method(id, function() {
	var cam = camera_properties(0);
	
	if (!surface_exists(surf)) {
		surf = surface_create(cam.view_w, cam.view_h);
	}
	
	matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
	surface_set_target(surf);
}));

layer_script_begin("Tiles", method(id, function() {
	gpu_set_colorwriteenable(true, true, true, false);
}));

layer_script_end("Tiles", method(id, function() {
	gpu_set_colorwriteenable(true, true, true, true);
	surface_reset_target();
	matrix_set(matrix_world, matrix_build_identity());
}));