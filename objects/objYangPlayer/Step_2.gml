if (!instance_exists(objPlayer)) {
	exit;
}

sprite_index = objPlayer.sprite_index;
image_index = objPlayer.image_index;
image_angle = 180 - objPlayer.image_angle;
xscale = objPlayer.xscale;
x = 1600 - (objPlayer.x - 800);
y = 608 - objPlayer.y;

var killer = p_instance_place(0, 0, objPlayerKiller);

if (killer != null && killer.visible && (killer.object_index != objSlidePieceSpikes || killer.active)) {
	kill_player();
}