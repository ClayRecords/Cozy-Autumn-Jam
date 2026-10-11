event_inherited();

menu_sequence_ref = seq_cauldron

function interact() {
	obj_cauldron.is_brewing = !obj_cauldron.is_brewing;

	create_menu()
}

function leave_interact_area() {
	destroy_menu();
}
