event_inherited();


if (grabbed) {
    // Dropped over cauldron
    if (position_meeting(mouse_x, mouse_y, obj_cauldron_area)) {
		obj_cauldron.add_ingredient(ingredient_type);

		//delete from inventory list
		inventory = obj_inventory.inventory;
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
			return_to_inventory();
		}
	}
	grabbed = false;
}
