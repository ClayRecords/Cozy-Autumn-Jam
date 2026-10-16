// Inherit the parent event
event_inherited();

do_sparkle = false;

var upgrade_type = undefined;
button_text = "undefined upgrade";
description = "";

level = 0;
level_max = 0;

cost = 0;
cost_increase = 0;

function activate_button() {
	obj_upgrade_manager.purchase_upgrade(self);
}

function do_upgrade() {}
