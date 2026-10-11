// Floating E
if (nearest_interactable != undefined) {
	var frame_duration = 250;
	var frame_count = sprite_get_number(spr_prompt_interact);
	var subimg = (current_time div frame_duration) % frame_count;
	draw_sprite(spr_prompt_interact, subimg, x, y - 50);
}
