// Inherit the parent event
event_inherited();

menu_music = music_sync(snd_menuMusic, -1, window_has_focus(), 1000);

button_text = "";

function activate_button() {
	room_goto_next();
}
