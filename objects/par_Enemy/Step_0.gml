if (loaded) {
    if (hp <= 0) {
        effect_create_above(ef_explosion, x, y, 1, enemyDeathColor);
        global.coins += enemyCoins;
        oStats.killedEnemies += 1;
		if(damageTakenFrom == "explosion") {
			oAchievementManager.giveAchievement("Shot. Boom. Death.");
		}
		if(isSlowed) {
			oAchievementManager.giveAchievement("Slow Death");
		}
		
        onDeath();
        instance_destroy();
    }
    image_angle = direction + 90;
}

path_speed = global.spd * enemySpeed * global.gameSpeed;

if (isSlowed) {
    if (enemySpeed < startSpeed) {
        enemySpeed += regainSpeed * global.gameSpeed;
    } else {
        isSlowed = false;
    }
}

if (starthp != undefined) {
    image_xscale = hp / starthp + 0.2;
    image_yscale = hp / starthp + 0.2;
}