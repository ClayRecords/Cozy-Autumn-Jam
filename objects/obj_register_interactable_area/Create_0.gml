event_inherited();

function interact() {
	if (obj_player.potion_held != undefined) {
		obj_visitor.complete_transaction(obj_player.potion_held);
		obj_player.potion_held = undefined;
		return;
	}

	if (!obj_visitor.order_complete) {
		obj_visitor.set_show_order();
		return;
	}
}
