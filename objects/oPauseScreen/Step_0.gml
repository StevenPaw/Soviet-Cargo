if(isActive && y > 0) {
	speed = 20;	
} else if (!isActive && y < room_height){
	speed = -20;
} else {
	speed = 0;	
}

resumeButton.direction = direction;
resumeButton.speed = speed;
restartButton.direction = direction;
restartButton.speed = speed;
menuButton.direction = direction;
menuButton.speed = speed;

if(keyboard_check_pressed(vk_escape)){
	if(isActive) {
		global.gameSpeed = oldSpeed;
	} else {
		oldSpeed = global.gameSpeed;
		global.gameSpeed = 0;
	}
	isActive = !isActive;	
}