// Set tint based on state
var tint = c_white;
if (!active) {
	tint = make_color_rgb(100, 100, 100);
} else if (clicked) {
	tint = make_color_rgb(200, 200, 200);
} else if (hovering) {
	tint = make_color_rgb(220, 220, 220);
}

// Draw button
draw_sprite_ext(
	sprite_index,
	image_index,
	x,
	y,
	image_xscale,
	image_yscale,
	image_angle,
	tint,
	image_alpha
);

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_good(x, y, button_text, 0.5, get_obj_width(self));

draw_set_halign(fa_left);
draw_set_valign(fa_top);
