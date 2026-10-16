if (menu_opening) {
	seq_alpha += open_speed;
	if (seq_alpha >= 1) {
		seq_alpha = 1;
		menu_opening = false; //done opening
	}
	if (layer_sequence_exists("menu_sequence", menu_sequence)) {
		layer_sequence_alpha(menu_sequence, seq_alpha);
	}
}

if (menu_closing) {
	seq_alpha -= close_speed;
	if (layer_sequence_exists("menu_sequence", menu_sequence)) {
		layer_sequence_alpha(menu_sequence, seq_alpha);
		if (seq_alpha <= 0) {
			seq_alpha = 0;
			menu_closing = false; //done closing
			layer_sequence_destroy(menu_sequence);
		}
	}
}
