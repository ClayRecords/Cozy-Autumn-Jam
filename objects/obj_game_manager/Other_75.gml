// HTML5 audio can become available or unavailable as browser focus changes.
if (ds_map_exists(async_load, "event_type")
&& async_load[? "event_type"] == "audio_system_status") {
	if (async_load[? "status"] == "available") {
		menu_music = music_sync(snd_mainTheme, menu_music, window_has_focus(), 1000);
	} else if (async_load[? "status"] == "unavailable") {
		menu_music = music_sync(snd_mainTheme, menu_music, false);
	}
}
