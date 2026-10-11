if (!is_paused) {
	exit;
}
if (!surface_exists(pause_surface)) {
	pause_surface = surface_create(resolution_w, resolution_h);
	buffer_set_surface(pause_surface_buffer, pause_surface, 0);
}

draw_surface_stretched(pause_surface, 0, 0, room_width, room_height);

// Draw blackened background
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);
draw_set_color(c_white);
