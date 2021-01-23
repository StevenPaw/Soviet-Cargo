if (loaded) {
	if(hp <= 0) {
		effect_create_above(ef_explosion, x, y, 1, enemyDeathColor);
		global.coins += enemyCoins;
		instance_destroy();
	}
	image_angle = direction + 90;
}

path_speed = global.spd * enemySpeed * global.gameSpeed;