var letter = false;
var yellow = false;
var green = false;
var red = false;
var boss = false;

var yellow_index = timer * sprite_get_speed(sprItemYellow) / game_get_speed(gamespeed_fps);
var green_index = timer * sprite_get_speed(sprItemGreen) / game_get_speed(gamespeed_fps);
var red_index = timer * sprite_get_speed(sprItemRed) / game_get_speed(gamespeed_fps);

if (room == rHub) {
	if (string_count("Boss", letter_level) == 0) {
		letter = (global.items.letters[level]);
		yellow = (global.items.yellows[level]);
		green = (global.items.greens[level]);
		red = (global.items.reds[level]);
	} else {
		boss = (global.items.bosses[level]);
	}
}

draw_sprite_ext(sprite_index, ((letter && yellow && green && red) || boss) ? 1 : image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (room == rHub) {
	if (string_count("Boss", letter_level) == 0) {
		var stage = global.stage_info[level];
		draw_set_font(fntHub);
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_color((!letter) ? c_white : c_yellow);
	
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
				draw_sprite(sprItemYellow, yellow_index, x - 59, y - 33);
			} else {
				if (red) {
					draw_sprite(sprItemYellow, yellow_index, x - 29, y - 33);
				} else {
					draw_sprite(sprItemYellow, yellow_index, x, y - 33);
				}
			}
		}
	
		if (green) {
			draw_sprite(sprItemGreen, green_index, x, y - 32);
		}

		if (red) {
			if (green) {
				draw_sprite(sprItemRed, red_index, x + 59, y - 33);
			} else {
				draw_sprite(sprItemRed, red_index, x + 29, y - 33);
			}
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
	} else {
		draw_set_font(fntHub);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		var yellows_obtained = item_count(global.items.yellows);
		draw_sprite(sprItemYellow, yellow_index, x - 55, y - 33);
		draw_set_color((yellows_obtained >= yellows_need) ? c_yellow : c_white);
		draw_text_outline(x - 55 + 34, y - 33, $"[{yellows_obtained}/{yellows_need}]", c_black);
		
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
}