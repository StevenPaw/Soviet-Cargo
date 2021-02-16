function loadGame() {
	ini_open("sovietCargoSave.ini");
	global.effectsVolume = ini_read_real("Options","effectsVolume",1); //The third value here will set the score variable if there is no save file
	global.musicVolume = ini_read_real("Options","musicVolume",1);
	
	global.tutorialFinished = ini_read_real("Tutorial","finished",false);
	
	oStats.killedEnemies = ini_read_real("Stats","killedEnemies", 0);
	oStats.killedStandardEnemies =ini_read_real("Stats","killedStandardEnemies", 0);
	oStats.killedShieldedEnemies = ini_read_real("Stats","killedShieldedEnemies", 0);
	oStats.killedSpeedEnemies = ini_read_real("Stats","killedSpeedEnemies", 0);
	oStats.towersBuild = ini_read_real("Stats","towersBuild", 0);
	oStats.trapsBuild = ini_read_real("Stats","trapsBuild", 0);
	oStats.towersSold = ini_read_real("Stats","towersSold", 0);
	oStats.starsEarned = ini_read_real("Stats","starsEarned", 0);
	oStats.endlessWavesEasy = ini_read_real("Stats","endlessWavesEasy", 0);
	oStats.endlessWavesMedium = ini_read_real("Stats","endlessWavesMedium", 0);
	oStats.endlessWavesHard = ini_read_real("Stats","endlessWavesHard", 0);

	if (instance_exists(oLevelManager)) {
		for(i = 0; i < array_length(oLevelManager.levelComplete); i++)
		{
			oLevelManager.levelComplete[i] = ini_read_real("Progress","levelComplete-" + string(i), 0);
		}
	}
	if (instance_exists(oAchievementManager)) {
		for(i = 0; i < array_length(oAchievementManager.achGot); i++)
		{
			 oAchievementManager.achGot[i] = ini_read_real("Achievements","ach-" + string(i), false);
			 oAchievementManager.achTime[i] = ini_read_string("Achievements","achTime-" + string(i), "not yet earned");
		}
	}
	ini_close();
}

function saveGame() {
	ini_open("sovietCargoSave.ini");
	ini_write_real("Options","effectsVolume", global.effectsVolume); //The third value here will set the score variable if there is no save file
	ini_write_real("Options","musicVolume", global.musicVolume);
	
	ini_write_real("Tutorial","finished", global.tutorialFinished);
	
	ini_write_real("Stats","killedEnemies", oStats.killedEnemies);
	ini_write_real("Stats","killedStandardEnemies", oStats.killedStandardEnemies);
	ini_write_real("Stats","killedShieldedEnemies", oStats.killedShieldedEnemies);
	ini_write_real("Stats","killedSpeedEnemies", oStats.killedShieldedEnemies);
	ini_write_real("Stats","towersBuild", oStats.towersBuild);
	ini_write_real("Stats","trapsBuild", oStats.trapsBuild);
	ini_write_real("Stats","towersSold", oStats.towersSold);
	ini_write_real("Stats","starsEarned", oStats.starsEarned);
	ini_write_real("Stats","endlessWavesEasy", oStats.endlessWavesEasy);
	ini_write_real("Stats","endlessWavesMedium", oStats.endlessWavesMedium);
	ini_write_real("Stats","endlessWavesHard", oStats.endlessWavesHard);

	if (instance_exists(oLevelManager)) {
		for(i = 0; i < array_length(oLevelManager.levelComplete); i++)
		{
			 ini_write_real("Progress","levelComplete-" + string(i), oLevelManager.levelComplete[i]);
		}
	}
	if (instance_exists(oAchievementManager)) {
		for(i = 0; i < array_length(oAchievementManager.achGot); i++)
		{
			 ini_write_real("Achievements","ach-" + string(i), oAchievementManager.achGot[i]);
			 ini_write_string("Achievements","achTime-" + string(i), oAchievementManager.achTime[i]);
		}
	}
	ini_close();
}

function resetSaves() {
	global.tutorialFinished = false;
	
	if (instance_exists(oLevelManager)) {
		for(i = 0; i < array_length(oLevelManager.levelComplete); i++)
		{
			 oLevelManager.levelComplete[i] = 0;
		}
	}
	if (instance_exists(oAchievementManager)) {
		for(i = 0; i < array_length(oAchievementManager.achGot); i++)
		{
			 oAchievementManager.achGot[i] = false;
			 oAchievementManager.achTime[i] = false;
		}
	}
	
	oStats.InitValues();
	
	saveGame();
	game_restart();
}

loadGame();