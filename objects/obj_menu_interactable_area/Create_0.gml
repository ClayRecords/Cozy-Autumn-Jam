// Inherit the parent event
event_inherited();

menu_sequence_ref = undefined;
menu_sequence = undefined;

function interact() {
	create_menu();
}

function leave_interact_area() {
	destroy_menu();
}

function create_menu() {
	if (menu_sequence_ref == undefined) {
		throw "Menu must set sequence";
	}
	if (!layer_sequence_exists("menu_sequence", menu_sequence)) {
		menu_sequence = layer_sequence_create(
			"menu_sequence",
			display_get_gui_width() / 2,
			display_get_gui_height() / 2,
			menu_sequence_ref
		);
	}
}

function destroy_menu() {
	if (layer_sequence_exists("menu_sequence", menu_sequence)) {
		layer_sequence_destroy(menu_sequence);
	}
}
