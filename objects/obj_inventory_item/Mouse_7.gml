if(grabbed && !dropped){
    if(mouse_x > 600){
        obj_cauldron.add_ingredient(ingredient);
        image_alpha = 0;
    }
    dropped = true;
    grabbed = false;
}


