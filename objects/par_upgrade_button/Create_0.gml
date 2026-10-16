// Inherit the parent event
event_inherited();

do_sparkle = false;

var upgrade_type = undefined;
button_text = "undefined upgrade";
description = "";

function activate_button() {
	obj_upgrade_manager.purchase_upgrade(upgrade_type);
}
