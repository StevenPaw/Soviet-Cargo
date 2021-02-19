oldAlpha = draw_get_alpha();
oldBlendMode = gpu_get_blendmode();

draw_set_alpha(0.2);
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,0);

gpu_set_blendmode(oldBlendMode);
draw_set_alpha(oldAlpha);