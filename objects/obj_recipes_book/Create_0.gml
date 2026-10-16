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
		draw_potion_page();
	}

	draw_set_halign(textalign_left);
	draw_set_color(c_white);
	draw_set_font(-1);
}

function draw_title_page() {
	var title = "Recipes";
    draw_text_good(obj_page_title_1.x, obj_page_title_1.y, title, 0.75, 200);
	
    var text= "Potions, concoctions, elixirs, draughts, tinctures, and infusions!"
    + "\n\nMy customers are going to love these magical brews!"
    + "\n\nI need to follow my recipes exactly to avoid dangerous side effects. Or worse, a dissatisfied customer!";
    draw_text_good(obj_page_content_1.x, obj_page_content_1.y, text, .3, 200);
}

function draw_potion_page() {
	// Check invalid index
	var potion_index = current_page - 1;
	if (potion_index < 0 || potion_index > potions_length - 1) {
		return;
	}
	var potion = obj_game_manager.potions[potion_index];

	var title_1 = obj_page_title_1;
	var content_1 = obj_page_content_1;
	var title_2 = obj_page_title_2;
	var content_2 = obj_page_content_2;

	// Potion title, description, and sprite
	draw_text_good(title_1.x, title_1.y, potion.name, .5, 150);
	draw_text_good(title_1.x, title_1.y + 50, potion.description, .3, 200);
	var potion_sprite = potion.sprite_index;
	draw_sprite_ext(potion_sprite, 0, content_1.x, content_1.y + 30, 3, 3, 0, c_white, 1);

	// Ingredients
	draw_text_good(title_2.x, title_2.y, "Recipe", 0.5, 150);
	var y_offset = -75;
	for (var i = 0; i < array_length(potion.recipe); i++) {
		var ingredient_index = potion.recipe[i];
		var ingredient = obj_game_manager.ingredients_struct[ingredient_index];

		// Sprite
		var ingredient_sprite = ingredient.sprite_index;
		draw_sprite(ingredient_sprite, 0, content_2.x - 65, content_2.y + y_offset);

		// Name
		draw_text_good(content_2.x, content_2.y + y_offset, ingredient.name, 0.3, 200);
		y_offset += 35;
	}
}
