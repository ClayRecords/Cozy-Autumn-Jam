
if (place_meeting(x, y, obj_player)) {
	//not in register zone
	if (is_in_register_zone) {
		is_in_register_zone = false;
		// trigger the maze build
		maze_build();
        print("You've entered the maze")
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
