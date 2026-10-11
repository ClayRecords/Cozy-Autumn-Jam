is_paused = false;
pause_surface = -1;
pause_surface_buffer = -1;

pause_seq = -1;

function pause() {
	is_paused = true;

	// Deactivate everything except pause manager
	instance_deactivate_all(true);

	resolution_w = room_width;
	resolution_h = room_height;
    
    if !layer_exists("PauseMenu") {
        layer_create(depth - 1, "PauseMenu");
    }
    
    pause_seq = layer_sequence_create("PauseMenu", 0, 0, seq_pause);

	// Capture background
	pause_surface = surface_create(resolution_w, resolution_h);
	surface_set_target(pause_surface);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();

	// Back up surface to buffer
	if (buffer_exists(pause_surface_buffer)) {
		buffer_delete(pause_surface_buffer);
	}
	pause_surface_buffer = buffer_create(
		resolution_w * resolution_h * 4,
		buffer_fixed,
		1
	);
	buffer_get_surface(pause_surface_buffer, pause_surface, 0);
}

function unpause() {
	is_paused = false;
	instance_activate_all();
	cleanup();
}

function cleanup() {
	if (surface_exists(pause_surface)) {
		surface_free(pause_surface);
	}
	if (buffer_exists(pause_surface_buffer)) {
		buffer_delete(pause_surface_buffer);
	}
    if (pause_seq != -1 && layer_sequence_exists("PauseMenu", pause_seq)) {
        layer_sequence_destroy(pause_seq);
    }
    pause_seq = -1;
    
    instance_destroy(obj_sparkle);
}
