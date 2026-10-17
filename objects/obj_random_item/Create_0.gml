function randomize_sprite() {
    if (random(1) < chance) {
        sprite_index = sprite_list[irandom(array_length(sprite_list) - 1)];
    } else {
         sprite_index = -1;
    }
}
    
randomize_sprite();


//TODO make it pull from lists rather than listing each one in the instance variable. So you just select "candle" and it'll put random candles there. 