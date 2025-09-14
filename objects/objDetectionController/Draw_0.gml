var cam = camera_properties(0);

if (!surface_exists(surf_detect)) {
	surf_detect = surface_create(cam.view_w, cam.view_h);
}

matrix_set(matrix_world, matrix_build(-cam.view_x, -cam.view_y, 0, 0, 0, 0, 1, 1, 1));
surface_set_target(surf_detect);
draw_clear_alpha(c_black, 0);
draw_set_color(c_white);

with (objDetection) {
	if (detect) {
		switch (image_angle) {
			case 0:   draw_triangle(follow.x, follow.y, bbox_left, bbox_bottom, bbox_right, bbox_bottom, false); break;
			case 90:  draw_triangle(follow.x, follow.y, bbox_right, bbox_top, bbox_right, bbox_bottom, false); break;
			case 180: draw_triangle(follow.x, follow.y, bbox_left, bbox_top, bbox_right, bbox_top, false); break;
			case 270: draw_triangle(follow.x, follow.y, bbox_left, bbox_top, bbox_left, bbox_bottom, false); break;
		}
	}
}

gpu_set_colorwriteenable(true, true, true, false);
draw_sprite_tiled(sprDetectionBars, 0, 0, current_time / 50);
gpu_set_colorwriteenable(true, true, true, true);
surface_reset_target();
matrix_set(matrix_world, matrix_build_identity());

shader_set(shdDetectionBars);
draw_surface(surf_detect, cam.view_x, cam.view_y);
shader_reset();