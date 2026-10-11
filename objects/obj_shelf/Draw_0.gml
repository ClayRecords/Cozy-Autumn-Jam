draw_self();

// Draw item on shelf
if (ingredient_type != undefined) {
	var sprite = object_get_sprite(ingredient_type);
	if (sprite_exists(sprite)) {
		draw_sprite(sprite, 0, x, y);
	}
}
