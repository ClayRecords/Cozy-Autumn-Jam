font_color = make_colour_rgb(52, 52, 52);
draw_set_halign(textalign_center);
draw_set_color(font_color);
draw_set_font(fnt_default_large);

function draw_title_page() {
	var title = "Upgrades";
	draw_text_good(x, y, title, 0.75, 180);

	var text =
		"My small business is growing!"
		+ "\n\nAs I get gold from my customers, I can invest it in my potion shop."
		+ "\n\nI can diversify my product offerings, hire some huggable helpers, and make potion brewing more efficient.";
	draw_text_good(x, y + 120, text, 0.3, 180);
}

draw_title_page();

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_default);
