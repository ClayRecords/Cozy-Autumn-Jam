is_book_open = false

pause_surface = -1;
pause_surface_buffer = -1;

book_menu = -1;

resolution_w = room_width;
resolution_h = room_height;

book_x_pos = room_width / 2
book_y_pos = room_height / 2

book_width = sprite_get_width(book)
book_height = sprite_get_height(book)
sprite_set_offset(book, book_width / 2, book_height / 2)


function open_book() {
	is_book_open = true;
}

function close_book() {
	is_book_open = false;
    cleanup()
}


function cleanup() {
    if (instance_exists(obj_close_recipe_book_btn)) {
        instance_destroy((obj_close_recipe_book_btn))
    }
}