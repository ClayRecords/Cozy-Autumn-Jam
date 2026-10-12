// Debug mode, for analytics and testing
is_debug = false;

// default text align will be left!
draw_set_halign(fa_left);

display_set_gui_size(960, 540);

money = 0;

current_ghost = undefined;
ghost_sprites = [spr_ghost_1, spr_ghost_2, spr_ghost_3];

menu_music = audio_play_sound(snd_mainTheme, 10, true, 1);

// Store ingredient INDEXES (references to objects)
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

// Create potion objects for testing recipes
potion_indexes = [
	obj_potion_find_lost_items,
	obj_potion_flight,
	obj_potion_foul,
	obj_potion_hair_growth,
	obj_potion_healing,
	obj_potion_invisibility,
	obj_potion_mystery,
	obj_potion_parent,
	obj_potion_stink_bomb,
	obj_potion_strength,
	obj_potion_water_breathing,
	obj_potion_x_ray
];
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
	current_ghost = instance_create_layer(
		obj_visitor_spawn.x,
		obj_visitor_spawn.y,
		"Instances_foreground",
		obj_visitor
	);
    
    current_ghost.sprite_index = spr_ghost_1;
    
	current_ghost.order = potion_indexes[int64(random(array_length(potion_indexes)))];
    //TODO make not possible to choose foul potion or potion parent
    //I think this will reroll the ghost if it does choose an unobtainable potion
    if current_ghost.order = obj_potion_foul || current_ghost.order = obj_potion_parent{
        print("Ghost wants an unobtainable potion: ", current_ghost.order.name, ". What a prick.")
    }
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
