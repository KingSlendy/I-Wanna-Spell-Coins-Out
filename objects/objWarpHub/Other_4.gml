if (room == rHub) {
	room_to = asset_get_index($"rStage{letter_level}");
	
	if (letter_level == "A") {
		if (global.section != -1) {
			with (objPlayer) {
				if (global.section > 0) {
					x = 400 + 800 * global.section;
				} else {
					x = 736 + 16;
				}
			}
		}
	
		global.section = -1;
		global.hidden_greens = [];
		global.pieces_j = [];
		global.cards_m = [];
	}
	
	if (string_count("Boss", letter_level) > 0) {
		var coins_obtained = item_count(global.items.yellows) + item_count(global.items.greens) + item_count(global.items.reds);
		
		if (coins_obtained < coins_need) {
			image_alpha = 0.5;
		}
	}
} else {
	if (instance_exists(objBossTemplate)) {
		visible = false;
	}
	
	room_to = rHub;
}