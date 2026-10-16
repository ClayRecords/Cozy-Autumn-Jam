if (hovering && draggable && obj_cauldron.is_brewing) {
	grabbed = true;
	xx = x - mouse_x;
	yy = y - mouse_y;
	depth = -1; // Bring object to the front
}
