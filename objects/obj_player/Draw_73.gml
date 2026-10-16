// Floating E
if (nearest_interactable != undefined) {
	var target_y = y - 50;
	var draw_y = target_y + sine_between(current_time, 3000, -3, 3);
	draw_sprite(spr_prompt_interact, 0, x, draw_y);
}
