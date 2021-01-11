if(spawnActive) {
	if(instance_number(oEnemy) <= 0){
		if(!oWinScreen.isActive && !oFailScreen.isActive){
		spawn_count = 0;
		spawn_amount++;
		global.level++;
		global.wave++;
		global.hp += 10;
		//global.spd += 0.1; <--- increases enemy speed per wave
		spawn_rate -= 3.5;
		}
		alarm[0] = spawn_rate;
	}
} else {
	global.wave = 0;	
}

if(global.wave > oLevelManager.getMaxWaves(room)) {
	oWinScreen.isActive = true;
	global.wave = oLevelManager.getMaxWaves(room);
}

alarm[1] = room_speed * 3;