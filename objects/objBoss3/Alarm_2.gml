if (!instance_exists(objPlayer)) {
	exit;
}

with (create_cherry(origin_x, origin_y, c_fuchsia, point_direction(origin_x, origin_y, objPlayer.x, objPlayer.y), 5)) {
	image_xscale = 2;
	image_yscale = 2;
	alarm[0] = 1;
}

alarm[2] = seconds_to_frames(3);