if (!surface_exists(surf_spot)) {
	surf_spot = surface_create(room_width, room_height);
}
	
surface_set_target(surf_spot);
draw_clear_alpha(c_black, 0);

if (!surface_exists(surf_black)) {
	surf_black = surface_create(room_width, room_height);
}

draw_surface(surf_black, 0, 0);

gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);

with (objPlayer) {
	draw_circle(x, y, 30, false);
}

with (objLightbulb) {
	draw_set_alpha(light_current);
	draw_set_circle_precision(64);
	draw_circle(x + 15, y + 15, light_distance, false);
	draw_set_circle_precision(24);
	draw_set_alpha(1);
}

gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(surf_spot, 0, 0);