var _index = 1;

with (obj_locked_inventory) {
	visible = _index >= obj_inventory.inventory_size;
	_index++;
}

visible = _index >= obj_inventory.inventory_size;
