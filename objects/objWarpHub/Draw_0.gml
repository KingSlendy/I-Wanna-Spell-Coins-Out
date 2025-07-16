draw_self();

if (room == rHub) {
	var stage = global.stage_info[level];
	var letter = (global.items.letters[level]);
	draw_set_font(fntHub);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color((!letter) ? c_white : c_yellow);
	
	var coins = 0;
	var length = array_length(stage.coins);
	
	for (var i = 0; i < length; i++) {
		if (global.items.coins[stage.coins[i]]) {
			coins++;
		}
	}
	
	var red = (global.items.reds[level]);
	
	if (!(coins == length) && !red) {
		draw_text_outline(x + sprite_width / 2, y - 40, stage.name, c_black);
	} else {
		draw_text_outline(x + sprite_width / 2 - 3, y - 40, "|", c_black);
		draw_set_halign(fa_right);
		draw_text_outline(x + sprite_width / 2 - 10, y - 40, stage.name, c_black);
		draw_set_halign(fa_left);
		draw_text_outline(x + sprite_width / 2 + 9, y - 40, (!red) ? "???" : stage.secret, c_black);
		draw_set_halign(fa_center);
	}
	
	if (coins == length) {
		draw_sprite(sprItemCoin, 0, x - 55, y - 43);
	}

	if (red) {
		draw_sprite(sprItemRed, 0, x + 59, y - 43);
	}

	draw_set_color((coins != length || !red) ? c_white : c_yellow);
	draw_text_outline(x + sprite_width / 2, y - 10, $"[{coins}/{length}]", c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}