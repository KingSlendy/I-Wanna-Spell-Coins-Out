switch (room) {
	case rStageBoss3:
		var rnd = irandom(359);
	
		for (var i = 0; i < 360; i += 360 / 10) {
			create_cherry(x, y, c_aqua, i + rnd, 5);
		}
		
		instance_destroy();
		break;
		
	case rStageBoss4:
		var rnd = irandom(359);
	
		for (var i = 0; i < 360; i += 360 / 8) {
			create_cherry(x, y, #FF99F8, i + rnd, 5);
		}
		
		instance_destroy();
		break;
}