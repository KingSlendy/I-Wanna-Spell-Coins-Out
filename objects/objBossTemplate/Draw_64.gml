draw_set_color(c_lime);
var width = (room_width - 16) / max_hp * hp;
draw_rectangle(8, 8, 8 + (width - 1), 23, false);
draw_sprite_stretched(sprBossHealthBar, 0, 8, 8, room_width - 16, 16);