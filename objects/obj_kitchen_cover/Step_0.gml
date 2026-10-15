if (place_meeting(x, y, obj_player)) {
	//NOT in the maze
	if (is_in_maze) {
		is_in_maze = false;
        // randomize kitchen items
        print("You've entered the kitchen")
	}
	if (image_alpha != 0) {
		uncover();
	}
    
} else {
	is_in_maze = true;
	if (image_alpha != 1) {
		cover_up();
	}
}
