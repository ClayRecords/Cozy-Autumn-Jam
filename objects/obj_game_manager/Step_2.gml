with(all) {
	if(!variable_instance_exists (self, "do_depth_sort")){
//		depth = -bbox_bottom;
	}

	else{
		if(do_depth_sort){
			// Set the instance's depth to negative bbox_bottom
			// bbox_bottom is the Y coordinate at the bottom edge
			// of the instance's mask
			// That point is used for depth-sorting these instances
			depth = -bbox_bottom;
		}
	}
}