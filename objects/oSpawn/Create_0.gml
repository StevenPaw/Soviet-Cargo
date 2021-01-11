spawn_amount = 10;
spawn_count = 0;
spawn_rate = 2 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

spawnActive = false;


global.hp = 100; // initial enemy health
global.spd = 1; // initial enemy speed
global.level = 1; // initial enemy level
global.wave = 0;

global.playerHP = 10;
global.coins = 20; // player currency
global.poweruse = 0; // initial enemy level
global.maxPoweruse = 10; // initial enemy level

switch(oLevelManager.getCurrentLevelID(room)) {
	case 1:
		Path = pLevel1;
		break;
	case 2:
		Path = pLevel2;
		break;
	case 3:
		Path = pLevel3;
		break;
	default:
		Path = pLevel1;
		break;
}