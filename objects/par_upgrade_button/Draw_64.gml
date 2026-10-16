// Inherit the parent event
event_inherited();

font_color = make_colour_rgb(52, 52, 52);
draw_set_color(font_color);
draw_set_halign(fa_center)

draw_text_good(x + 20, y + 20, description, 0.5, 200)


draw_sprite_ext(spr_money, 0, x + 70, y, .75 ,.75, 0, c_white, 1)



draw_set_colour(c_white)
draw_set_halign(fa_left)