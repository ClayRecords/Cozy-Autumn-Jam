event_inherited();

function interact() {
	// Issue, obj_inventory does not exist
	obj_inventory.add_ingredient_to_inventory(parent_shelf.ingredient_type);
    pickup = audio_play_sound(choose(snd_pickup1, snd_pickup2, snd_pickup3), 5, false, 0.5);
}
