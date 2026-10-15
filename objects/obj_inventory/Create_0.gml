
alarm[0] = 1;

inventory = array_create_ext(8, function() {
    return {
        ingredient_type: obj_empty_inventory_ingredient,
        draggable: false
    };
});

inventory_size = 1; //to start with.


function add_ingredient_to_inventory(ingredient) {
    for (var i = 0; i < inventory_size; i++) {
        var _slot = inventory[i];

        if (_slot.ingredient_type == obj_empty_inventory_ingredient) {
            _slot.ingredient_type = ingredient;
            _slot.draggable = true;

            print("Picked up: ", ingredient);

            refresh_inventory_display();
            alarm[0] = 1;

            return;
        }
    }

    print("Inventory full!");
}


function refresh_inventory_display() {
    var _index = 0;

    with (obj_inventory_item) {
        if (_index < array_length(obj_inventory.inventory)) {
            var _data = obj_inventory.inventory[_index];

            sprite_index = object_get_sprite(_data.ingredient_type);
            ingredient_type = _data.ingredient_type;
            draggable = _data.draggable;

            _index++;
        }
    }
}
