is_book_open = false

pause_surface = -1;
pause_surface_buffer = -1;

book_menu = -1;

function open_book() {
	is_book_open = true;
    

	resolution_w = room_width;
	resolution_h = room_height;

	// Add book layer
	x_pos = resolution_w / 2;
}

function close_book() {
	is_book_open = false;
	cleanup();
}

function cleanup() {
	// Delete menu
	if (instance_exists(book_menu)) {
		instance_destroy(book_menu);
	}
}

