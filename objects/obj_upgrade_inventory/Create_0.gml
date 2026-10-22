// Inherit the parent event
event_inherited();

button_text = "Add Inventory Slot";
description = "Pick up more items by hiring a furry friend to follow you around with a backpack.";

level = 0;
level_max = obj_inventory.inventory_max_size - obj_inventory.inventory_size_start;

cost = 3;
cost_increase = 1;

function do_upgrade() {
	obj_inventory.inventory_size += 1;
	obj_game_manager.little_baby_previous_parent = instance_create_layer(
		obj_player.x,
		obj_player.y,
		"Instances",
		obj_little_baby,
		{parent: obj_game_manager.little_baby_previous_parent}
	);
}
