draw_self();

if (room == rHub) {
	var stage = global.stage_info[level];
	var letter = (global.items.letters[level]);
	draw_set_font(fntHub);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_color((!letter) ? c_white : c_yellow);

	var yellow = (global.items.yellows[level]);
	var red = (global.items.reds[level]);
	var green = (global.items.greens[level]);
	
	if (!yellow && !red) {
		draw_text_outline(x + sprite_width / 2, y - 30, stage.name, c_black);
	} else {
		draw_text_outline(x + sprite_width / 2 - 3, y - 30, "|", c_black);
		draw_set_halign(fa_right);
		draw_text_outline(x + sprite_width / 2 - 10, y - 30, stage.name, c_black);
		draw_set_halign(fa_left);
		draw_text_outline(x + sprite_width / 2 + 9, y - 30, (!red) ? "???" : stage.secret, c_black);
		draw_set_halign(fa_center);
	}
	
	if (yellow) {
		draw_sprite(sprItemYellow, 0, x - 59, y - 33);
	}

	if (red) {
		draw_sprite(sprItemRed, 0, x + 59, y - 33);
	}
	
	if (green) {
		draw_sprite(sprItemGreen, 0, x, y - 32);
	}

	draw_set_color((!yellow || !red || !green) ? c_white : c_yellow);
	//draw_text_outline(x + sprite_width / 2, y, $"[{(yellow) ? 1 : 0}/1]", c_black);
	draw_text_outline(x - 72, y, "[", c_black);
	draw_text_outline(x + 100, y, "]", c_black);
	
	if (green) {
		draw_text_outline(x + 42, y, "|", c_black);
		draw_text_outline(x - 16, y, "|", c_black);
	} else {
		draw_text_outline(x + sprite_width / 2 - 3, y, "|", c_black);
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}