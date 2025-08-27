if (!instance_exists(objPlayer)) {
	image_speed = 0;
	exit;	
}

player_info = objPhantomController.player_info[frame_info++];

var sprite = asset_get_index($"sprPhantomPlayer{string_replace(sprite_get_name(player_info.sprite_index), "sprPlayer", "")}");
sprite_index = sprite;
image_index = player_info.image_index;
image_xscale = player_info.image_xscale;
image_yscale = player_info.image_yscale;
x = player_info.x;
y = player_info.y;