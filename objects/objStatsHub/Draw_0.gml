draw_set_font(fntMenu2);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var letters_obtained = item_count(global.items.letters);
var letters_total = item_total(global.items.letters);

if (letters_obtained > 0) {
	draw_text_outline(160, 352, "AZ", c_black);

	if (letters_obtained == letters_total) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text_outline(160 + 34, 352, $"[{letters_obtained}/{letters_total}]", c_black);
}

var yellows_obtained = item_count(global.items.yellows);
var yellows_total = item_total(global.items.yellows);

if (yellows_obtained > 0) {
	draw_sprite(sprItemYellow, timer * sprite_get_speed(sprItemYellow) / game_get_speed(gamespeed_fps), 160, 384);
	
	if (yellows_obtained == yellows_total) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text_outline(160 + 34, 384, $"[{yellows_obtained}/{yellows_total}]", c_black);
}

var greens_obtained = item_count(global.items.greens);
var greens_total = item_total(global.items.greens);

if (greens_obtained > 0) {
	draw_sprite(sprItemGreen, timer * sprite_get_speed(sprItemGreen) / game_get_speed(gamespeed_fps), 160, 416);
	
	if (greens_obtained == greens_total) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text_outline(160 + 34, 416, $"[{greens_obtained}/{greens_total}]", c_black);
}

var reds_obtained = item_count(global.items.reds);
var reds_total = item_total(global.items.reds);

if (reds_obtained > 0) {
	draw_sprite(sprItemRed, timer * sprite_get_speed(sprItemRed) / game_get_speed(gamespeed_fps), 160, 448);
	
	if (reds_obtained == reds_total) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text_outline(160 + 34, 448, $"[{reds_obtained}/{reds_total}]", c_black);
}

for (var i = 0; i < array_length(global.items.platinums); i++) {
	var index = timer * sprite_get_speed(sprItemPlatinum) / game_get_speed(gamespeed_fps);
	var color = c_white;
	
	if (!global.items.platinums[i]) {
		index = 0;
		color = c_black;
	}
	
	draw_sprite_ext(sprItemPlatinum, index, 352 + 64 * i, 384, 1, 1, 0, color, 1);
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);