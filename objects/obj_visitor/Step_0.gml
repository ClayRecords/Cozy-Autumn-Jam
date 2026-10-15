if (is_entering) {
	// Go to register, nothing else
	direction = 90;
    image_alpha = lerp(image_alpha, 1, 0.05);
	if (y <= target_y) {
		is_entering = false;
		speed = 0;
	}
	return;
}

if (order_complete) {
	// Leave
	speed = movement_speed;
	direction = 270;
	image_alpha = lerp(image_alpha, 0.5, 0.05);
} else {
	// Less tip
	tip = lerp(tip, 1, 0.0005);
}

// Out of room, destroy
if (y >= room_height) {
	instance_destroy();
}
