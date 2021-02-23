spawn_count = 0;
spawn_count_max = 5;

spawn_rate = 2 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

spawnActive = false;



switch (room) {
	case rEndlessLevelEasy:
		Path = pEndlessEasy;
		break;
	case rEndlessLevelMedium:
		Path = pEndlessMedium;
		break;
	case rEndlessLevelHard:
		Path = pEndlessHard;
		break;
}

global.gameSpeed = 1;
global.maxPoweruse = 10;

//oWaveManager.loadWaves();