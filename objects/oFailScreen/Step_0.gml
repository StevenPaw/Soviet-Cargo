if(isActive && y > 0) {
	speed = 20;	
} else {
	speed = 0;	
}

retryButton.direction = direction;
retryButton.speed = speed;
menuButton.direction = direction;
menuButton.speed = speed;

if(keyboard_check(vk_escape)){
	isActive = true;	
}