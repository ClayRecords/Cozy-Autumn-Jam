// Get inputs
var _horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Normalize speed
var normalized_x = 0;
var normalized_y = 0;
var vector_length = point_distance(0, 0, _horizontal, _vertical);
if (vector_length > 0) {
	normalized_x = _horizontal / vector_length * speed_multi;
	normalized_y = _vertical / vector_length * speed_multi;
}

// Move
move_and_collide(normalized_x, normalized_y, collide_objs);

// Change sprite for movement direction
is_moving = false;
if (_horizontal != 0 || _vertical != 0) {
	is_moving = true;

	if (_horizontal > 0) {
		sprite_index = player_sprite_right;
	} else if (_horizontal < 0) {
		sprite_index = player_sprite_left;
	} else if (_vertical < 0) {
		sprite_index = player_sprite_up;
	} else if (_vertical > 0) {
		sprite_index = player_sprite_down;
	}
} else {
	if (sprite_index == player_sprite_up) {
		sprite_index = player_sprite_up_still;
	} else if (sprite_index == player_sprite_down) {
		sprite_index = player_sprite_down_still;
	} else if (sprite_index == player_sprite_right) {
		sprite_index = player_sprite_right_still;
	} else if (sprite_index == player_sprite_left) {
		sprite_index = player_sprite_left_still;
	}
}

// Get nearest active interactable
previous_nearest_interactable = nearest_interactable;
nearest_interactable = undefined;
var nearby_interactables = ds_list_create();
var _interactable_num = instance_place_list(
	x,
	y,
	obj_interactable_area,
	nearby_interactables,
	true
);
for (var i = 0; i < ds_list_size(nearby_interactables); i++) {
	var near_interactable = nearby_interactables[| i];
	if (near_interactable.active) {
		nearest_interactable = near_interactable;
		break;
	}
}
ds_list_destroy(nearby_interactables);

if (previous_nearest_interactable != undefined && previous_nearest_interactable != nearest_interactable) {
	previous_nearest_interactable.leave_interact_area();
}
