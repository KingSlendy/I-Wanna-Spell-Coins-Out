if (spin) {
	var cam = camera_properties(0);
	angle = approach(angle, view_target, 10);
	
	camera_set_view_angle(cam.view_cam, angle);
	
	if (angle == view_target) {
		flip_grav(grav);
		
		with (objPlayer) {
			still = false;
            frozen = false;
        }
		
		with (objRotateGravTemplate) {
			angle = other.angle;
		}
		
        spin = false;
	}
}