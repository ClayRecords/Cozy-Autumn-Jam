cover_speed = 0.08;
uncover_speed = 0.12;

kitchen_cover_sequence = undefined;

is_in_maze = false;

function create_menu() {
	if (!layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
		print("creating sequence");
		kitchen_cover_sequence = layer_sequence_create(
			"menu_sequence",
			obj_kitchen_cover.x,
			obj_kitchen_cover.y,
			seq_kitchen_cover
		);
		var _inv = instance_find(obj_inventory, 0);
		if (_inv != noone) {
			_inv.refresh_inventory_display();
		}
	}
}

function destroy_menu() {
	if (layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
		layer_sequence_destroy(kitchen_cover_sequence);
	}
}

function cover_up() {
    create_menu();
	image_alpha += cover_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
	}
    if (layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
    layer_sequence_alpha(kitchen_cover_sequence,image_alpha);
    }
}

function uncover() {
	image_alpha -= uncover_speed;
	if (image_alpha <= 0) {
		image_alpha = 0;
		destroy_menu();
	}
    if (layer_sequence_exists("menu_sequence", kitchen_cover_sequence)) {
    layer_sequence_alpha(kitchen_cover_sequence,image_alpha);
    }
}
