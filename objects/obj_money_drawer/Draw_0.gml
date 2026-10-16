draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text_good(x, y - 8, str(obj_game_manager.money), 0.5, 100);
draw_sprite_ext(spr_money, 0, x + 20, y, 0.75, 0.75, 0, c_white, 1);
draw_set_halign(fa_left);
