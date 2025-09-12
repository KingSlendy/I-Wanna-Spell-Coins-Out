image_index = (image_index == 0) ? 1 : 0;
radius_target = (radius_target == radius_max) ? 0 : radius_max;
instance_destroy(other);

if (x < 800) {
	with (objTimeStone) {
		if (x > 800) {
			image_index = 1;
			radius_max = 400;
			radius = radius_max;
			radius_target = radius;
			break;
		}
	}
}