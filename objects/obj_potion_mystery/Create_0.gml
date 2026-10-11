// Inherit the parent event
event_inherited();

name = "Mystery"
cost = 10

all_ingredients = obj_game_manager.ingredient_indexes;

function evaluate_recipe(current_ingredients) {
    // Check if current ingredients match all ingredients
    ingredients_count = array_length(all_ingredients)

	if (array_length(current_ingredients) != ingredients_count) {
		return false;
	}

    // Search the current ingredients for each ingredient that exists
	for (i = 0; i < ingredients_count; i++) {
        ingredient = all_ingredients[i]
        
        ingredient_found = false;
        for (j = 0; j < ingredients_count; j++) {
            if (current_ingredients[j] == ingredient) {
                ingredient_found = true;
                break;
            }
        }
        
        // If any ingredient is missing, you haven't made a mystery potion!
		if (!ingredient_found) {
			return false;
		}
	}
    
	return true;
}