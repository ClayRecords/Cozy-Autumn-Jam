// Inherit the parent event
event_inherited();

button_text = "";

function activate_button() {
	obj_cauldron.flush();
	obj_player.potion_held = undefined;
}

do_sparkle = false;
