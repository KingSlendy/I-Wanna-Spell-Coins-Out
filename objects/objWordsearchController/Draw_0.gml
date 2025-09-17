draw_set_font(fntMenu2);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var r = 0; r < size; r++) {
	for (var c = 0; c < size; c++) {
		draw_text(x + 32 * c + 16, y + 32 * r + 16, grid[# r, c].letter);
	}
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);