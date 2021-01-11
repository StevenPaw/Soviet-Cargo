//First make sure that variables exist
levelComplete[0] = false;
Room[0] = rMenu;
maxWaves[0] = 0;
levelCount = 0;

//Create Function to make new Levels easier
function newLevel(roomObject, wavecount){
	levelCount += 1;
	levelComplete[levelCount] = false;
	Room[levelCount] = roomObject;
	maxWaves[levelCount] = wavecount;
}


//Create Levels
newLevel(rLevel1, 5);
newLevel(rLevel2, 10);
newLevel(rLevel3, 15);


//Function to get current Level ID
function getCurrentLevelID(roomObject) {
	for(i = 0; i <= array_length(Room); i++) {
		if (Room[i] == roomObject){
			return i;
		}
	}
	return 0;
}

function getMaxWaves(roomObject) {
	currentID = getCurrentLevelID(roomObject);
	return maxWaves[currentID];
}