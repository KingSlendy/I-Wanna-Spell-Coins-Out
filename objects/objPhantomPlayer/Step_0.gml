if (!instance_exists(objPlayer)) {
	image_speed = 0;
	exit;	
}

player_info = objPhantomController.player_info[frame_info++];

var action = sprite_get_name(player_info.sprite_index);
action = string_replace(action, "sprPlayer", "");
action = string_replace(action, "sprKirbyPlayer", "");
action = string_replace(action, "sprHatKidPlayer", "");
action = string_replace(action, "sprShadowQueenPlayer", "");
action = string_replace(action, "sprAntasmaPlayer", "");
action = string_replace(action, "sprJokerPlayer", "");
var sprite = asset_get_index($"sprPhantomPlayer{action}");
sprite_index = sprite;
image_index = player_info.image_index;
image_xscale = player_info.image_xscale;
image_yscale = player_info.image_yscale;
x = player_info.x;
y = player_info.y;