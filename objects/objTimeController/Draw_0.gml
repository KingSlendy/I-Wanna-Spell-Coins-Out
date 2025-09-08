var cam = camera_properties(0);

if (!surface_exists(surf_time)) {
	surf_time = surface_create(cam.view_w, cam.view_h);
}

matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
surface_set_target(surf_time);
draw_clear_alpha(c_black, 0);
draw_set_circle_precision(64);

with (objTimeStone) {
	draw_circle(x + 16, y + 16, radius, false);
}

draw_set_circle_precision(24);
gpu_set_colorwriteenable(true, true, true, false);
draw_set_color(#C0C0C0);
draw_rectangle(0, 0, 800, 608, false);

var draw_old = function(obj) {
	with (obj) {
		var name = sprite_get_name(sprite_index);
		draw_sprite_ext(asset_get_index($"{name}Old"), image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}

with (objPlayerKiller) {
	draw_old(id);
}

with (objSave) {
	draw_old(id);
}

with (objWarpHub) {
	draw_old(id);
}

draw_sprite(sprite_tiles, 0, 0, 0);
gpu_set_colorwriteenable(true, true, true, true);
surface_reset_target();
matrix_set(matrix_world, matrix_build_identity());

draw_surface(surf_time, cam.view_x, cam.view_y);