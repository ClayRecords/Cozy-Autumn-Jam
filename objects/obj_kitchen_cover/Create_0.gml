cover_speed = 0.08;
uncover_speed = 0.12;

kitchen_cover_sequence = undefined;

is_in_maze = false;

function create_menu() {
	if (!layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
        print("creating sequence")
		kitchen_cover_sequence = layer_sequence_create(
			"menu_sequence",
			obj_kitchen_cover.x,
			obj_kitchen_cover.y,
			seq_kitchen_cover
		);
	}
}

function destroy_menu() {
    print("attempting to destroy")
	if (layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
        print("attempting to destroy 2")
		layer_sequence_destroy(kitchen_cover_sequence);
        print("attempting to destroy 3")
	}
}

function cover_up() {
	image_alpha += cover_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
        create_menu()
	}
}

function uncover() {
	image_alpha -= uncover_speed;
	if (image_alpha <= 0) {
		image_alpha = 0;
		is_cover_down = true;
		is_cover_up = false;
        destroy_menu()
	}
}