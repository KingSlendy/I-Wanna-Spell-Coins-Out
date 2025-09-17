if (timer > -1 || words_solved) {
	draw_set_font(fntMenu2);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var r = 0; r < size; r++) {
		for (var c = 0; c < size; c++) {
			var cell = grid[# r, c];
			var color = c_white;

			if (cell.selected) {
				color = c_lime;
			} else if (cell.discover) {
				color = c_yellow;
			}
		
			draw_set_color(color);
			draw_text(x + 32 * c + 16, y + 32 * r + 16, cell.letter);
		}
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_font(fntMenu2);
	
	for (var i = 0; i < array_length(words); i++) {
		var word = words[i];
		var draw_r = i div 2;
		var draw_c = i mod 2;
		draw_set_color((array_contains(words_discover, word) ? c_yellow : c_white));
		draw_text(905 + 150 * draw_c, 480 + 30 * draw_r, words[i]);
	}
}


if (timer > -1) {
	draw_set_font(fntStageW_Timer);
	draw_set_color(c_white);
	draw_text(1340, 500, string(ceil(timer / 50)));
}