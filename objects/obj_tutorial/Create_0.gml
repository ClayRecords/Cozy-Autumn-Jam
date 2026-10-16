font_color = make_colour_rgb(52, 52, 52);

function draw_page() {
    draw_set_halign(textalign_left);
	draw_set_valign(fa_middle);
	draw_set_color(font_color);
	draw_set_font(fnt_default_large);

	var title = "How To Play";
	draw_text_good(260, 150, title, 0.75, 200);

	var text =
		"Press WASD to move, E to interact, and ESC to pause."
		+ "\n\nYou are a witch running a potion shop!"
        + "\n\nCollect potion orders from your ghostly customers, then check the potion book to learn the recipe."
		+ "\n\nEnter the storeroom to collect the required potion ingredients, but beware! The storeroom rearranges itself every time you leave."
    	+ "\n\nBring the ingredients back to the cauldron and drag them in to brew the requested potion."

	draw_text_good(240, 310, text, 0.3, 220);
    
    	text =
        + "The ingredient order matters in the recipe! If you make a mistake, click the sink to dump the cauldron out and start the potion over."
		+ "\n\nOnce your potion is ready, click the bottle to finish it! Then bring the potion back to your customer to hand it over."
		+ "\n\nBe quick about it, the faster you serve your customers, the more they'll tip."
		+ "\n\nUse your gold to buy upgrades like a black cat to help you carry more ingredients, new shoes for a speed boost, and even learn new potion recipes."
    	+ "\n"
        + "\n\nTime to get brewing!";
	draw_text_good(500, 280, text, 0.3, 220);

	draw_set_halign(textalign_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fnt_default);
}