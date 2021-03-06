if (global.gameSpeed > 0) {

if(spawnActive) {
	if(instance_number(par_Enemy) <= 0){
		if(!oWinScreen.isActive && !oFailScreen.isActive){
		spawn_count = 0;
		global.wave++;
		spawn_rate -= 3.5;
		}
		alarm[0] = spawn_rate / global.gameSpeed;
	}
} else {
	global.wave = 0;
}


if(global.wave > oLevelManager.getMaxWaves(room)) {
	oWinScreen.isActive = true;
	
	//Find number of spawns when won
	if(global.playerHP < (global.maxPlayerHP / 2)) {
		
		if(oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] < 1) {
			oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] = 1;
		}
		oAchievementManager.giveAchievement("1 Star");
		
	} else if(global.playerHP < global.maxPlayerHP) {
		
		if(oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] < 2) {
			oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] = 2;
		}
		oAchievementManager.giveAchievement("2 Stars");
		
	} else if(global.playerHP == global.maxPlayerHP) {
		
		if(oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] < 3) {
			oLevelManager.levelComplete[oLevelManager.getCurrentLevelID(room)] = 3;
		}
		oAchievementManager.giveAchievement("3 Stars");
	}
	
	oAchievementManager.giveAchievement("Level " + string(oLevelManager.getCurrentLevelID(room)));
	
	oAudioManager.stopAllDirect();
	oAudioManager.playJingle(sndWin);
	
	global.wave = oLevelManager.getMaxWaves(room);
}
}

alarm[1] = room_speed * 3;