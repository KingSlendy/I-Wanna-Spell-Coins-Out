with (instance_create_layer(origin_x + 150, origin_y - 32, "Fruits", objCircleHandler)) {
	hspeed = -7;
	obj = objCherry;
	num = 7;
	spd = 1;
	dist = 96;
	offset = 90;
	event_perform(ev_other, ev_room_start);
	
	for (var i = 0; i < array_length(objs); i++) {
		objs[i].image_blend = c_yellow;
	}
}

alarm[2] = seconds_to_frames(2);