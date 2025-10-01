switch (room) {
	case rStageBoss3:
		with (create_cherry(x, y, #F157FF)) {
			alarm[1] = seconds_to_frames(1);
		}
		break;
		
	case rStageBoss5:
		create_cherry(x, y, c_yellow, irandom(359), irandom_range(4, 8));
		instance_destroy();
		break;
}

alarm[0] = 5;