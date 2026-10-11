if (is_debug) {
	draw_text(70, 10, "* Debug Mode");
	draw_text(200, 10, "Money: " + str(money));

	potion_held = obj_player.potion_held ? obj_player.potion_held.name : "<None>";

	draw_text(330, 10, "Potion Held: " + potion_held);

	draw_text(600, 10, "Cauldron: " + str(obj_cauldron.current_ingredients));
}
