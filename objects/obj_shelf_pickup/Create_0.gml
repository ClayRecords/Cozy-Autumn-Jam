event_inherited();

function interact() {
	// Issue, obj_inventory does not exist
	obj_player.add_ingredient_to_inventory(parent_shelf.ingredient_type);
	snd_pickup = choose(snd_pickup1, snd_pickup2, snd_pickup3);
	pickup = audio_play_sound(snd_pickup, 5, false, 0.5);
}
