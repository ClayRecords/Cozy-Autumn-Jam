function cover_up() {
	image_alpha += cover_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
	}
}

function uncover() {
	image_alpha -= uncover_speed;
	if (image_alpha <= 0) {
		image_alpha = 0;
		is_cover_down = true;
		is_cover_up = false;
	}
}

if (place_meeting(x, y, obj_player)) {
	//not in register zone
	if (is_in_register_zone) {
		is_in_register_zone = false;
		// trigger the maze build
		maze_build();
	}
	if (image_alpha != 0) {
		uncover();
	}
} else {
	is_in_register_zone = true;
	if (image_alpha != 1) {
		cover_up();
	}
}
