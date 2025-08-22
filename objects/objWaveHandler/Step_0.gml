var max_angle = 360;

if (half) {
	max_angle = 180;
}

for (var i = 0; i < num; i++) {
	with (objs[i]) {
		var wave = dsin((other.angle + other.offset * i) % max_angle);
		var offset_x = wave * other.length;
		x = xstart + lengthdir_x(offset_x, other.move_dir);
		y = ystart + lengthdir_y(offset_x, other.move_dir);
	}
}

angle = (angle + max_angle + spd) % max_angle;