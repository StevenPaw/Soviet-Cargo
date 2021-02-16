/// @description After first initialization

roomID = oLevelManager.getCurrentLevelID(room);
GroundPath = oLevelManager.getCurrentPath(roomID);
WaterPath = oLevelManager.getCurrentWaterPath(roomID);
SkyPath = oLevelManager.getCurrentSkyPath(roomID);
UndergroundPath = oLevelManager.getCurrentUndergroundPath(roomID);

switch(type) {
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

path_start(Path, (global.spd * enemySpeed) * global.gameSpeed, 0, 1);
hp = global.hp * enemyHealth;

starthp = hp;
enemySpeed = startSpeed;

image_xscale = 1.2;
image_yscale = 1.2;
loaded = true;

path_speed = global.spd * enemySpeed * global.gameSpeed;