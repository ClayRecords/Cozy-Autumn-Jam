// Inherit the parent event
event_inherited();

function activate_button() {
	obj_recipe_book_manager.close_book();
}

clicked = false
button_text = ""
close_button_width = sprite_get_width(close)
close_button_height = sprite_get_height(close)

//sprite_set_offset(close, close_button_width / 2, close_button_height / 2)