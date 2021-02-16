if (isActive && !instance_exists(oStarPrize)) {
	starPrize = instance_create_layer(x + room_width / 2, y + 160, "Achievements", oStarPrize);
	if(global.playerHP < (global.maxPlayerHP / 2)) {
			starPrize.stars = 1;
	} else if(global.playerHP < global.maxPlayerHP) {
			starPrize.stars = 2;
	} else if(global.playerHP == global.maxPlayerHP) {
			starPrize.stars = 3;
	}
}

if(isActive && y > 0) {
	speed = 20;	
} else {
	speed = 0;	
}

nextLevelButton.direction = direction;
nextLevelButton.speed = speed;
retryButton.direction = direction;
retryButton.speed = speed;
menuButton.direction = direction;
menuButton.speed = speed;

if (isActive && instance_exists(oStarPrize)) {
	starPrize.direction = direction;
	starPrize.speed = speed;
}

