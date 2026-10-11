ingredient_type = obj_empty_inventory_ingredient;

grabbed = false;
draggable = false;
start_x = 0;
start_y = 0;
xx = 0;
yy = 0;
hover = false;

function return_to_inventory() {
	image_alpha = 1;
	x = start_x;
	y = start_y;
}
