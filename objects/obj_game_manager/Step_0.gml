
if (current_ghost != undefined){
    if (
    		current_ghost.order == obj_potion_foul
    		|| current_ghost.order == obj_potion_parent
    	) {
            current_ghost.order = potion_indexes[int64(random(array_length(potion_indexes)))];
        }
}