draw_self();

if (room == rHub) {
	var stage = global.stage_info[level];
	draw_set_font(fntHub);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color((!global.items.letters[level]) ? c_white : c_yellow);
	draw_text_outline(x + sprite_width / 2, y - 40, stage.name, c_black);

	var coins = 0;
	var length = array_length(stage.coins);
	
	for (var i = 0; i < length; i++) {
		if (global.items.coins[stage.coins[i]]) {
			coins++;
		}
	}

	if (coins == length) {
		draw_sprite(sprItemCoin, 0, x - 55, y - 43);
	}

	if (global.items.reds[level]) {
		draw_sprite(sprItemRed, 0, x + 59, y - 43);
	}

	draw_set_color((coins != length || !global.items.reds[level]) ? c_white : c_yellow);
	draw_text_outline(x + sprite_width / 2 + 0, y - 10, $"[{coins}/{length}]", c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}