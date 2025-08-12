if (room == rStageK) {
	with (objItemGreen) {
		if (image_alpha == 0) {
			visible = false;
		}
	}
}

if (other.image_alpha == 1) {
	instance_destroy();
}