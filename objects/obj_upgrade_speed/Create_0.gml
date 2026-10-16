// Inherit the parent event
event_inherited();

upgrade_type = "speed";
button_text = "Upgrade Speed";
description = "Get some trainers and walk faster.";

level = 0;
level_max = 3;

cost = 3;
cost_increase = 3;

function do_upgrade() {
	obj_player.speed_multi += 0.5;
}
