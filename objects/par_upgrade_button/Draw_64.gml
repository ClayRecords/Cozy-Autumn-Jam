// Inherit the parent event
event_inherited();

font_color = make_colour_rgb(52, 52, 52);
draw_set_color(font_color);
draw_set_halign(fa_center);

// Description
draw_text_good(x + 20, y + 20, description, 0.5, 200);

if (active) {
	// Cost
	draw_text_good(x + 50, y, cost, 0.5, 200);

	// Sprite
	draw_sprite_ext(spr_money, 0, x + 70, y, 0.75, 0.75, 0, c_white, 1);
}

draw_set_colour(c_white);
draw_set_halign(fa_left);
