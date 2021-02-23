//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed
buttonText = "NEXT LEVEL";

if(room != rEndlessLevelEasy && room != rEndlessLevelMedium && room != rEndlessLevelHard) {
	if(oLevelManager.getCurrentLevelID(room) < array_length(oLevelManager.Room) - 1){
		buttonText = "NEXT LEVEL";
	} else {
		buttonText = "FINISH GAME!";
	}
}

function onButtonRelease() {
	
}

function onButtonPushed() {
	if(room != rEndlessLevelEasy && room != rEndlessLevelMedium && room != rEndlessLevelHard) {
		global.wave = 0;
		if(oLevelManager.getCurrentLevelID(room) < array_length(oLevelManager.Room) - 1){
			room_goto(oLevelManager.Room[oLevelManager.getCurrentLevelID(room) + 1]);
		} else {
			buttonText = "FINISH GAME!";
			oAchievementManager.giveAchievement("Finisher");
			room_goto(rMenu);
		}
	}
}