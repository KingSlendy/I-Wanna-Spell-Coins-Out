if (!instance_exists(objPlayer)) {
	exit;
}

instance_create_layer(player_info[0].x, player_info[0].y + 23, "Player", objPhantomPlayer);

alarm[0] = seconds_to_frames((!fast) ? 5 : 3);