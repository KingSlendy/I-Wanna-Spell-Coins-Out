for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, layer, obj)) {
		x = other.x + lengthdir_x(other.separation * i, other.spawn_dir);
		y = other.y + lengthdir_y(other.separation * i, other.spawn_dir);
		xstart = x;
		ystart = y;
		array_push(other.objs, id);
	}
}