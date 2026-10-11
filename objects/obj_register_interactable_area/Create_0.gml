event_inherited();

function interact() {
	print("Here");
	//if (!obj_visitor.order_complete) {
	//draw_sprite_ext(spr_textBubble, -1, x - 20, y - 90, 1.5, 1.5, 0, c_white, 1);
	//order_sprite = obj_visitor.order.sprite_index;
	//if (sprite_exists(order_sprite)) {
	//draw_sprite(order_sprite, -1, x - 5, y - 82);
	//}
	//if (keyboard_check_pressed(ord("Y")) && obj_player.potion_held) {
	//obj_visitor.complete_transaction(obj_potion_invisibility);
	//}
	//}

	if (obj_player.potion_held != undefined) {
		obj_visitor.complete_transaction(obj_player.potion_held);
	}
}
