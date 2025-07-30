timer = -1;
ask_spikes = false;
ask_number = [0, 0, 0];
ask_select = 2;

function gate_start() {
	alarm[0] = seconds_to_frames(random_range(1, 2));
	alarm[1] = seconds_to_frames(random_range(1, 2));
	alarm[2] = seconds_to_frames(random_range(1, 2));
	alarm[3] = seconds_to_frames(1);
}

function gate_spawn(section) {
	var spawn_x_min, spawn_x_max, spawn_x, spawn_y, spawn_left;
	
	switch (section) {
		case 0:
			spawn_x_min = 192;
			spawn_x_max = 736;
			spawn_y = 256;
			break;
		
		case 1:
			spawn_x_min = 0;
			spawn_x_max = 544;
			spawn_y = 32;
			break;
			
		case 2:
			spawn_x_min = 0;
			spawn_x_max = 544;
			spawn_y = 480;
			break;
	}
	
	spawn_x = choose(spawn_x_min, spawn_x_max);
	spawn_left = (spawn_x == spawn_x_min);
	var hspd = irandom_range(3, 5) * ((spawn_left) ? 1 : -1);
	
	with (instance_create_layer(spawn_x, spawn_y, "Spikes", objSpikeDown)) {
		image_blend = (irandom(1) == 0) ? c_white : c_red;
		hspeed = hspd;
		spawn_x_limit = (spawn_left) ? spawn_x_max : spawn_x_min;
	}
	
	with (instance_create_layer(spawn_x, spawn_y + 64, "Spikes", objSpikeUp)) {
		image_blend = (irandom(1) == 0) ? c_white : c_red;
		hspeed = hspd;
		spawn_x_limit = (spawn_left) ? spawn_x_max : spawn_x_min;
	}
}