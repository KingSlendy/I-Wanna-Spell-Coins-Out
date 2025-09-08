for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, layer, obj)) {
		var sep = ((other.uniform) ? 360 / other.num : other.separation) * i;
		x = other.x + lengthdir_x(other.dist, sep + other.offset);
		y = other.y + lengthdir_y(other.dist, sep + other.offset);
		array_push(other.objs, id);
		created_handler = true;
	}
}