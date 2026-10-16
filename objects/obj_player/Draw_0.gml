draw_self();

// Hold potion
var looking_up =
	sprite_index == player_sprite_up
	|| sprite_index == player_sprite_up_still;
var looking_right =
	sprite_index == player_sprite_right
	|| sprite_index == player_sprite_right_still;
var looking_down =
	sprite_index == player_sprite_down
	|| sprite_index == player_sprite_down_still;
var looking_left =
	sprite_index == player_sprite_left
	|| sprite_index == player_sprite_left_still;
if (potion_held && !looking_up) {
	var potion_sprite = potion_held.sprite_index;
	var x_change = -10;
	if (looking_left) {
		x_change = -15;
	} else if (looking_right) {
		x_change = 15;
	}
	draw_sprite_ext(
		potion_held.sprite_index,
		-1,
		x + x_change,
		y - 4,
		0.4,
		0.4,
		0,
		c_white,
		1
	);
}
