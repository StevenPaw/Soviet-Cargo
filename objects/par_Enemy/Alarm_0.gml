/// @description After first initialization


if (room != rEndlessLevelEasy && room != rEndlessLevelMedium && room != rEndlessLevelHard) {
	roomID = oLevelManager.getCurrentLevelID(room);
	GroundPath = oLevelManager.getCurrentPath(roomID);
	WaterPath = oLevelManager.getCurrentWaterPath(roomID);
	SkyPath = oLevelManager.getCurrentSkyPath(roomID);
	UndergroundPath = oLevelManager.getCurrentUndergroundPath(roomID);
	switch (type) {
	    default:
	        Path = GroundPath;
	        break;
	    case "water":
	        Path = WaterPath;
	        break;
	    case "sky":
	        Path = SkyPath;
	        break;
	    case "underground":
	        Path = UndergroundPath;
	        break;
	}
} else if (room = rEndlessLevelEasy) {
	switch (type) {
	    default:
	        Path = pEndlessEasy;
	        break;
	    case "water":
	        Path = pEndlessEasyWater;
	        break;
	    case "sky":
	        Path = pEndlessEasySky;
	        break;
	    case "underground":
	        Path = pEndlessEasyUnderground;
	        break;
	}
} else if (room = rEndlessLevelMedium) {
	switch (type) {
	    default:
	        Path = pEndlessMedium;
	        break;
	    case "water":
	        Path = pEndlessMediumWater;
	        break;
	    case "sky":
	        Path = pEndlessMediumSky;
	        break;
	    case "underground":
	        Path = pEndlessMediumUnderground;
	        break;
	}
} else {
	switch (type) {
	    default:
	        Path = pEndlessHard;
	        break;
	    case "water":
	        Path = pEndlessHardWater;
	        break;
	    case "sky":
	        Path = pEndlessHardSky;
	        break;
	    case "underground":
	        Path = pEndlessHardUnderground;
	        break;
	}
}

path_start(Path, (global.spd * enemySpeed) * global.gameSpeed, 0, 1);
hp = global.hp * enemyHealth;

starthp = hp;
enemySpeed = startSpeed;

image_xscale = 1.2;
image_yscale = 1.2;
loaded = true;

path_speed = global.spd * enemySpeed * global.gameSpeed;