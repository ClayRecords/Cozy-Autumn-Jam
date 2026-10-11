if (is_book_open) {
    instance_create_layer(
    resolution_w - (book_width),
    resolution_h - (book_height),
    "Instances",
    book
    );
    
    instance_create_layer(
    resolution_w - (book_width),
    resolution_h - (book_height),
    "Instances",
    obj_close_book_btn
    );
    
    instance_create_layer(
    resolution_w - (50),
    resolution_h - (book_height),
    "Instances",
    obj_next_page_btn
    );
    
    instance_create_layer(
    resolution_w - (100),
    resolution_h - (book_height),
    "Instances",
    obj_previous_page_btn
    );
}