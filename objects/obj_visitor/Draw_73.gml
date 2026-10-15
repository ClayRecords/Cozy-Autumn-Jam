if (show_order_timer > 0) {
	show_order_timer--;

	// Do some fading
	var alpha = 1;
	var fade_out_threshold = show_order_timer_max * 0.1;
	var fade_in_threshold = show_order_timer_max - fade_out_threshold;
	if (show_order_timer <= fade_out_threshold) {
		alpha = show_order_timer / fade_out_threshold;
	} else if (show_order_timer >= fade_in_threshold) {
		alpha =
			1
			- (show_order_timer - fade_in_threshold)
				/ (show_order_timer_max - fade_in_threshold);
	}

	// Show order bubble and order
	var spr_x = x + 48;
	var spr_y = y - 40;

	// animation
	var frame_duration = 250;
	var frame_count = sprite_get_number(spr_textBubble);
	var subimg = (current_time div frame_duration) % frame_count;

	var potion_sprite = order.sprite_index;
	draw_sprite_ext(spr_textBubble, subimg, spr_x, spr_y, 1, 1, 0, c_white, alpha);
	draw_sprite_ext(potion_sprite, 0, spr_x, spr_y - 5, 1, 1, 0, c_white, alpha);
}

if (show_result_timer > 0) {
	show_result_timer--;

	// Do some fading
	var alpha = 1;
	var fade_out_threshold = show_result_timer_max * 0.1;
	var fade_in_threshold = show_result_timer_max - fade_out_threshold;
	if (show_result_timer <= fade_out_threshold) {
		alpha = show_result_timer / fade_out_threshold;
	} else if (show_result_timer >= fade_in_threshold) {
		alpha =
			1
			- (show_result_timer - fade_in_threshold)
				/ (show_result_timer_max - fade_in_threshold);
	}

	// Show bubble and result
    
    var result_sprite = spr_reaction_happy;
    if (order_correct = false){
        result_sprite = spr_reaction_sad;
    }
    
	var spr_x = x + 48;
	var spr_y = y - 40;

	// animation
	var frame_duration = 250;
	var bubble_frame_count = sprite_get_number(spr_textBubble);
	var bubble_subimg = (current_time div frame_duration) % bubble_frame_count;
  
    draw_sprite_ext(spr_textBubble, bubble_subimg, spr_x, spr_y, 1, 1, 0, c_white, alpha);
	draw_sprite_ext(result_sprite, 0, spr_x, spr_y - 5, 1, 1, 0, c_white, alpha);
}
