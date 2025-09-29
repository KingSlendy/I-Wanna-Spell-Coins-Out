switch (room) {
	case rHubClearAll:
		var rnd = irandom(360);
	
		for (var i = 0; i < 360; i += 360 / 8) {
			with (create_cherry(x, y, c_white, i + rnd, 6, 0.1)) {
				sprite_index = other.sprite_index;
				image_alpha = 0.5;
			}
		}
		
		instance_destroy();
		exit;
	
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