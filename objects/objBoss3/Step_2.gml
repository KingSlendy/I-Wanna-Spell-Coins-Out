if (!instance_exists(objPlayer)) {
	exit;
}

if (objPlayer.x < x) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}