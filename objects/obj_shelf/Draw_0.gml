draw_self();

// Draw item on shelf
if (ingredient_type != undefined) {
	var ingredient_sprite = object_get_sprite(ingredient_type);
	if (sprite_exists(ingredient_sprite)) {
        //right side up
		draw_sprite_ext(ingredient_sprite, 0, x, y, 1, 1, 0, c_white, 1);
        //or rotated with shelf?
        //draw_sprite_ext(ingredient_sprite, 0, x, y, 1, 1, image_angle + 180, c_white, 1);
	}
}
