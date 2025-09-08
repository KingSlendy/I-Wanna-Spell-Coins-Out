for (var i = 0; i < num; i++) {
	with (objs[i]) {
		var sep = ((other.uniform) ? 360 / other.num : other.separation) * i;
		x = other.x + lengthdir_x(other.dist, sep + other.angle + other.offset);
		y = other.y + lengthdir_y(other.dist, sep + other.angle + other.offset);
	}
}

prev_angle = angle;
angle = (angle + 360 + spd) % 360;