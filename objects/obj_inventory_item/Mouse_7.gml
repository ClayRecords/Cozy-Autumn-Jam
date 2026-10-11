if (grabbed && !dropped) {
	if (mouse_x > 600) {
		obj_cauldron.add_ingredient(ingredient);
		image_alpha = 0;
        
        //delete from inventory list :)
        inventory = obj_player.inventory;
        item_index = array_get_index(inventory, self);
        if(item_index != -1){
            array_delete(inventory, item_index, 1);
        }
	}
	dropped = true;
	grabbed = false;
}
