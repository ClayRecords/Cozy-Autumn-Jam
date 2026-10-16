// Inherit the parent event
event_inherited();

name = "FOUL";
description = "Not even the dead will want to drink this...";

function evaluate_recipe(potion) {
	// This is the default potion; it doesn't really have a recipe to match
	return false;
}
