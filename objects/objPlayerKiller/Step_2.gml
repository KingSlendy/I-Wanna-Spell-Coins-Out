if (room == rStageG) {
	if (x > 800) {
		xprev = x;
		yprev = y;
		x = x div 32 * 32 + ((object_index != objCherry) ? 0 : 16);
		y = y div 32 * 32 + ((object_index != objCherry) ? 0 : 16);
	} else {
		if (hspeed < 0 && x < spawn_x_limit) {
			instance_destroy();
		} else if (hspeed > 0 && x > spawn_x_limit) {
			instance_destroy();
		}
	}
}