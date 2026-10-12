speed_multi = 3;
mask_index = player_sprite_down;

tilemap = layer_tilemap_get_id("Tilemap");
collide_objs = [obj_shelf, obj_pillar, tilemap];

alarm[0] = 4;
is_moving = false;

potion_held = undefined;
nearest_interactable = undefined;
previous_nearest_interactable = undefined;

// Initialize inventory with 8 independent data structs
inventory = array_create_ext(8, function() {
	return {ingredient_type: obj_empty_inventory_ingredient, draggable: false};
});

inventory_size = 3;

function add_ingredient_to_inventory(ingredient) {
	for (var i = 0; i < array_length(inventory); i++) {
		current_inventory_item = inventory[i];

		// Check if the struct's stored data represents an empty slot
		if (current_inventory_item.ingredient_type == obj_empty_inventory_ingredient) {
			current_inventory_item.ingredient_type = ingredient;
			current_inventory_item.draggable = true;
			break; // Stop looking for slots
		}
	}
	print("Picked up: ", ingredient);
}
