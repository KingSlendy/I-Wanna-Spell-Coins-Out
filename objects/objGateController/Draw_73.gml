if (timer > -1) {
	draw_set_font(fntStageG_Gate);
	draw_set_color(c_white);
	draw_text(640, 32, string(ceil(timer / 50)));
}