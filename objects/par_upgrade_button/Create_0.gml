// Inherit the parent event
event_inherited();

var upgrade_type = undefined;
button_text="undefined upgrade";

function activate_button() {
    obj_upgrade_manager.purchase_upgrade(upgrade_type);
}