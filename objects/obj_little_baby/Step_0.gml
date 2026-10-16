is_moving = false;

var move_speed = obj_player.speed_multi;

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) > 10) {
		is_moving = true;
	} else {
		is_moving = false;
	}
}

if (is_moving) {
	move_towards_point(obj_player.x, obj_player.y, move_speed-1);
} else {
	speed = 0;
}

x_difference = obj_little_baby.x - obj_player.x;
y_difference = obj_little_baby.y - obj_player.y;

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
} else {
	sprite_index = little_baby_front;
}
