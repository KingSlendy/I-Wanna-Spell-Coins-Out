if (array_length(player_info) == 0) {
	exit;
}

var info = player_info[0];
var sprite = asset_get_index($"sprPhantomPlayer{string_replace(sprite_get_name(info.sprite_index), "sprPlayer", "")}");
draw_sprite_ext(sprite, info.image_index, info.x, info.y, info.image_xscale, info.image_yscale, 0, c_white, 0.5);