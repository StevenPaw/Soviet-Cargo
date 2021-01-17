spawn_amount = 10;
spawn_count = 0;
spawn_rate = 2 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

spawnActive = false;


global.hp = 100; // initial enemy health
global.spd = 1; // initial enemy speed
global.level = 1; // initial enemy level
global.wave = 0; //wave that runs in the moment

global.maxPlayerHP = 10; //max player health to start with
global.playerHP = global.maxPlayerHP; //actual player Health at the moment
global.coins = 20; // player currency
global.poweruse = 0; // initial enemy level
global.maxPoweruse = 10; // initial enemy level

Path = oLevelManager.levelPath[oLevelManager.getCurrentLevelID(room)];
