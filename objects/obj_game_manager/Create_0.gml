// Debug mode, for analytics and testing
is_debug = false;

current_ghost = undefined;

money = 0;

ghost_sprites = [spr_ghost_1, spr_ghost_2, spr_ghost_3];

// Create potion objects for testing recipes
potion_indexes = [obj_potion_invisibility, obj_potion_foul];
potions = [];
for (var i = 0; i <= array_length(potion_indexes) - 1; i++) {
	var potion_index = potion_indexes[i];
	var potion = instance_create_layer(x, y, "invisible", potion_index);
	array_push(potions, potion);
}

/**
 * Creates a new ghost object as the next customer.
 */
create_new_ghost = function() {
	current_ghost = instance_create_layer(144, 512, "Instances", obj_visitor);
    current_ghost.sprite_index = ghost_sprites[int64(random(array_length(ghost_sprites)))];
	current_ghost.order = potion_indexes[int64(random(array_length(potion_indexes)))];
};

self.create_new_ghost();

/**
 * Increase money based on potion cost + tip from visitor.
 * @param {Id.instance} obj_visitor visitor who has been taken care of.
 */
function get_paid(obj_visitor) {
	potion_cost = obj_visitor.order.cost;
	tip_percent = obj_visitor.tip;
	money += potion_cost * tip_percent;
}
