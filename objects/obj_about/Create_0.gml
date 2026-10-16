font_color = make_colour_rgb(52, 52, 52);

function draw_page() {
    draw_set_halign(textalign_left);
	draw_set_valign(fa_top);
	draw_set_color(font_color);
	draw_set_font(fnt_default_large);

	var title = "About";
	draw_text_good(305, 120, title, 0.75, 200);

        
	var text =
    "Made in GameMaker Studio 2 for the Comfy Jam Autumn 2026."
    + "\n\nLead and developer: Clay Records"
    + "\n\nDeveloper: Dane Spencer"
    + "\n\nDeveloper: Brett Meyer"
    + "\n\nDeveloper: Jacob Pell" 
    + "\n\nDeveloper: Caleb Wilson"
    draw_text_good(240, 180, text, 0.3, 220);

    
    var text2 =
    "Music and developer: Xerin Horton"
    + "\n\nArt: Alyssa Jerke <3"
    + "\n\nArt and developer: Sam Records."
    + "\n\nCraft services: Kenz Records"
    + "\n\nMoral support: All of our pets"
    + "\n\n"
    + "\n\nThank you for playing our game!";
	draw_text_good(500, 180, text2, 0.3, 220);

	draw_set_halign(textalign_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fnt_default);
}