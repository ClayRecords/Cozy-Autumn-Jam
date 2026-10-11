if (is_brewing && array_length(current_ingredients) != 0) {
	obj_player.potion_held = current_potion;
	current_ingredients = [];
}
