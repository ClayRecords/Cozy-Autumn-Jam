if (grabbed) {
	//roughly where the cauldron is
	if ((mouse_y > 330) && (mouse_y < 430) && (mouse_x > 540) && (mouse_x < 740)) {
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
