if (room == rHub) {
	room_to = asset_get_index($"rStage{letter_level}");
	
	if (letter_level == "A") {
		if (global.section != -1) {
			with (objPlayer) {
				x = 400 + 800 * global.section;
			}
		}
	
		global.section = -1;
		global.hidden_greens = [];
		global.pieces_j = [];
		global.cards_m = [];
	}
	
	if (string_count("Boss", letter_level) > 0) {
		var yellows_obtained = item_count(global.items.yellows);
		
		if (yellows_obtained < yellows_need) {
			image_alpha = 0.5;
		}
	}
} else {
	if (instance_exists(objBossTemplate)) {
		visible = false;
	}
	
	room_to = rHub;
}