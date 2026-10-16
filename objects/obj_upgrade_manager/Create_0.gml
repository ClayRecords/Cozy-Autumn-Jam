speed_level = 0;
speed_level_max = 3;
speed_cost = 3;
speed_cost_increase = 3;

inventory_level = 0;
inventory_level_max = 7; //starts at 0 so max is 8 slots. Consider starting at 2 though?
inventory_cost = 3;
inventory_cost_increase = 3;

recipes_level = 0;
recipes_level_max =
	array_length(obj_game_manager.potions) - obj_game_manager.known_potions_start_count;
recipes_cost = 3;
recipes_cost_increase = 5;

function purchase_upgrade(upgrade_type) {
	var cost = 0;
	var money = obj_game_manager.money;
	var purchase_successful = false;

	switch (upgrade_type) {
		case "speed":
			if (speed_level >= speed_level_max) {
				purchase_successful = false;
				break;
			}

			cost = speed_cost * (speed_level + 1);
			if (money >= cost) {
				obj_player.speed_multi += 0.5;
				speed_level++;
				purchase_successful = true;
			}
			break;

		case "inventory":
			if (inventory_level >= inventory_level_max) {
				purchase_successful = false;
				break;
			}

			cost = inventory_cost * (inventory_level + 1);
			if (money >= cost) {
				obj_inventory.inventory_size += 1;
				inventory_level++;
				purchase_successful = true;
			}

			break;

		default:
			return false;
	}

	if (purchase_successful) {
		obj_game_manager.money -= cost;
		audio_play_sound(snd_upgrade, 5, false, 0.5);
		return true;
	} else {
		audio_play_sound(snd_error, 5, false, 0.4);
		return false;
	}
}
