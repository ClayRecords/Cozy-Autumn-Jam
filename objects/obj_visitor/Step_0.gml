if (is_entering) {
	// Go to register, nothing else
	speed = movement_speed;
	direction = 90;
	if (y <= target_y) {
		is_entering = false;
		speed = 0;
	}
	return;
}

if (order_complete) {
	speed = movement_speed;
	direction = 270;
	image_alpha = lerp(image_alpha, 0, 0.1);
} else {
	tip = lerp(tip, 1, 0.0005);
}

if (y >= room_height) {
	instance_destroy();
}
