event_inherited();

sequence = undefined;

function interact() {
	sequence = layer_sequence_create(
		"menu_sequence",
		display_get_gui_width() / 2,
		display_get_gui_height() / 2,
		seq_cauldron
	);
}
