image_index = 2;
alarm[0] = 10;

switch (global.gameSpeed) {
	default:
		global.gameSpeed = 0;
		break;
	case 0:
		global.gameSpeed = 1;
		break;
}