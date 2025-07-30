draw_set_font(fntStageG_Gate);
draw_set_color(c_white);

if (timer > -1) {
	draw_text(640, 32, string(ceil(timer / 50)));
}

draw_text(16, 385, (ask_spikes) ? "How many" : "     Count");
draw_sprite_ext(sprSpikeUp, 0, 300, 384, 2, 2, 0, c_red, 1);
draw_sprite_ext(sprSpikeDown, 0, 364, 384, 2, 2, 0, c_red, 1);
draw_text(440, 385, (ask_spikes) ? "?" : "");

if (ask_spikes) {
	for (var i = 0; i < array_length(ask_number); i++) {
		draw_text(598 + 40 * i, 460, ask_number[i]);
		
		if (i == ask_select) {
			draw_sprite(sprGateArrowUp, 0, 600 + 40 * i, 439);
			draw_sprite(sprGateArrowDown, 0, 600 + 40 * i, 513);
		}
	}
}