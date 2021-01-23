image_index = 2;
alarm[0] = 10;

switch (global.gameSpeed) {
	default:
		global.gameSpeed = 1;
		break;
	case 1:
		global.gameSpeed = 2;
		break;
	case 2:
		global.gameSpeed = 5;
		break;
}