if (is_book_open) {
    draw_sprite(book, 1, book_x_pos, book_y_pos)
    instance_create_layer(
    resolution_w - book_width,
    resolution_h - book_height,
    "Instances",
    obj_close_recipe_book_btn
);
}