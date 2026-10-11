event_inherited();

menu_sequence_ref = seq_cauldron;

function interact() {
	obj_cauldron.is_brewing = true;

	create_menu();
}

function leave_interact_area() {
	obj_cauldron.is_brewing = false;
	destroy_menu();
}
