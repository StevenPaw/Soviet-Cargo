oldColor = draw_get_color();

if((nearest.cost / 2) > global.coins) {
draw_set_color(c_green);
}
draw_self();

draw_set_color(oldColor);

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fMenuSmall);
draw_text(x + 100, y + sprite_height / 3 + 40, "-" + string(nearest.cost / 2));

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);