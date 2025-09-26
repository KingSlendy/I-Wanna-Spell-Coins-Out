if ((check == "coins" && item_all(global.items.yellows) && item_all(global.items.greens) && item_all(global.items.reds)) || (check != "coins" && item_all(global.items[$ check]))) {
	if (num > -1 && global.items[$ type][num]) {
		image_speed = 0;
	} else {
		image_speed = 1;
	}
	
	image_blend = c_white;
} else {
	image_speed = 0;
	image_blend = c_black;
}