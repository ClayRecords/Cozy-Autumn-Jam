// Debug mode, for analytics and testing
is_debug = false;

// Default text align will be left!
draw_set_halign(fa_left);
draw_set_font(fnt_default);

display_set_gui_size(960, 540);

// Cursor cute
cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

money = 0;
current_ghost = undefined;
known_potions_start_count = 3;
known_potions_count = known_potions_start_count;

menu_music = -1;
menu_music = music_sync(snd_mainTheme, menu_music, window_has_focus(), 1000);

// Create ingredient instances
ingredient_indexes = [
	obj_ingredient_bat_wool,
	obj_ingredient_dragon_blood,
	obj_ingredient_eye_of_newt,
	obj_ingredient_frog_breath,
	obj_ingredient_lacewing_fly,
	obj_ingredient_moon_water,
	obj_ingredient_snail_slime,
	obj_ingredient_spider_silk
];
ingredients = [];
ingredients_struct = {};
for (var i = 0; i <= array_length(ingredient_indexes) - 1; i++) {
	var ingredient_index = ingredient_indexes[i];
	var ingredient = instance_create_layer(x, y, "invisible", ingredient_index);
	array_push(ingredients, ingredient);
	ingredients_struct[ingredient_index] = ingredient;
}

// Create potion instances
// Ordered here by unlock order and complexity
potion_indexes = [
	obj_potion_strength,
	obj_potion_invisibility,
	obj_potion_stink_bomb,
	obj_potion_find_lost_items,
	obj_potion_hair_growth,
	obj_potion_healing,
	obj_potion_flight,
	obj_potion_x_ray,
	obj_potion_water_breathing,
	obj_potion_mystery
];
potions = [];
for (var i = 0; i <= array_length(potion_indexes) - 1; i++) {
	var potion_index = potion_indexes[i];
	var potion = instance_create_layer(x, y, "invisible", potion_index);
	array_push(potions, potion);
}
instance_create_layer(x, y, "invisible", obj_potion_foul);

/**
 * Creates a new ghost object as the next customer.
 */
create_new_ghost = function() {
	current_ghost = instance_create_layer(
		obj_visitor_spawn.x,
		obj_visitor_spawn.y,
		"Instances_foreground",
		obj_visitor
	);
	current_ghost.sprite_index = spr_ghost_1;
	current_ghost.order = potion_indexes[int64(random(known_potions_count))];
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
