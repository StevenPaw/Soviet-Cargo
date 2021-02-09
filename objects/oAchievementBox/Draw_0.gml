if (hasAch) {
	draw_sprite(image, 0, x, y);
} else {
	draw_sprite(sAchNotEarned, 0, x, y);
}

draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fTooltipError);
draw_text(x + 80, y + sprite_height / 2 - 20, info);
draw_set_font(fTooltipName);
draw_text(x + 80, y + sprite_height / 2, title);
draw_set_font(fTooltipDescription);
draw_text(x + 80, y + sprite_height / 2 + 20, description);

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);