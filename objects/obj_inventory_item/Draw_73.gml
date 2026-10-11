if(obj_cauldron.is_brewing && obj_register_zone.is_in_register_zone){
    draw_self();
}else{
    return_to_inventory();
}