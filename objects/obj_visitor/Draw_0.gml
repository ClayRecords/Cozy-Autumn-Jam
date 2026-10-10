draw_self();

if (obj_register_zone.is_in_register_zone && !order_complete) {
	draw_sprite_ext(spr_textBubble, -1, x - 20, y - 90, 1.5, 1.5, 0, c_white, 1);
	order_sprite = order.sprite_index;
	if (sprite_exists(order_sprite)) {
		draw_sprite(order_sprite, -1, x - 5, y - 82);
	}
	if (keyboard_check_pressed(ord("Y")) && obj_player.potion_held) {
        complete_transaction(obj_potion_invisibility);
	}
}

if (obj_game_manager.is_debug) {
	draw_text(x, y, "Gold: " + str(order.cost * tip));
}
