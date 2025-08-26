var cam = camera_properties(0);
	
if (!surface_exists(surf)) {
	surf = surface_create(cam.view_w, cam.view_h);
}
	
matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

with (objPlanetMask) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

gpu_set_colorwriteenable(true, true, true, false);
draw_sprite(sprite_tiles, 0, 0, 0);
gpu_set_colorwriteenable(true, true, true, true);
	
with (objPlanetMask) {
	draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

surface_reset_target();
matrix_set(matrix_world, matrix_build_identity());

draw_surface(surf, cam.view_x, cam.view_y);