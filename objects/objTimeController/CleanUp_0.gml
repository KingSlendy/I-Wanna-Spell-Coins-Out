if (sprite_exists(sprite_tiles)) {
	sprite_delete(sprite_tiles);
}

if (surface_exists(surf_time)) {
	surface_free(surf_time);
}