if (active) {
    function handle_hover() {
	if (!do_sparkle) {
		return;
	}

	var _cx = (bbox_left + bbox_right) / 2;
	var _cy = (bbox_top + bbox_bottom) / 2;
	var _a = image_angle;
	var _dist = abs(sprite_width) / 2 + 4 + sprite_get_width(spr_sparkle) / 2;
	var _dx = lengthdir_x(_dist, _a);
	var _dy = lengthdir_y(_dist, _a);
	var _d = depth - 1;
	if (in_sequence && layer_exists("PauseMenu")) {
		_d = layer_get_depth("PauseMenu") - 1;
	}
	sparkle_r = instance_create_depth(_cx + _dx, _cy + _dy, _d, obj_sparkle);
	sparkle_r.image_angle = _a;
	sparkle_l = instance_create_depth(_cx - _dx, _cy - _dy, _d, obj_sparkle);
	sparkle_l.image_angle = _a;
}

function handle_not_hover() {
	if (instance_exists(sparkle_l)) {
		instance_destroy(sparkle_l);
	}
	if (instance_exists(sparkle_r)) {
		instance_destroy(sparkle_r);
	}
}

if (do_sparkle == true) {
	if (hovering && !was_hovering) {
		handle_hover();
	} else if (!hovering) {
		handle_not_hover();
	}
}
    
}

was_hovering = hovering;
