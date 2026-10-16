// Inherit the parent event
event_inherited();

upgrade_type = "recipe";
button_text = "Add New Potion";
description = "Learn a new potion, unlocking it in the recipe book for customers to purchase!";

level = 0;
level_max =
	array_length(obj_game_manager.potions) - obj_game_manager.known_potions_start_count;

cost = 3;
cost_increase = 5;

function do_upgrade() {
	obj_game_manager.known_potions_count++;
}
