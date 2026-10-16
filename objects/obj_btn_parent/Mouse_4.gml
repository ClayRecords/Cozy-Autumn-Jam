// Inherit the parent event
event_inherited();

if (active) {
	audio_play_sound(choose(snd_menuclick1, snd_menuclick2), 1, false, 0.3);
	activate_button();
}
