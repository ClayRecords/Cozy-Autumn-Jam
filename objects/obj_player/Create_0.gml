speed_multi = 3;
mask_index = player_sprite_down;

tilemap = layer_tilemap_get_id("Tilemap");
collide_objs = [obj_shelf, obj_pillar, tilemap];

alarm[0] = 4;
is_moving = false;

inventory = {};
potion_held = undefined;
nearest_interactable = undefined;

ds_inventory = [];
ds_inventory_size = 3;
