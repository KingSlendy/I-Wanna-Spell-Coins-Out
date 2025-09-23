for (var i = 0; i < global.total_saves; i++) {
	var data = datas[i];
    draw_sprite(sprFilesBar, 0, x - 32, y + spacing * i);
	
	//Name
    draw_set_alpha(1);
	draw_set_font(fntMenu);
    draw_set_color(c_white);
	draw_set_halign(fa_left);
    draw_text_outline(x, y - 6 + spacing * i, $"Data{i + 1}", c_black);
    
	//Difficulty
	draw_set_font(fntMenu2);
	draw_set_halign(fa_center);
    
    var draw_diff = data.difficulty;
    
    if (menu == 1 && select[0] == i) {
        draw_diff = $"< {global.difficulties[select[menu]]} >";
    }
    
    draw_text_outline(x + 48, y + 40 + spacing * i, draw_diff, c_black);
    
	//Deaths and Time
	draw_set_font(fntMenu3);
    draw_set_halign(fa_left);
	draw_sprite(sprDeathTime, 0, x, y + 78 + spacing * i);
    draw_text_transformed_outline(x + 20, y + 74 + spacing * i, $"{data.deaths}", 0.75, 0.75, 0, c_black);
	draw_sprite(sprDeathTime, 1, x, y + 100 + spacing * i);
    draw_text_transformed_outline(x + 20, y + 96 + spacing * i, formatted_time(data.time), 0.75, 0.75, 0, c_black);
    
	//Clear
    if (data.clear) {
		draw_set_font(fntMenu4);
        draw_set_halign(fa_center);
        draw_text(x + 284, y + 92 + spacing * i, "Clear!");
    }
        
    if (select[0] == i) {
        draw_sprite(sprCherry, 0, 52, y + 60 + spacing * i);
        draw_sprite(sprCherry, 0, room_width - 56, y + 60 + spacing * i);
    }
}

draw_set_font(fntMenu3);
draw_set_halign(fa_center);
draw_text_outline(125, 550, "[Z] Back", c_black);
draw_text_outline(380, 550, "[Enter] Options", c_black);
draw_text_outline(650, 550, "[Shift] Accept", c_black);
draw_set_halign(fa_left);