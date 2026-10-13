draw_self();

if (obj_game_manager.is_debug) {
	draw_text(x + 20, y, "Gold: " + str(order.cost * tip));
}
