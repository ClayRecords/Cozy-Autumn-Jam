draw_self();

if (obj_game_manager.is_debug) {
	potion_name = "None";
	if (current_potion != undefined) {
		potion_name = current_potion.name;
	}
	draw_text(x, y, "Potion: " + potion_name);
    
    if (is_brewing){
      draw_text(7, 50, "X = give potion currently in cauldron");
      draw_text(7, 80, "Z = flush cauldron");
      draw_text(7, 110, "C = give requested potion")
    }
}
