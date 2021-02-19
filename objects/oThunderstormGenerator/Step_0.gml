///generate rain
edge = 200;

for(i = 0; i < 80 * global.gameSpeed; i++) {
	rain = instance_create_layer(-edge + random(room_width+edge*2), -edge + random(room_height+edge*2), "EnemiesSky", oRain);
	rain.pointToFallToX = room_width*2;
}

if(tintColorBlack > 0) {
	tintColorBlack -= tintChangeSpeed;
}
tintColor = make_color_rgb(tintColorBlack,tintColorBlack,tintColorBlack);