//First make sure that variables exist
levelComplete[0] = 0;
Room[0] = rMenu;
maxWaves[0] = 0;
levelPath[0] = pLevel1;
levelPathWater[0] = pLevel1water;
levelPathSky[0] = pLevel1sky;
levelPathUnderground[0] = pLevel1underground;
levelCount = 0;

//Create Function to make new Levels easier
function newLevel(roomObject, wavecount, levelpath, waterpath, skypath, undergroundpath) {
    levelCount += 1;
    levelComplete[levelCount] = 0;
    Room[levelCount] = roomObject;
    maxWaves[levelCount] = wavecount;
    levelPath[levelCount] = levelpath;
    levelPathWater[levelCount] = waterpath;
    levelPathSky[levelCount] = skypath;
    levelPathUnderground[levelCount] = undergroundpath;
}


//Create Levels
newLevel(rLevel01, 15, pLevel1, pLevel1water, pLevel1sky, pLevel1underground);
newLevel(rLevel02, 10, pLevel2, pLevel2water, pLevel2sky, pLevel2underground);
newLevel(rLevel03, 10, pLevel3, pLevel3water, pLevel3sky, pLevel3underground);
newLevel(rLevel04, 15, pLevel4, pLevel4water, pLevel4sky, pLevel4underground);
newLevel(rLevel05, 15, pLevel5, pLevel5water, pLevel5sky, pLevel5underground);
newLevel(rLevel06, 15, pLevel6, pLevel6water, pLevel6sky, pLevel6underground);
newLevel(rLevel07, 15, pLevel7, pLevel7water, pLevel7sky, pLevel7underground);
newLevel(rLevel08, 15, pLevel8, pLevel8water, pLevel8sky, pLevel8underground);
newLevel(rLevel09, 15, pLevel9, pLevel9water, pLevel9sky, pLevel9underground);
newLevel(rLevel10, 15, pLevel10, pLevel10water, pLevel10sky, pLevel10underground);


//Function to get current Level ID
function getCurrentLevelID(roomObject) {
    for (i = 0; i <= array_length(Room); i++) {
        if (Room[i] == roomObject) {
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

//Function to get current UndergroundPath
function getCurrentUndergroundPath(pathNum) {
    return levelPathUnderground[pathNum];
}

function getMaxWaves(roomObject) {
    currentID = getCurrentLevelID(roomObject);
    return maxWaves[currentID];
}