cover_speed = 0.08;
uncover_speed = 0.12;

is_in_register_zone = false;

function cover_up() {
	image_alpha += cover_speed;
	if (image_alpha >= 1) {
		image_alpha = 1;
	}
}

function uncover() {
	image_alpha -= uncover_speed;
	if (image_alpha <= 0) {
		image_alpha = 0;
		is_cover_down = true;
		is_cover_up = false;
	}
}
