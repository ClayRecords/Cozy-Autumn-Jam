if (struct_names_count(inventory) == 0) {
    var all_ingredients = get_ingredients();
    var k = struct_get_names(all_ingredients);
    var str_key = str(k);
    inventory[$ str_key] = all_ingredients[$ str_key];
}
else {
    str("Struct not set");
}
var missing_ingredients = get_missing_ingredients(inventory);
if (variable_instance_exists(id, missing_ingredients)){
    var k = struct_get_names(missing_ingredients);
    var str_key = str(k);
    inventory[$ str_key] = missing_ingredients[$ str_key];
    str(inventory);   
}