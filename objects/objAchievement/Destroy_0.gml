if (array_length(global.achievement_stack) > 0) {
	var achievement_next = global.achievement_stack[0];
	achievement_spawn(achievement_next);
	array_delete(global.achievement_stack, 0, 1);
}