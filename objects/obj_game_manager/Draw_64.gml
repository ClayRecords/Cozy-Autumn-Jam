if (is_debug) {
	draw_set_halign(fa_left);
	var debug_y = 15;
	draw_text(10, debug_y, "* Debug Mode");

	var potion_held = obj_player.potion_held ? obj_player.potion_held.name : "<None>";
	draw_text(330, debug_y, "Potion Held: " + potion_held);

	total_items = 0;
	for (i = 0; i < array_length(obj_inventory.inventory); i++) {
		if (
			obj_inventory.inventory[i].ingredient_type != obj_empty_inventory_ingredient
			&& obj_inventory.inventory[i].ingredient_type != obj_locked_inventory
		) {
			total_items++;
		}
	}
	draw_text(600, debug_y, "Total Items Carrying: " + str(total_items));

	obj_cauldron.evaluate_recipes();
	var potion_name = obj_potion_foul.name;
	if (obj_cauldron.current_potion != undefined) {
		potion_name = obj_cauldron.current_potion.name;
	}
	draw_text(400, 450, "POTION BREWING: " + potion_name);
	draw_text(400, 500, "Cauldron: " + str(obj_cauldron.current_ingredients));

	var debug_commands_text =
		"Z = flush cauldron"
		+ "\nX = give potion currently in cauldron"
		+ "\nC = give requested potion"
		+ "\nV = add inv slot"
		+ "\nB = add money";
	draw_text(10, 360, debug_commands_text);
}
