speed_level = 0;
speed_level_max = 3;
speed_cost = 3;
speed_cost_increase = 3;

recipes_level = 0;
recipes_level_max =
	array_length(obj_game_manager.potions) - obj_game_manager.known_potions_start_count;
recipes_cost = 3;
recipes_cost_increase = 5;

function purchase_upgrade(upgrade) {
	if (upgrade.level < upgrade.level_max) {
		if (obj_game_manager.money >= upgrade.cost) {
			upgrade.do_upgrade();
			upgrade.level++;
			obj_game_manager.money -= upgrade.cost;
			upgrade.cost += upgrade.cost_increase;
			audio_play_sound(snd_upgrade, 5, false, 0.5);
			return true;
		}
	}

	audio_play_sound(snd_error, 5, false, 0.4);
	return false;
}
