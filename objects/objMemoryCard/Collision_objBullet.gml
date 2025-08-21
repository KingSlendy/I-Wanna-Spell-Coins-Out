instance_destroy(other);

if (!rotateable || rotating != 0 || image_index != 0) {
	exit;
}

rotating = 1;

with (objMemoryCard) {
	rotateable = false;
}