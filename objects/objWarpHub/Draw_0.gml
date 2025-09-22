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
	
	if (!red) {
		draw_text_outline(x + sprite_width / 2, y - 30, stage.name, c_black);
	} else {
		draw_text_outline(x + sprite_width / 2 - 3, y - 30, "|", c_black);
		draw_set_halign(fa_right);
		draw_text_outline(x + sprite_width / 2 - 15, y - 30, stage.name, c_black);
		draw_set_halign(fa_left);
		draw_text_outline(x + sprite_width / 2 + 15, y - 30, stage.secret, c_black);
		draw_set_halign(fa_center);
	}
	
	if (yellow) {
		if (green) {
			draw_sprite(sprItemYellow, timer * sprite_get_speed(sprItemYellow) / game_get_speed(gamespeed_fps), x - 59, y - 33);
		} else {
			if (red) {
				draw_sprite(sprItemYellow, timer * sprite_get_speed(sprItemYellow) / game_get_speed(gamespeed_fps), x - 29, y - 33);
			} else {
				draw_sprite(sprItemYellow, timer * sprite_get_speed(sprItemYellow) / game_get_speed(gamespeed_fps), x, y - 33);
			}
		}
	}

	if (red) {
		if (green) {
			draw_sprite(sprItemRed, timer * sprite_get_speed(sprItemRed) / game_get_speed(gamespeed_fps), x + 59, y - 33);
		} else {
			draw_sprite(sprItemRed, timer * sprite_get_speed(sprItemRed) / game_get_speed(gamespeed_fps), x + 29, y - 33);
		}
	}
	
	if (green) {
		draw_sprite(sprItemGreen, timer * sprite_get_speed(sprItemGreen) / game_get_speed(gamespeed_fps), x, y - 32);
	}

	draw_set_color((!yellow || !red || !green) ? c_white : c_yellow);
	
	if (green) {
		draw_text_outline(x - 72, y, "[", c_black);
		draw_text_outline(x + 100, y, "]", c_black);
	} else {
		if (red) {
			draw_text_outline(x - 42, y, "[", c_black);
			draw_text_outline(x + 70, y, "]", c_black);
		} else {
			draw_text_outline(x - 12, y, "[", c_black);
			draw_text_outline(x + 40, y, "]", c_black);
		}
	}
	
	if (green) {
		draw_text_outline(x + 42, y, "|", c_black);
		draw_text_outline(x - 16, y, "|", c_black);
	} else if (red) {
		draw_text_outline(x + sprite_width / 2 - 3, y, "|", c_black);
	}
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}