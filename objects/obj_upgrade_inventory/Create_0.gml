// Inherit the parent event
event_inherited();

upgrade_type = "inventory";
button_text = "Add Inventory Slot";
description = "Pick up more items by hiring a furry friend to follow you around with a backpack.";

level = 0;
level_max = obj_inventory.inventory_max_size - obj_inventory.inventory_size_start;

cost = 3;
cost_increase = 1;

function do_upgrade() {
	obj_inventory.inventory_size += 1;
}
