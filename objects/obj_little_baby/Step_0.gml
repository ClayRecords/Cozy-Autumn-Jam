is_moving = false;
move_speed = parent.move_speed;

if (instance_exists(parent)) {
	if (distance_to_object(parent) > 10) {
		is_moving = true;
	} else {
		is_moving = false;
	}
}

if (is_moving) {
    not_moving_count = 0
	move_towards_point(parent.x, parent.y, move_speed - 1);
} else {
	speed = 0;
    not_moving_count++
}

var x_difference = x - parent.x;
var y_difference = y - parent.y;

if (is_moving) {
	if (abs(x_difference) < 20) {
		if (y_difference < 0) {
			sprite_index = little_baby_front;
		} else {
			sprite_index = little_baby_back;
		}
	} else if (x_difference > 0) {
		sprite_index = little_baby_left_walking;
	} else {
		sprite_index = little_baby_right_walking;
	}
} else if (not_moving_count > 15) {
	sprite_index = little_baby_front;
}
