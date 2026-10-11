draw_self();

// Floating E
if (nearest_interactable != undefined) {
	var frame_duration = 250;
	var frame_count = sprite_get_number(spr_prompt_interact);
	var subimg = (current_time div frame_duration) % frame_count;
	draw_sprite(spr_prompt_interact, subimg, x, y - 50);
}

if (
	potion_held
	&& (sprite_index != player_sprite_up && sprite_index != player_sprite_up_still)
) {
	potion_sprite = potion_held.sprite_index;
	x_change = -10;
	if (sprite_index == player_sprite_left || sprite_index == player_sprite_left_still) {
		x_change -= 12;
	} else if (
		sprite_index == player_sprite_right
		|| sprite_index == player_sprite_right_still
	) {
		x_change += 12;
	}
	draw_sprite_ext(
		potion_held.sprite_index,
		-1,
		x + x_change,
		y - 4,
		0.3,
		0.3,
		0,
		c_white,
		1
	);
}
