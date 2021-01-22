/// @description Draw Debuginfo
//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fInfoBox);
draw_text(tX + 91, tY + 28, towerName);

draw_set_font(fMenuSmall);
draw_text(tX + 60, tY + 80, towerRange);
draw_text(tX + 343, tY + 80, towerCost);
draw_text(tX + 491, tY + 80, towerSellCost);
draw_text(tX + 60, tY + 124, towerSpeed);
draw_text(tX + 343, tY + 124, towerEnergy);

draw_set_font(fInfoBox);
for(i = 0; i < array_length(towerDescription); i++){
	draw_text(tX + 24, tY + 170 + (i*35), towerDescription[i]);
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);
