current_page = 0;
potions_length = array_length(obj_game_manager.potions);
page_max = round(potions_length / 2);
font_color = make_colour_rgb(52, 52, 52);

function next_page() {
	current_page++;
	var snd_pageturn = choose(snd_pageturn1, snd_pageturn2, snd_pageturn3, snd_pageturn4);
	audio_play_sound(snd_pageturn, 5, false, 0.3);
}

function previous_page() {
	current_page--;
	var snd_pageturn = choose(snd_pageturn1, snd_pageturn2, snd_pageturn3, snd_pageturn4);
	audio_play_sound(snd_pageturn, 5, false, 0.3);
}

function draw_page() {
	draw_set_halign(textalign_center);
	draw_set_color(font_color);
	draw_set_font(fnt_book);
	if (current_page == 0) {
		draw_title_page();
		// index?
	} else {
		var potion_index = current_page * 2 - 1;
		draw_potion_page(
			obj_page_title_1.x,
			obj_page_title_1.y,
			obj_page_content_1.x,
			obj_page_content_1.y,
			potion_index
		);
		var potion_index = current_page * 2;
		draw_potion_page(
			obj_page_title_2.x,
			obj_page_title_2.y,
			obj_page_content_2.x,
			obj_page_content_2.y,
			potion_index
		);
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

function draw_potion_page(title_x, title_y, content_x, content_y, potion_index) {
	// Check invalid index
    if (potion_index < 0 || potion_index > potions_length - 1) {
		return;
	}
	var potion = obj_game_manager.potions[potion_index];

	// Title and description
	draw_text_transformed(title_x, title_y, potion.name, 2, 2, 0);
	draw_text_ext(content_x, content_y, potion.description, 15, 175);

	// Ingredients
	var x_offset = -65;
	var y_offset = -60;
	for (var i = 0; i < array_length(potion.recipe); i++) {
		var ingredient_index = potion.recipe[i];
		var ingredient = obj_game_manager.ingredients_struct[ingredient_index];

		// Sprite
		var ingredient_sprite = ingredient.sprite_index;
		draw_sprite(ingredient_sprite, 0, content_x + x_offset, content_y + y_offset);

		// Name
		draw_text(content_x, content_y + y_offset, ingredient.name);
		y_offset += 35;
	}
}
