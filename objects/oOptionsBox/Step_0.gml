if(active) {
	if(x > xToStay) {
		direction = 180;
		speed = 20;
	}  else {
		speed = 0;
	}
	volumeSlider.isChangeable = true;
	effectSlider.isChangeable = true;
}
if (!active){
	if(x < room_width / 2 ) {
		direction = 0;
		speed = 20;
	} else {
		speed = 0;
	}
	volumeSlider.isChangeable = false;
	effectSlider.isChangeable = false;
}

if(instance_exists(oPauseScreen)) {
	y = oPauseScreen.y + room_height/2 + 100;
}

volumeSlider.direction = direction;
volumeSlider.speed = speed;
volumeSlider.y = y + 50;
effectSlider.direction = direction;
effectSlider.speed = speed;
effectSlider.y = y - 50;