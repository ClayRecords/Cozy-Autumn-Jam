if (obj_game_manager.is_debug && is_brewing && array_length(current_ingredients) != 0) {
	obj_player.potion_held = current_potion;
	current_ingredients = [];
}
