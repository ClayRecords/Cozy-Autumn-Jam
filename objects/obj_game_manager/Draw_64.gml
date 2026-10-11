if (is_debug) {
	draw_text(70, 10, "* Debug Mode");
	draw_text(200, 10, "Money: " + str(money));

	potion_held = obj_player.potion_held ? obj_player.potion_held.name : "<None>";

	draw_text(330, 10, "Potion Held: " + potion_held);

	total_items = 0;
	for (i = 0; i < array_length(obj_player.inventory); i++) {
		if (
			obj_player.inventory[i].ingredient_type != obj_empty_inventory_ingredient
			&& obj_player.inventory[i].ingredient_type != obj_locked_inventory
		) {
			total_items++;
		}
	}
	draw_text(600, 10, "Total Items Carrying: " + str(total_items));
}
