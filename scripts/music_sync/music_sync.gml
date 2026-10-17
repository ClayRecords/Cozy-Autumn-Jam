/// Keep a looping music instance aligned with browser audio availability.
/// Returns the current sound instance ID (or -1 if it has not started yet).
function music_sync(_sound, _sound_id, _should_play, _fade_in_ms = 0) {
	if (!_should_play || !audio_system_is_available()) {
		if (_sound_id != -1 && audio_is_playing(_sound_id) && !audio_is_paused(_sound_id)) {
			audio_pause_sound(_sound_id);
		}
		return _sound_id;
	}

	if (_sound_id != -1 && audio_is_playing(_sound_id)) {
		if (audio_is_paused(_sound_id)) {
			audio_resume_sound(_sound_id);
		}
		return _sound_id;
	}

	var _start_gain = (_fade_in_ms > 0) ? 0 : 1;
	var _new_sound_id = audio_play_sound(_sound, 10, true, _start_gain);
	if (_new_sound_id != -1 && _fade_in_ms > 0) {
		audio_sound_gain(_new_sound_id, 1, _fade_in_ms);
	}
	return _new_sound_id;
}

/// Stop the outgoing room's music instance during a room transition.
function music_stop(_sound_id) {
	if (_sound_id != -1 && audio_is_playing(_sound_id)) {
		audio_stop_sound(_sound_id);
	}
}
