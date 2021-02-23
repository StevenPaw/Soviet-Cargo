if(instance_exists(par_Enemy)) {
	enemiesHit = 0;
	for(i = 0; i < instance_number(par_Enemy); i++){
		enemy = instance_find(par_Enemy, i);
		
		var _xd = enemy.x - x;
		var _yd = enemy.y - y;
		dist = sqrt( _xd * _xd + _yd * _yd);
		
		if(dist <= explosionRange) {
			enemy.hp -= explosionDamage;
			enemiesHit += 1;
			enemy.damageTakenFrom = "explosion";
		}
	}
	if(enemiesHit > 2){
		oAchievementManager.giveAchievement("Big Boom");
	}
}

if(instance_exists(oAudioManager)){
	oAudioManager.playFX(sndExplosion);
}