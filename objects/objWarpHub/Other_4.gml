if (room == rHub) {
	room_to = asset_get_index($"rStage{letter}");
	
	if (global.section != -1) {
		with (objPlayer) {
			x = 400 + 800 * global.section;
		}
	}
	
	global.section = -1;
	global.hidden_greens = [];
	global.pieces_j = [];
} else {
	room_to = rHub;
}