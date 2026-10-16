// Inherit the parent event
event_inherited();

button_text = "";

function activate_button() {
    audio_play_sound(
			choose(snd_bottleclink1, snd_bottleclink2, snd_bottleclink3, snd_bottleclink4, snd_bottleclink5, snd_bottleclink6),
			5,
			false,
			0.7
		);
	obj_cauldron.brew();
}

do_sparkle = false;
