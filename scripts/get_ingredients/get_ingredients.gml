function get_ingredients() {
	var _ingredients = {};
	_ingredients.frog_breath = obj_ingredient_frog_breath
	_ingredients.bat_wool = obj_ingredient_bat_wool;

	return _ingredients;
}

function get_missing_ingredients(ingredients) {
	if (struct_names_count(ingredients) == 0) {
		return get_ingredients();
	}
	var missing = {};
	var keys = struct_get_names(ingredients);
	var len = struct_names_count(ingredients);
	for (var i = 0; i < len; i++) {
		var key = keys[i];
		if (!struct_exists(ingredients, key)) {
			missing[$ key] = variable_clone(ingredients[$ key]);
		}
	}

	return missing;
}
