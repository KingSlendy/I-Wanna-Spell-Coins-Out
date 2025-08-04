if (spin) {
	var cam = camera_properties(0);
	angle = approach(angle, view_target, 10);
	
	camera_set_view_angle(cam.view_cam, angle);
	
	if (angle == view_target) {
		flip_grav(grav);
		
		with (objRotateGravTemplate) {
			angle = other.angle;
		}
		
        spin = false;
		alarm[0] = seconds_to_frames(0.5);
	}
}