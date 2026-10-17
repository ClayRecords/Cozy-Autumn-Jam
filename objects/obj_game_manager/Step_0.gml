// Check for hovered buttons, change cursor
menu_music = music_sync(snd_mainTheme, menu_music, window_has_focus(), 1000);

var any_btn_hover = false;
with (obj_clickable) {
	if (hovering) {
		any_btn_hover = true;
		break;
	}
}
if (any_btn_hover) {
	cursor_sprite = spr_cursor_select;
} else {
	cursor_sprite = spr_cursor;
}
