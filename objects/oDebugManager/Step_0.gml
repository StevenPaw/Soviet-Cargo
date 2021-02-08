/// @description Activate image and cheats
if (debug) {
	image_index = 1;
} else {
	image_index = 0;
}

if (debug) {
	//MOVE DEBUG-INFO
	if(keyboard_check_direct(vk_down)) {
		moveDebugY += 1;
		if(moveDebugY > room_height) 
			moveDebugY = 1;
	}
	if(keyboard_check_direct(vk_up)) {
		moveDebugY -= 1;
		if(moveDebugY < 0) 
			moveDebugY = room_height - 1;
	}
	if(keyboard_check_direct(vk_right)) {
		moveDebugX += 1;
		if(moveDebugX > room_width) 
			moveDebugX = 1;
	}
	if(keyboard_check_direct(vk_left)) {
		moveDebugX -= 1;
		if(moveDebugX < 0) 
			moveDebugX = room_width - 1;
	}
	
	//UPDATE INFO
	textInfo[0] = "DEBUG MODE";
	textValue[0] = "ACTIVE";
	textInfo[1] = "COINS";
	textValue[1] = string(global.coins);
	textInfo[2] = "HP";
	textValue[2] = string(global.hp);
	textInfo[3] = "IS BUYING";
	textValue[3] = string(global.isBuying);
	textInfo[4] = "LEVEL";
	textValue[4] = string(global.level);
	textInfo[5] = "MAX PLAYER HP";
	textValue[5] = string(global.maxPlayerHP);
	textInfo[6] = "MAX POWERUSE";
	textValue[6] = string(global.maxPoweruse);
	textInfo[7] = "PLAYERHP";
	textValue[7] = string(global.playerHP);
	textInfo[8] = "POWERUSE";
	textValue[8] = string(global.poweruse);
	textInfo[9] = "SPEED";
	textValue[9] = string(global.spd);
	textInfo[10] = "WAVE";
	textValue[10] = string(global.wave);
	textInfo[11] = "ROOM";
	textValue[11] = string(room_get_name(room));
	textInfo[12] = "GAMESPEED";
	textValue[12] = string(global.gameSpeed);
	
	//CHEAT-CODES
	//Room-Change
	if(keyboard_check(vk_numpad1)) {
		room_goto(rLevel1);
	} else if(keyboard_check(vk_numpad2)) {
		room_goto(rLevel2);
	} else if(keyboard_check(vk_numpad3)) {
		room_goto(rLevel3);
	} else if(keyboard_check(vk_numpad4)) {
		room_goto(rLevel4);
	} else if(keyboard_check(vk_numpad5)) {
		room_goto(rLevel5);
	} else if(keyboard_check(vk_end)) {
		room_goto(rMenu);
	}
	
	if(keyboard_check_released(ord("H"))) {
		global.playerHP += 1;
	} else if(keyboard_check_pressed(ord("J"))) {
		global.playerHP -= 1;
	} else if(keyboard_check_pressed(ord("K"))) {
		global.playerHP = global.maxPlayerHP;
	}
	
	if(keyboard_check_pressed(ord("N"))) {
		global.maxPoweruse -= 1;
	} else if(keyboard_check_pressed(ord("M"))) {
		global.maxPoweruse += 1;
	}
	
	if(keyboard_check_pressed(ord("E"))) {
		global.poweruse -= 1;
	} else if(keyboard_check_pressed(ord("R"))) {
		global.poweruse += 1;
	}
	
	if(keyboard_check_pressed(ord("O"))) {
		global.maxPoweruse -= 1;
	} else if(keyboard_check_pressed(ord("P"))) {
		global.maxPoweruse += 1;
	}
	
	if(keyboard_check_pressed(ord("C"))) {
		global.coins += 10;
	}
	
	if(keyboard_check_pressed(ord("A"))) {
		oAchievementManager.giveAchievement("Test");
	}
	
	if(keyboard_check_pressed(ord("1"))) {
		global.gameSpeed = 1;
	} else if(keyboard_check_pressed(ord("2"))) {
		global.gameSpeed = 2;
	} else if(keyboard_check_pressed(ord("3"))) {
		global.gameSpeed = 5;
	} else if(keyboard_check_pressed(ord("0"))) {
		global.gameSpeed = 0;
	} else if(keyboard_check_pressed(ord("4"))) {
		global.gameSpeed = 10;
	}
}