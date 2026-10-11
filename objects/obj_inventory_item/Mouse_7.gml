if (grabbed) {
	if (mouse_x > 600) {
		obj_cauldron.add_ingredient(ingredient);
        
        //delete from inventory list
        inventory = obj_player.inventory;
        item_index = array_get_index(inventory, self.id);
        if(item_index != -1){
            ingredient = obj_empty_inventory_ingredient;
            draggable = false;
            dropped = false;
            grabbed = false;
            return_to_inventory();
        }
	}
	grabbed = false;
}
