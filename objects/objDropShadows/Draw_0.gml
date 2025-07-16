var cam = camera_properties(0);

if (!surface_exists(surf)) {
	surf = surface_create(cam.view_w, cam.view_h);
}

matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
gpu_set_fog(true, c_black, 0, 0);

with (objPlayer) {
	event_perform(ev_draw, 0);
}

with (objBlock) {
	draw_self();
}

with (objFakeWall) {
	draw_self();
}

with (objWarpHub) {
	event_perform(ev_draw, 0);
}

with (objPlayerKiller) {
	draw_self();
}

with (objItemTemplate) {
	draw_self();
}

gpu_set_fog(false, c_white, 0, 0);
surface_reset_target();
matrix_set(matrix_world, matrix_build_identity());

draw_set_alpha(0.6);
draw_surface(surf, cam.view_x + 3, cam.view_y + 3);
draw_set_alpha(1);