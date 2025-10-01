if (!instance_exists(objPlayer) || objPlayer.on_block == null || objPlayer.hspd != 0 || changing) {
	exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mx >= 0 && mx < display_get_gui_width() && my >= 0 && my < display_get_gui_height()) {
	var cr = my div slide_h;
	var cc = mx div slide_w;
	
	if ((cr >= 0 && cr < slide_n && cc >= 0 && cc < slide_n) && !(cr == 1 && cc == 1) && !(cr == 2 && cc == 1)) {
		var cx1 = cc * slide_w;
		var cy1 = cr * slide_h;
		var cx2 = cx1 + (((cc < slide_n - 1) ? slide_w : slide_w + 2) - 1);
		var cy2 = cy1 + (((cr < slide_n - 1) ? slide_h : slide_h + 2) - 1);
		var player = collision_rectangle(cx1, cy1, cx2, cy2, objPlayer, false, true);
		var piece = collision_rectangle(cx1, cy1, cx2, cy2, [objSlidePieceBlocks, objSlidePieceSpikes], false, true);
		draw_set_alpha((piece == noone || !piece.swapped) ? 0.4 : 0);
		draw_set_colour((player == noone) ? c_orange : c_gray);
		draw_rectangle(cx1, cy1, cx2, cy2, false);
		draw_set_alpha(1);
	}
}

for	(var r = 0; r < slide_n; r++) {
	for (var c = 0; c < slide_n; c++) {
		if (grid[# r, c]) {
	        draw_set_alpha(0.4);
	        draw_set_colour(c_lime);
	        var cx1 = c * slide_w;
	        var cy1 = r * slide_h;
			var cx2 = cx1 + (((c < slide_n - 1) ? slide_w : slide_w + 2) - 1);
			var cy2 = cy1 + (((r < slide_n - 1) ? slide_h : slide_h + 2) - 1);
	        draw_rectangle(cx1, cy1, cx2, cy2, false);
	        draw_set_alpha(1);
	    }
	}
}