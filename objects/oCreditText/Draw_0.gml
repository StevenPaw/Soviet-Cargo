draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

currentY = spaceToHeader;
draw_set_font(bigFont);
draw_text(x, y + currentY, "CREDITS");
currentY += spaceToTitle;

draw_set_font(smallFont);
for(i = 0; i < array_length(CreditText); i++) {
	if(activeText = i) {
		draw_set_color(c_gray);
	} else {
		draw_set_color(c_white);
	}
	draw_text(x, y + currentY, CreditText[i]);
	currentY += spaceBetweenCredits;
}
draw_set_color(c_white);

if(oDebugManager.debug) {
	for (i = 0; i < array_length(CreditLink); i++) {
		var startY = y + spaceToHeader + spaceToTitle + (spaceBetweenCredits * i);
	
		text_width = string_width(CreditText[i]);
		text_height = string_height(CreditText[i]);
	
		show_debug_message("Check Click: " + string(i));
		
		draw_rectangle(x - text_width * 0.75, startY, x + text_width * 0.75, startY + text_height - 10,c_red);
	}
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);