inventory_coordinates = [[410, 65], [474, 65], [410, 129]];

function add_ingredient_to_inventory(ingredient_type) {
	var item_count = array_length(obj_player.inventory);
	if (item_count >= obj_player.inventory_size) {
		// At limit
		return;
	}

	new_inventory_item = instance_create_layer(
		inventory_coordinates[item_count][0],
		inventory_coordinates[item_count][1],
		"game_managers",
		obj_inventory_item
	);
	new_inventory_item.ingredient_type = ingredient_type;
	new_inventory_item.start_x = new_inventory_item.x;
	new_inventory_item.start_y = new_inventory_item.y;
	array_push(obj_player.inventory, new_inventory_item);
}
