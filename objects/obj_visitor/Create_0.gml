// order: one potion
// tip: (correctness of potions + time)

movement_speed = 3;
speed = 0;

is_entering = true;
is_leaving = false;

order = undefined;
order_complete = false;
order_correct = undefined;

show_order_timer = 0;
show_order_timer_max = 300;

show_result_timer = 0;
show_result_timer_max = 200;

tip = 1.5;
image_alpha = 0;

alarm[0] = 60; //Every time a new ghost spawns, wait 60 steps before moving.

target_y = obj_visitor_wait.y;

function set_show_order() {
	show_order_timer = show_order_timer_max;
}

function set_show_result() {
	show_result_timer = show_result_timer_max;
}

function complete_transaction(potion) {
	if (order.name != potion.name) {
		tip = 1;
		order_correct = false;
		print("HOW DARE YOU! ", "Ordered: ", order.name, ". Gave: ", potion.name);
		audio_play_sound(choose(snd_ghostSad1, snd_ghostSad2), 5, false, 0.7);
	} else {
		print("YIPPEEEE! ", "Ordered: ", order.name, ". Gave: ", potion.name);
		order_correct = true;
		audio_play_sound(
			choose(snd_ghostHappy1, snd_ghostHappy2, snd_ghostHappy3),
			5,
			false,
			0.7
		);
		obj_game_manager.get_paid(self);
	}
	set_show_result();
	order_complete = true;
}
