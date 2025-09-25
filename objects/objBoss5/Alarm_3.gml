with (instance_create_layer(irandom_range(0, 800), 16, "Fruits", objCircleHandler)) {
	vspeed = 5;
	obj = objCherry;
	num = 1;
	spd = irandom_range(5, 9) * choose(-1, 1);
	dist = 32;
	offset = irandom(359);
	event_perform(ev_other, ev_room_start);
	
	for (var i = 0; i < array_length(objs); i++) {
		objs[i].image_blend = c_blue;
	}
}

alarm[3] = 10;