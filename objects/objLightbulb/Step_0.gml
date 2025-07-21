if (!light_active) {
	exit;
}

var spd = 0.00075//0.0075;

light_current = lerp(light_current, 0, spd);
light_distance = lerp(light_distance, 0, spd);