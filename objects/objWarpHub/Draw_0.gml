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
		
		var coins_obtained_all = [
			{ item: yellow, icon: sprItemYellow, index: yellow_index },
			{ item: green, icon: sprItemGreen, index: green_index },
			{ item: red, icon: sprItemRed, index: red_index }
		];
		
		var coins_obtained_only = array_filter(coins_obtained_all, function(x) {
			return (x.item);
		});
		
		var coins_obtained_length = array_length(coins_obtained_only);
		var coin_obtained_first, coin_obtained_second, coin_obtained_third;
		draw_set_color((coins_obtained_length < 3) ? c_white : c_yellow);
		
		switch (coins_obtained_length) {
			case 0:
				draw_text_outline(x - 12, y, "[", c_black);
				draw_text_outline(x + 40, y, "]", c_black);
				break;
			
			case 1:
				coin_obtained_first = coins_obtained_only[0];
				draw_sprite(coin_obtained_first.icon, coin_obtained_first.index, x, y - 33);
				draw_text_outline(x - 12, y, "[", c_black);
				draw_text_outline(x + 40, y, "]", c_black);
				break;
				
			case 2:
				coin_obtained_first = coins_obtained_only[0];
				coin_obtained_second = coins_obtained_only[1];
				draw_sprite(coin_obtained_first.icon, coin_obtained_first.index, x - 29, y - 33);
				draw_sprite(coin_obtained_second.icon, coin_obtained_second.index, x + 29, y - 33);
				draw_text_outline(x - 42, y, "[", c_black);
				draw_text_outline(x + 70, y, "]", c_black);
				draw_text_outline(x + sprite_width / 2 - 3, y, "|", c_black);
				break;
				
			case 3:
				coin_obtained_first = coins_obtained_only[0];
				coin_obtained_second = coins_obtained_only[1];
				coin_obtained_third = coins_obtained_only[2];
				draw_sprite(coin_obtained_first.icon, coin_obtained_first.index, x - 59, y - 33);
				draw_sprite(coin_obtained_second.icon, coin_obtained_second.index, x, y - 33);
				draw_sprite(coin_obtained_third.icon, coin_obtained_third.index, x + 59, y - 33);
				draw_text_outline(x - 72, y, "[", c_black);
				draw_text_outline(x + 100, y, "]", c_black);
				draw_text_outline(x + 42, y, "|", c_black);
				draw_text_outline(x - 16, y, "|", c_black);
				break;
		}
	
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	} else {
		draw_set_font(fntHub);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_color(c_white);
		var coins_obtained = item_count(global.items.yellows) + item_count(global.items.greens) + item_count(global.items.reds);
		var coins_icons = [
			{icon: sprItemYellow, index: yellow_index},
			{icon: sprItemGreen, index: green_index},
			{icon: sprItemRed, index: red_index}
		];
		
		if (item_count(global.items.greens) == 0) {
			coins_icons[1] = null;
		}
		
		if (item_count(global.items.reds) == 0) {
			coins_icons[2] = null;
		}
		
		coins_icons = array_filter(coins_icons, function(x) {
			return (x != null);
		});
		
		var coin_icon = coins_icons[(current_time div 2000) mod array_length(coins_icons)];
		draw_sprite(coin_icon.icon, coin_icon.index, x - 55, y - 33);
		draw_set_color((coins_obtained >= coins_need) ? c_yellow : c_white);
		draw_text_outline(x - 55 + 34, y - 33, $"[{min(coins_obtained, coins_need)}/{coins_need}]", c_black);
		
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
}