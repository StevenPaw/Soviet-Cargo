/// @description Draw Debuginfo
if (debug) {
	//1 get old Settings
	oldColor = draw_get_color();
	oldhAlign = draw_get_halign();
	oldvAlign = draw_get_valign();
	oldFont = draw_get_font();

	//2 set new Settings
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	for(i = 0; i < array_length(textInfo); i++) {
		draw_debug_text(x + moveDebugX, y + moveDebugY + (i*25), textInfo[i] + ": " + textValue[i]);
	}

	//3 regain old Settings
	draw_set_color(oldColor);
	draw_set_halign(oldhAlign);
	draw_set_valign(oldvAlign);
	draw_set_font(oldFont);
}