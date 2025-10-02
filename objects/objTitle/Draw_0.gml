draw_set_font(fntTitle);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_outline(400, 40, "I Wanna\nSpell Coins\nOut", c_black);

draw_set_font(fntMenu3);
draw_text_outline(380, 550, "[Shift] Start", c_black);

draw_set_halign(fa_right);
draw_text_outline(790, 570, $"v{GM_version}", c_black);
draw_set_halign(fa_left);