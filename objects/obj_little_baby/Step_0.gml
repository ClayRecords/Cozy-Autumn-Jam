is_moving = false

if (instance_exists(obj_player)) {
    if distance_to_object(obj_player) > 10 {
        is_moving = true
    }
    else {
        is_moving = false
    }


}

if (is_moving) {
    move_towards_point(obj_player.x, obj_player.y, 2)
} else {
    speed = 0
}

x_difference = obj_little_baby.x - obj_player.x
y_difference = obj_little_baby.y - obj_player.y

if (is_moving) {
	if (x_difference < 0 && x_difference > y_difference) {
		sprite_index = little_baby_front;
	} else if (x_difference > 0 && x_difference > y_difference) {
		sprite_index = little_baby_left_walking;
	} else if (y_difference > 0 ) {
		sprite_index = little_baby_back;
	} else if (y_difference < 0 ) {
		sprite_index = little_baby_right_walking;
	}
} else {
	sprite_index = little_baby_front
}