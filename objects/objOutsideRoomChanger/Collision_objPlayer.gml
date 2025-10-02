if (outside_room(false)) {
	if (other.x < 0) {
		switch (room) {
			case rHub: other.x += 800; break;
			case rHubClearAny: other.x += 6400; break;
			default: other.x += room_width; break;
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