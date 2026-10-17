// Keep title music in sync with HTML5 Web Audio availability and browser focus.
if (ds_map_exists(async_load, "event_type")
&& async_load[? "event_type"] == "audio_system_status") {
	menu_music = music_sync(
		snd_menuMusic,
		menu_music,
		async_load[? "status"] == "available" && window_has_focus(),
		1000
	);
}
