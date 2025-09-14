if (!is_active_trigger("apple1") && instance_exists(objPlayer) && objPlayer.jump_left <= 0) {
	activate_trigger("apple1");
}