spawn_amount = 10;
spawn_count = 0;
spawn_rate = 2 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;


global.hp = 100; // initial enemy health
global.spd = 1; // initial enemy speed
global.level = 1; // initial enemy level

global.coins = 20; // player currency
global.poweruse = 10; // initial enemy level
global.maxPoweruse = 10; // initial enemy level

switch(room) {
	case rMenu:
		break;
	case rLevel1:
		Path = pLevel1;
		break;
	case rLevel2:
		Path = pLevel2;
		break;
	case rLevel3:
		Path = pLevel3;
		break;
	default:
		Path = pLevel1;
		break;
}