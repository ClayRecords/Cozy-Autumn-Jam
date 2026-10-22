// Inherit the parent event
event_inherited();

do_sparkle = false;

button_text = "undefined upgrade";
description = "";

level = 0;
level_max = 0;

cost = 0;
cost_increase = 0;

function activate_button() {
	// Attempt purchase upgrade
	if (level < level_max) {
		if (obj_game_manager.money >= cost) {
			self.do_upgrade();
			level++;
			obj_game_manager.money -= cost;
			cost += cost_increase;
			audio_play_sound(snd_upgrade, 5, false, 0.5);
			return true;
		}
	}

	// Failures
	audio_play_sound(snd_error, 5, false, 0.4);
	return false;
}

function do_upgrade() {}
