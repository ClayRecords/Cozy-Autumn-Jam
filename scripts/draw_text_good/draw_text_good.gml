function draw_text_good(x, y, text, scale, max_width){
    // Because theirs is bad
    var line_sep = font_get_size(draw_get_font()) * 0.9;
    max_width = max_width / scale;
    draw_text_ext_transformed(x, y, text, line_sep, max_width, scale, scale, 0);
}