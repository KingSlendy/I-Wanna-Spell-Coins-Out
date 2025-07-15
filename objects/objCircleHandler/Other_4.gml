for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, layer, obj)) {
		x = other.x + lengthdir_x(other.dist, 360 / other.num * i);
		y = other.y + lengthdir_y(other.dist, 360 / other.num * i);
		array_push(other.objs, id);
	}
}