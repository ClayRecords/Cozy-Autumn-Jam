_list = [];

// 1. Convert the element ID into the actual sequence instance struct
var _seq_struct = undefined

if (obj_cauldron.is_brewing){
    _seq_struct = layer_sequence_get_instance(
    obj_cauldron_interactable_area.menu_sequence
    )
}
if(obj_kitchen_cover.is_in_maze){
    _seq_struct = layer_sequence_get_instance(
	obj_kitchen_cover.kitchen_cover_sequence
);
}

with (obj_inventory_item) {
	if (in_sequence && sequence_instance == _seq_struct) {
		array_push(other._list, id);
	}
}

for (var i = 0; i < array_length(_list); i++) {
	slot_data = obj_player.inventory[i];

	_list[i].sprite_index = object_get_sprite(slot_data.ingredient_type);

	_list[i].ingredient_type = slot_data.ingredient_type;
	_list[i].draggable = slot_data.draggable;
}
