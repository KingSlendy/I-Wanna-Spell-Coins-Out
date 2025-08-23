if (!surface_exists(surf)) {
	exit;
}

var cam = camera_properties(0);
draw_surface(surf, cam.view_x, cam.view_y);