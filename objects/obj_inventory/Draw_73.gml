if (obj_game_manager.is_debug) {
	obj_cauldron.evaluate_recipes();
	potion_name = obj_cauldron.current_potion
		? obj_cauldron.current_potion.name
		: obj_potion_foul.name;

	draw_text(400, 450, "POTION BREWING: " + potion_name);
	draw_text(400, 500, "Cauldron: " + str(obj_cauldron.current_ingredients));
}
