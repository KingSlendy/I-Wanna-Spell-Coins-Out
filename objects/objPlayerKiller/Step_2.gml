if (room == rStageG) {
	xprev = x;
	yprev = y;
	x = x div 32 * 32 + ((object_index != objCherry) ? 0 : 16);
	y = y div 32 * 32 + ((object_index != objCherry) ? 0 : 16);
}