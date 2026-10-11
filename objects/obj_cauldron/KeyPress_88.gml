if (is_brewing && array_length(current_ingredients) != 0) {
	obj_player.potion_held = current_potion;

	inventory = obj_player.inventory;
	print(str(inventory));
	for (i = 0; i < array_length(inventory); i++) {
		item = inventory[i];
		if (item.dropped) {
			instance_destroy(item);
		}
	}
	current_ingredients = [];
}
