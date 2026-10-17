// Inherit the parent event
event_inherited();

menu_music = music_sync(snd_menuMusic, menu_music, window_has_focus(), 1000);

if (obj_exit_game.active) {
	active = true;
} else {
	active = false;
}
