if (!invincibility) {
	if (instance_exists(objPlayer)) {
		var dir = point_direction(origin_x, origin_y, objPlayer.x, objPlayer.y);

		with (create_cherry(origin_x, origin_y, c_fuchsia, dir, 7)) {
			image_xscale = 2;
			image_yscale = 2;
			alarm[2] = seconds_to_frames(0.75);
		}
		
		if ((objPlayer.x < x && image_xscale == 1) || (objPlayer.x > x && image_xscale == -1)) {
			deactivate_trigger("ach1");
		}
	}
	
	image_xscale *= -1;
}

if (hp <= 10 && hp >= 6 && alarm[2] == -1) {
	alarm[1] = 0;
	alarm[2] = seconds_to_frames(1);
}

if (hp <= 5 && alarm[3] == -1) {
	alarm[2] = 0;
	alarm[3] = seconds_to_frames(1);
}

event_inherited();