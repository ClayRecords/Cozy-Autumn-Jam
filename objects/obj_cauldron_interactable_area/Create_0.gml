event_inherited();

sequence = undefined;

function interact() {
	obj_cauldron.is_brewing = !obj_cauldron.is_brewing;

	if (!layer_sequence_exists("menu_sequence", sequence)) {
		sequence = layer_sequence_create(
			"menu_sequence",
			display_get_gui_width() / 2,
			display_get_gui_height() / 2,
			seq_cauldron
		);
	}
}

function leave_interact_area() {
	destroy_menu();
}

function destroy_menu() {
	if (layer_sequence_exists("menu_sequence", sequence)) {
		layer_sequence_destroy(sequence);
	}
}
