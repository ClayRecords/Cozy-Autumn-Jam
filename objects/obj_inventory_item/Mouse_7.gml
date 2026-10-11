if (grabbed) {
	if (mouse_x > 600) {
		obj_cauldron.add_ingredient(ingredient_type);

		//delete from inventory list
		inventory = obj_player.inventory;
		item_index = -1;
		for (i = 0; i < array_length(inventory); i++) {
			if (inventory[i].ingredient_type == ingredient_type) {
				item_index = i;
				break;
			}
		}
		if (item_index != -1) {
			print("released!!!!");
			ingredient_type = obj_empty_inventory_ingredient;
			inventory[item_index] = {
				ingredient_type: obj_empty_inventory_ingredient,
				draggable: false,
			};
			draggable = false;
			dropped = false;
			grabbed = false;
			return_to_inventory();
		}
	}
	grabbed = false;
}
