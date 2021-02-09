if (instance_exists(oWaveManager) && instance_exists(oSpawn)){
	maxWaves[getCurrentLevelID(room)] = oWaveManager.getWaveCount() - 1;
}