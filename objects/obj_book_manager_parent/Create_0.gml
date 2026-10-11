book = ""
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

pages = ["frog guts", "rat butts", "goblin nuts"]
current_page_index = 0
current_page = pages[current_page_index]


function open_book() {
	is_book_open = true;
}

function close_book() {
	is_book_open = false;
    cleanup()
}

function go_to_next_page() {
    current_page_index = (current_page_index + 1)
    current_page = pages[current_page_index]
    check_book_page()
}

function go_to_previous_page() {
    current_page_index = (current_page_index - 1)
    current_page = pages[current_page_index]
    check_book_page()
}



function cleanup() {
    if (instance_exists(obj_close_book_btn)) {
        instance_destroy((obj_close_book_btn))
    }
}

function check_book_page() {
   print("current page", current_page)
}