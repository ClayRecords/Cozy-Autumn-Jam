function draw_text_good(x, y, text, scale, max_width) {
	// Because theirs is bad
	var font = draw_get_font();
	var line_sep = 20;
	if (font != -1) {
		line_sep = font_get_size(font);
	}
	max_width = max_width / scale;
	draw_text_ext_transformed(x, y, text, line_sep, max_width, scale, scale, 0);
}
