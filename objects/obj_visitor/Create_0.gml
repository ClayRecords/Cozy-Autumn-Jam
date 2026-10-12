// order: one potion
// tip: (correctness of potions + time)

movement_speed = 5;

is_entering = true;
is_leaving = false;

show_order_timer = 0;
show_order_timer_max = 300;
order = undefined;
order_complete = false;

tip = 1.5;

// Bell ring
var snd_bellring = choose(snd_doorbellring1, snd_doorbellring2, snd_doorbellring3);
audio_play_sound(snd_bellring, 10, false, 0.1);

target_y = obj_visitor_wait.y;

function set_show_order() {
	show_order_timer = show_order_timer_max;
}

function complete_transaction(potion) {
	if (order.name != potion.name) {
		tip = 1;
		print("HOW DARE YOU! ", "Ordered: ", order.name, ". Gave: ", potion.name);
	} else {
		print("YIPPEEEE! ", "Ordered: ", order.name, ". Gave: ", potion.name);
	}
	order_complete = true;
	obj_game_manager.get_paid(self);
}
