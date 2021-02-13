//First make sure that variables exist
levelComplete[0] = 0;
Room[0] = rMenu;
maxWaves[0] = 0;
levelPath[0] = pLevel1;
levelPathWater[0] = pLevel1water;
levelPathSky[0] = pLevel1sky;
levelCount = 0;

//Create Function to make new Levels easier
function newLevel(roomObject, wavecount, levelpath, waterpath, skypath){
	levelCount += 1;
	levelComplete[levelCount] = 0;
	Room[levelCount] = roomObject;
	maxWaves[levelCount] = wavecount;
	levelPath[levelCount] = levelpath;
	levelPathWater[levelCount] = waterpath;
	levelPathSky[levelCount] = skypath;
}


//Create Levels
newLevel(rLevel1, 5, pLevel1, pLevel1water, pLevel1sky);
newLevel(rLevel2, 10, pLevel2, pLevel2water, pLevel2sky);
newLevel(rLevel3, 10, pLevel3, pLevel3water, pLevel3sky);
newLevel(rLevel4, 15, pLevel4, pLevel4water, pLevel4sky);
newLevel(rLevel5, 15, pLevel5, pLevel5water, pLevel5sky);


//Function to get current Level ID
function getCurrentLevelID(roomObject) {
	for(i = 0; i <= array_length(Room); i++) {
		if (Room[i] == roomObject){
			return i;
		}
	}
	return 0;
}

//Function to get current GroundPath
function getCurrentPath(pathNum) {
	return levelPath[pathNum];
}

//Function to get current WaterPath
function getCurrentWaterPath(pathNum) {
	return levelPathWater[pathNum];
}

//Function to get current SkyPath
function getCurrentSkyPath(pathNum) {
	return levelPathSky[pathNum];
}

function getMaxWaves(roomObject) {
	currentID = getCurrentLevelID(roomObject);
	return maxWaves[currentID];
}