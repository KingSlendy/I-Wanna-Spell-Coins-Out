draw_self();

if (room == rHub) {
	var stage = global.stage_info[level];
	var letter = (global.items.letters[level]);
	draw_set_font(fntHub);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color((!letter) ? c_white : c_yellow);

	var coin = (global.items.coins[level]);
	var red = (global.items.reds[level]);
	
	if (!coin && !red) {
		draw_text_outline(x + sprite_width / 2, y - 30, stage.name, c_black);
	} else {
		draw_text_outline(x + sprite_width / 2 - 3, y - 30, "|", c_black);
		draw_set_halign(fa_right);
		draw_text_outline(x + sprite_width / 2 - 10, y - 30, stage.name, c_black);
		draw_set_halign(fa_left);
		draw_text_outline(x + sprite_width / 2 + 9, y - 30, (!red) ? "???" : stage.secret, c_black);
		draw_set_halign(fa_center);
	}
	
	if (coin) {
		draw_sprite(sprItemCoin, 0, x - 55, y - 33);
	}

	if (red) {
		draw_sprite(sprItemRed, 0, x + 59, y - 33);
	}

	draw_set_color((!coin || !red) ? c_white : c_yellow);
	draw_text_outline(x + sprite_width / 2, y, $"[{(coin) ? 1 : 0}/1]", c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}