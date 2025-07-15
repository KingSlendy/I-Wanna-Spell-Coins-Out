for (var i = 0; i < num; i++) {
	with (objs[i]) {
		x = other.x + lengthdir_x(other.dist, 360 / other.num * i + other.angle);
		y = other.y + lengthdir_y(other.dist, 360 / other.num * i + other.angle);
	}
}

angle = (angle + 360 + spd) % 360;