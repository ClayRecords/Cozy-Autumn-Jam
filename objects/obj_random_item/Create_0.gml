lists = get_random_item_lists();

function randomize_sprite() {
	if (random(1) < chance) {
		//random if ANYTHING spawns

		if (force_sprite == undefined) {
			//if not forcing sprite to be something
			var _list = options[irandom(array_length(options) - 1)]; //choose random list from options
			sprite_index = lists[$ _list][irandom(array_length(lists[$ _list]) - 1)]; //choose random sprite from list chosen
		} else {
			sprite_index = force_sprite; //
		}
	} else {
		sprite_index = -1;
	}
}

randomize_sprite();
