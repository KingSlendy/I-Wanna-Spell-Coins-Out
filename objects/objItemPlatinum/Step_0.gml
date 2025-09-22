if (!item_all(global.items[$ check])) {
	image_speed = 0;
	image_blend = c_black;
} else {
	image_speed = 1;
	image_blend = c_white;
	global.items[$ type][num] = true;
}