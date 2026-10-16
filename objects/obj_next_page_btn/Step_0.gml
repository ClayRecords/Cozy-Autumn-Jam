// Inherit the parent event
event_inherited();

active =
	obj_recipes_book.current_page != obj_recipes_book.max_page
	&& obj_recipes_book.current_page < obj_game_manager.known_potions_count;
