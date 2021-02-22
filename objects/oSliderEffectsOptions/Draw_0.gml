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
draw_set_font(fTooltipName);
draw_text(x + sprite_width / 2, y - sprite_height, string(text) + string(currentValue) + string(suffix));
draw_sprite_ext(sSliderValue,1,x,y,sliderWidth,1,0,c_white,1);

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);