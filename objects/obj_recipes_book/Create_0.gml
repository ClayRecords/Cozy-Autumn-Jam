current_page = 0;
potions_length = array_length(obj_game_manager.potions);
page_max = round(potions_length / 2);
font_color = make_colour_rgb(52, 52, 52);

function next_page() {
	current_page++;
}

function previous_page() {
	current_page--;
}

function draw_page() {
	draw_set_halign(textalign_center);
	draw_set_color(font_color);
	draw_set_font(fnt_book);
	switch (current_page) {
		case 0:
			draw_title_page();
			break;
	}

	draw_set_halign(textalign_left);
	draw_set_color(c_white);
	draw_set_font(-1);
}

function draw_title_page() {
	var title = "Recipes";
	draw_text_transformed(obj_page_title_1.x, obj_page_title_1.y, title, 2, 2, 0);
	var text =
		"Potions, concoctions, elixirs, draughts, tinctures, and infusions!"
		+ "\n\nCombine ingredients in a cauldron to prepare something magical."
		+ "\n\nBut make sure you follow the recipe exactly to avoid dangerous side effects! Or worse, a dissatisfied customer!";
	draw_text_ext(obj_page_content_1.x, obj_page_content_1.y, text, 15, 175);
}
