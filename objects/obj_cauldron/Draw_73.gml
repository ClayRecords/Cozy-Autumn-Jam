// draw brew result pop up

if (show_brew_timer > 0) {
	show_brew_timer--;

	// Do some fading
	var alpha = 1;
	var fade_out_threshold = show_brew_timer_max * 0.1;
	var fade_in_threshold = show_brew_timer_max - fade_out_threshold;
	if (show_brew_timer <= fade_out_threshold) {
		alpha = show_brew_timer / fade_out_threshold;
	} else if (show_brew_timer >= fade_in_threshold) {
		alpha =
			1
			- (show_brew_timer - fade_in_threshold)
				/ (show_brew_timer_max - fade_in_threshold);
	}

	// Show order bubble and order
	var spr_x = obj_storage_cover.x;
	var spr_y = obj_storage_cover.y;

	var potion_sprite = last_brewed.sprite_index;
	draw_sprite_ext(spr_brew_popup, 0, spr_x, spr_y, 1, 1, 0, c_white, alpha);
	draw_sprite_ext(potion_sprite, 0, spr_x, spr_y, 5, 5, 0, c_white, alpha);
}
