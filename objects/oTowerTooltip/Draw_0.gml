draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


if(errorState = 0) {
	draw_set_font(fTooltipName);
	draw_text(x, y - 17 - sprite_height / 2, towerName);

	draw_set_font(fTooltipDescription);
	draw_text(x, y + 3 - sprite_height / 2, towerShortText);
}else {
	draw_set_font(fTooltipName);
	draw_text(x, y - 24 - sprite_height / 2, towerName);

	draw_set_font(fTooltipDescription);
	draw_text(x, y - 3 - sprite_height / 2, towerShortText);
		
	draw_set_color(c_red);
	draw_set_font(fTooltipError);
	draw_text(x, y + 15 - sprite_height / 2, errorMessage[errorState]);
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);