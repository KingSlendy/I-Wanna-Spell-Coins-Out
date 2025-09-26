if (outside_room()) {
	if (other.x < 0) {
		if (room != rHubClearAny) {
			other.x += room_width;
		} else {
			other.x += 6400;
		}
    }
        
    if (other.x > room_width) {
        other.x -= room_width;
    }
        
    if (other.y < 0) {
        other.y += room_height;
    }
        
    if (other.y > room_height) {
        other.y -= room_height;
    }
	
	if (!screenwrap) {
		room_goto(room_to);
	}
}