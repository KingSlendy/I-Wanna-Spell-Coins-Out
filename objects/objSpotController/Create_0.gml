surf_black = noone;
surf_spot = noone;

layer_script_begin("Fake_2", method(id, function() {
	if (!surface_exists(surf_black)) {
		surf_black = surface_create(room_width, room_height);
	}
	
	surface_set_target(surf_black);
}));

layer_script_end("Fake_2", function() {
	surface_reset_target();
});