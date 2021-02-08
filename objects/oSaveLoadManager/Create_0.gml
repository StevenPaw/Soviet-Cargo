function loadGame() {
	ini_open("sovietCargoSave.ini");
	global.effectsVolume = ini_read_real("Options","effectsVolume",1); //The third value here will set the score variable if there is no save file
	global.musicVolume = ini_read_real("Options","musicVolume",1);

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
	saveGame();
	game_restart();
}

loadGame();