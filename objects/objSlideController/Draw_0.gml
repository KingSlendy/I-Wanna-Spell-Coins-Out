if (!instance_exists(objPlayer) || objPlayer.on_block == null || objPlayer.hspd != 0 || changing) {
	exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx >= 0 && mx <= display_get_gui_width() && my >= 0 && my <= display_get_gui_height()) {
	var cx = mx div slide_w * slide_w;
	var cy = my div slide_h * slide_h;
	var player = collision_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), objPlayer, false, true);
	var piece = collision_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), [objSlidePieceBlocks, objSlidePieceSpikes], false, true);
	draw_set_alpha((piece == noone || !piece.swapped) ? 0.4 : 0);
	draw_set_colour((player == noone) ? c_orange : c_gray);
	draw_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), false);
	draw_set_alpha(1);
}

for	(var r = 0; r < slide_n; r++) {
	for (var c = 0; c < slide_n; c++) {
		if (grid[# r, c]) {
	        draw_set_alpha(0.4);
	        draw_set_colour(c_lime);
	        var cx = c * slide_w;
	        var cy = r * slide_h;
	        draw_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), false);
	        draw_set_alpha(1);
	    }
	}
}