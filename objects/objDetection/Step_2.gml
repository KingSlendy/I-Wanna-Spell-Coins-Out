if (instance_exists(follow)) {
	x += follow.x - follow.xprevious;
	y += follow.y - follow.yprevious;
	
	if (follow.speed != 0) {
		image_angle = (point_direction(follow.xprevious, follow.yprevious, follow.x, follow.y) + 360 + 90) % 360;
	}
}

if (!detect || !instance_exists(objPlayer)) {
	exit;
}

switch (image_angle) {
	case 0:
		if (rectangle_in_triangle(objPlayer.bbox_left, objPlayer.bbox_top, objPlayer.bbox_right, objPlayer.bbox_bottom, follow.x, follow.y, bbox_left, bbox_bottom, bbox_right, bbox_bottom) > 0) {
			kill_player();
		}
		break;
		
	case 90:
		if (rectangle_in_triangle(objPlayer.bbox_left, objPlayer.bbox_top, objPlayer.bbox_right, objPlayer.bbox_bottom, follow.x, follow.y, bbox_right, bbox_top, bbox_right, bbox_bottom) > 0) {
			kill_player();
		}
		break;
		
	case 180:
		if (rectangle_in_triangle(objPlayer.bbox_left, objPlayer.bbox_top, objPlayer.bbox_right, objPlayer.bbox_bottom, follow.x, follow.y, bbox_left, bbox_top, bbox_right, bbox_top) > 0) {
			kill_player();
		}
		break;
		
	case 270:
		if (rectangle_in_triangle(objPlayer.bbox_left, objPlayer.bbox_top, objPlayer.bbox_right, objPlayer.bbox_bottom, follow.x, follow.y, bbox_left, bbox_top, bbox_left, bbox_bottom) > 0) {
			kill_player();
		}
		break;
}