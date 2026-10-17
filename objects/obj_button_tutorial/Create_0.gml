// Inherit the parent event
event_inherited();

button_text = "";

menu_sequence_ref = seq_tutorial; //the name of the sequence (EG seq_pause)
menu_sequence = undefined; //the id of this instance of the sequence

menu_opening = false;
menu_closing = false;

open_speed = 0.08;
close_speed = 0.12;
seq_alpha = 0;

in_tutorial = false;

function activate_button() {
	create_menu();
}

function create_menu() {
	menu_opening = true; //this makes the alpha fade in at the step event
	if (menu_sequence_ref == undefined) {
		throw "Menu must set sequence";
	}
	if (!layer_sequence_exists("menu_sequence", menu_sequence)) {
		//if menu doesn't exist, make it
		menu_sequence = layer_sequence_create(
			"menu_sequence",
			room_width / 2,
			room_height / 2,
			menu_sequence_ref
		);
	}
}

function destroy_menu() {
	menu_closing = true; //this makes the alpha fade out at the step event
}
