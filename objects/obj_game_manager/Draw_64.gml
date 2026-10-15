if (is_debug) {
    draw_set_halign(fa_left);
	draw_text(10, 10, "* Debug Mode");
	draw_text(200, 10, "Money: " + str(money));

	potion_held = obj_player.potion_held ? obj_player.potion_held.name : "<None>";

	draw_text(330, 10, "Potion Held: " + potion_held);

	total_items = 0;
	for (i = 0; i < array_length(obj_inventory.inventory); i++) {
		if (
			obj_inventory.inventory[i].ingredient_type != obj_empty_inventory_ingredient
			&& obj_inventory.inventory[i].ingredient_type != obj_locked_inventory
		) {
			total_items++;
		}
	}
	draw_text(600, 10, "Total Items Carrying: " + str(total_items));

	obj_cauldron.evaluate_recipes();
	var potion_name = obj_potion_foul.name;
	if (obj_cauldron.current_potion != undefined) {
		potion_name = obj_cauldron.current_potion.name;
	}

	draw_text(400, 450, "POTION BREWING: " + potion_name);
	draw_text(400, 500, "Cauldron: " + str(obj_cauldron.current_ingredients));

    draw_text(10, 50, "X = give potion currently in cauldron");
    draw_text(10, 70, "Z = flush cauldron");
    draw_text(10, 90, "C = give requested potion");
    draw_text(10, 110, "V = add inv slot");

}


