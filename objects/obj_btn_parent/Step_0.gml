hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	clicked = true;
}

if (mouse_check_button_released(mb_left)) {
	clicked = false;

	if (hovering) {
		audio_play_sound(choose(snd_menuclick1, snd_menuclick2), 1, false, 0.3);
		activate_button();
	}
}

if (hovering && !was_hovering) {
    var _w = sprite_get_width(spr_sparkle);
    var _cx = (bbox_left + bbox_right) / 2;
    var _cy = (bbox_top + bbox_bottom) / 2;
    var _a = image_angle;
    var _dist = abs(sprite_width) / 2 + 4 + sprite_get_width(spr_sparkle) / 2;
    var _dx = lengthdir_x(_dist, _a);
    var _dy = lengthdir_y(_dist, _a);
    sparkle_r = instance_create_layer(_cx + _dx, _cy + _dy, "Instances", obj_sparkle);
    sparkle_r.image_angle = _a;
    sparkle_l = instance_create_layer(_cx - _dx, _cy - _dy, "Instances", obj_sparkle);
    sparkle_l.image_angle = _a;
}
else if (!hovering && was_hovering) {
    if instance_exists(sparkle_l) {
        instance_destroy(sparkle_l);
    }
    if instance_exists(sparkle_r) {
        instance_destroy(sparkle_r);
    }
}
was_hovering = hovering