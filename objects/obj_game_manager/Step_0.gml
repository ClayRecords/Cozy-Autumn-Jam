// Check for hovered buttons, change cursor
var any_btn_hover = false;
with (obj_btn_parent) {
	if (hovering) {
		any_btn_hover = true;
		break;
	}
}
if (any_btn_hover) {
	cursor_sprite = spr_cursor;
} else {
	cursor_sprite = spr_cursor;
}
