if (array_length(player_info) == 0) {
	exit;
}

var info = player_info[0];
var action = sprite_get_name(info.sprite_index);
action = string_replace(action, "sprPlayer", "");
action = string_replace(action, "sprKirbyPlayer", "");
action = string_replace(action, "sprHatKidPlayer", "");
action = string_replace(action, "sprShadowQueenPlayer", "");
action = string_replace(action, "sprAntasmaPlayer", "");
action = string_replace(action, "sprJokerPlayer", "");
var sprite = asset_get_index($"sprPhantomPlayer{action}");
draw_sprite_ext(sprite, info.image_index, info.x, info.y, info.image_xscale, info.image_yscale, 0, c_white, 0.5);