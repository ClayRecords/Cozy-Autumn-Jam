// order: list of potions / one potion
// tip: (correctness of potions + time)

order = undefined;

order_complete = false;
is_leaving = false;
is_entering = true;
movement_speed = 5;

tip = 1.5;

function complete_transaction(potion){
    if(order != potion){
        tip = 1;
        print("HOW DARE YOU ! ", "Ordered: ",order.name, "Gave : ", potion.name)
    }else{
        print("YIPPEEEE ! ", "Ordered: ",order.name, "Gave : ", potion.name)
    }
    obj_player.potion_held = undefined;
    order_complete = true;
}
function start_enter() {
	target_x = 75;
	target_y = 270;

	audio_play_sound(
		choose(snd_doorbellring1, snd_doorbellring2, snd_doorbellring3),
		10,
		false,
		0.1
	);
}

if (is_entering) {
	start_enter();
} else {
	tip = lerp(tip, 1, 0.0005);
}
