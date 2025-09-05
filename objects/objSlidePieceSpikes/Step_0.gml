x = lerp(x, target_x, 0.25);
y = lerp(y, target_y, 0.25);

if ((target_x != x || target_y != y) && point_distance(x, y, target_x, target_y) < 1) {
    x = target_x;
    y = target_y;
	active = true;
	objPlayer.frozen = false;
	objSlideController.changing = false;
}