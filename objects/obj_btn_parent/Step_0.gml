hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;
}

if (mouse_check_button_released(mb_left)) {
	clicked = false;

	if (hovering) {
		audio_play_sound(choose(snd_menuclick1, snd_menuclick2), 1, false, 0.3);
		activate_button();
	}
}
