if (room == rStageO) {
	var planet_near = instance_nearest(x, y, objPlanetMask);

	if (planet_near != noone) {
		image_angle = point_direction(planet_near.x, planet_near.y, x, y);
	}
}