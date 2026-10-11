// Inherit the parent event
event_inherited();


function activate_button() {
	obj_recipe_book_manager.go_to_next_page();
    print(obj_recipe_book_manager.current_page_index)
}



clicked = false
next_page_button_width = sprite_get_width(next_page)
next_page_button_height = sprite_get_height(next_page)

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;
}

if (mouse_check_button_released(mb_left)) {
	clicked = false;

	if (hovering) {
		//audio_play_sound(snd_button, 1, false);
		activate_button();

	}
}