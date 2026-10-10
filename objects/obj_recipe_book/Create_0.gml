book_close_menu = instance_create_layer(
    0,
    0,
    "Instances",
    obj_close_recipe_book_btn
);

function cleanup() {

	// Delete menu
	if (instance_exists(obj_close_recipe_book_btn)) {
		instance_destroy(obj_close_recipe_book_btn);
	}
    
}