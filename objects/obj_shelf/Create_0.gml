ingredient = undefined;

width = get_obj_width(self);
height = get_obj_height(self);

// Pickup zone settings
pickup_offset = height * 0.5;

// Center of pickup zone
var dir = image_angle + 90;
var px = x + lengthdir_x(pickup_offset, dir);
var py = y + lengthdir_y(pickup_offset, dir);

pickup_area = instance_create_layer(
	px,
	py,
	"Instances",
	obj_shelf_pickup,
	{
		parent_shelf: self,
		image_angle: image_angle,
		image_index: image_index,
		image_yscale: image_yscale * 0.75,
	}
);
