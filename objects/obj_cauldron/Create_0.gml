// What's cookin' in the pot (potatoes, bat wings, fat kids, etc)
current_ingredients = [];
current_potion = obj_potion_foul;

potions = obj_game_manager.potions;

is_brewing = false;

function add_ingredient(ingredient) {
	// Add something to the pot, check for resulting potion
	array_push(current_ingredients, ingredient);
	evaluate_recipes();
	audio_play_sound(
		choose(snd_bubble1, snd_bubble2, snd_bubble3, snd_bubble4),
		10,
		false,
		0.3
	);
}

function evaluate_recipes() {
	// Check all potions against current ingredients
	current_potion = obj_potion_foul;
	if (array_length(current_ingredients) == 0) {
		return;
	}

	for (var i = 0; i < array_length(potions); i++) {
		var potion = potions[i];
		if (potion.evaluate_recipe(current_ingredients)) {
			current_potion = potion;
		}
	}
}

function brew() {
	// give player potion, remove all ingredients
	obj_player.potion_held = current_potion;
	current_ingredients = [];
}

function flush() {
	// Remove all ingredients, reset recipe
	current_ingredients = [];
	evaluate_recipes();
}
