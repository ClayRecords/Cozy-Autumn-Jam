font_color = make_colour_rgb(52, 52, 52);

function draw_page() {
	draw_set_halign(textalign_center);
	draw_set_valign(fa_middle);
	draw_set_color(font_color);
	draw_set_font(fnt_default_large);

	var title = "How To Play";
	draw_text_good(room_width/3, 150, title, 0.75, 200);

    draw_set_halign(textalign_left);
	var text =
		"IDK just figure it out"
		+ "\n\nMy customers are going to love these magical brews!"
		+ "\n\nI need to follow my recipes exactly to avoid dangerous side effects. Or worse, a dissatisfied customer!";
	draw_text_good(240, 250, text, 0.3, 180);

	draw_set_halign(textalign_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fnt_default);
}