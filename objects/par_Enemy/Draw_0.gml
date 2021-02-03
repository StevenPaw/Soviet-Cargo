if(isSlowed) {
	var cP = 255 / startSpeed * enemySpeed; //Color Power
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,make_color_rgb(cP, cP, 255),image_alpha);
} else {
	draw_self();
}

if(oDebugManager.debug){
	draw_text(x,y,"HP: " + string(hp));
	draw_text(x,y + 10,"SPD: " + string(path_speed));	
}