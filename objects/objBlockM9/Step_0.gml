if (!visible && image_alpha == 1 && distance_to_object(objPlayer) < 2) {
	visible = true;
	activate_trigger("ach2");
}