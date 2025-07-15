for (var i = 0; i < num; i++) {
    with (instance_create_layer(x, y, layer, obj)) {
        path_start(other.pth, other.spd, other.act, other.abt);
		
		if (other.uniform) {
			path_position = other.offset + i * 1 / other.num;
		} else {
			path_position = (other.offset + other.separation * i) % 1;
		}
    }
}