var cam = camera_properties(0);

if (!surface_exists(surf)) {
	surf = surface_create(cam.view_w, cam.view_h);
}

matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
gpu_set_fog(true, c_black, 0, 0);

with (objTitle) {
	event_perform(ev_draw, 0);
}

with (objFiles) {
	event_perform(ev_draw, 0);
}

with (objOptions) {
	event_perform(ev_draw, 0);
}

with (objPlayer) {
	event_perform(ev_draw, 0);
}

with (objPhantomPlayer) {
	draw_self();
}

with (objBlock) {
	if (object_index != objBlockM9 || visible) {
		draw_self();
	}
}

with (objWarpHub) {
	if (visible) {
		event_perform(ev_draw, 0);
	}
}

with (objTextHub) {
	event_perform(ev_draw, 0);
}

with (objAchHub) {
	if (visible) {
		event_perform(ev_draw, 0);
	}
}

with (objStatsHub) {
	event_perform(ev_draw, 0);
}

with (objSave) {
	draw_self();
}

with (objFakeWall) {
	draw_self();
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

draw_set_alpha(0.5);
draw_surface(surf, cam.view_x + 3, cam.view_y + 3);
draw_set_alpha(1);