name = "";
recipe = [];
cost = 0;

function evaluate_recipe(current_ingredients) {
	// Check if current ingredients match potion ingredients
	if (array_length(recipe) != array_length(current_ingredients)) {
		return false;
	}
	for (i = 0; i < array_length(current_ingredients); i++) {
		// Ingredient order matters!
		if (current_ingredients[i] != recipe[i]) {
			return false;
		}
	}
	return true;
}
