switch(oStats.killedEnemies) {
	case 1:
		giveAchievement("First Enemy");
		break;
	case 50:
		giveAchievement("50 Enemies");
		break;
	case 100:
		giveAchievement("100 Enemies");
		break;
	case 250:
		giveAchievement("250 Enemies");
		break;
}

switch(oStats.towersBuild) {
	case 1:
		giveAchievement("First Tower");
		break;
	case 25:
		giveAchievement("25 Towers");
		break;
	case 50:
		giveAchievement("50 Towers");
		break;
	case 100:
		giveAchievement("100 Towers");
		break;
	case 200:
		giveAchievement("200 Towers");
		break;
}

switch(oStats.trapsBuild) {
	case 1:
		giveAchievement("First Trap");
		break;
	case 25:
		giveAchievement("25 Traps");
		break;
	case 50:
		giveAchievement("50 Traps");
		break;
	case 100:
		giveAchievement("100 Traps");
		break;
	case 200:
		giveAchievement("200 Traps");
		break;
}