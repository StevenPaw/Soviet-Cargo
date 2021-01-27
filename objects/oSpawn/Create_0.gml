spawn_amount = 10;
spawn_count = 0;
spawn_rate = 2 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

spawnActive = false;

Path = oLevelManager.levelPath[oLevelManager.getCurrentLevelID(room)];

global.gameSpeed = 1;
global.maxPoweruse = 10;

oWaveManager.loadWaves();