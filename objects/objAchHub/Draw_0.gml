draw_self();

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (visible && mx >= x && mx < x + 32 && my >= y && my < y + 32) {
	draw_set_font(fntMenu2);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text_outline(192, 224, description, c_black);
}