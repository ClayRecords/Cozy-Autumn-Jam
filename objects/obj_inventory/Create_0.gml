inventory_coordinates = [
	[410, 65],
	[474, 65],
	[410, 129],
	[474, 129],
	[410, 193],
	[474, 193],
	[410, 257],
	[474, 257]
];

function add_ingredient_to_inventory(ingredient) {
	for (i = 0; i < array_length(inventory_coordinates); i++) {
		current_inventory_item = obj_player.inventory[i];
		if (current_inventory_item.ingredient_type == obj_empty_inventory_ingredient) {
			current_inventory_item.ingredient_type = ingredient;
			current_inventory_item.draggable = true;
			break;
		}
	}
}

// init inventory
for (i = 0; i < array_length(inventory_coordinates); i++) {
	new_inventory_item = instance_create_layer(
		inventory_coordinates[i][0],
		inventory_coordinates[i][1],
		"game_managers",
		obj_inventory_item
	);
	if (i >= 3) {
		new_inventory_item.ingredient = obj_locked_inventory;
	}
	new_inventory_item.start_x = new_inventory_item.x;
	new_inventory_item.start_y = new_inventory_item.y;
	obj_player.inventory[i] = new_inventory_item;
}
