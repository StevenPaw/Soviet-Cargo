achievements = ds_list_create();
achGot[0] = false;
achImage[0] = ph_1_16x16;
achDescription[0] = "ERROR";
achTime[0] = "01.01.2000 - 00:00";
achHidden[0] = false;
achCount = 0;

function AddAchievement(name, description, image, hidden){
	achCount += 1;
	ds_list_add(achievements, name);
	achGot[achCount] = false;
	achImage[achCount] = image;
	achDescription[achCount] = description;
	achTime[achCount] = "not yet earned";
	achHidden[achCount] = hidden;
}

function giveAchievement(name) {
	if(ds_list_find_index(achievements, name) != -1) {
		pointInList = ds_list_find_index(achievements, name);
		//pointInList = ds_list_find_value(achievements, valueInList);
		pointInList += 1;
		if(!achGot[pointInList]) {
			achGot[pointInList] = true;
			achTime[pointInList] = string(current_day) + "." + string(current_month) + "." + string(current_year) + " - " + string(current_hour) + ":" + string(current_minute);

			achievementMessage = instance_create_layer(room_width, room_height / 2, "Achievements", oAchievementBox)

			achievementMessage.info = "NEW ACHIEVEMENT!";
			achievementMessage.title = ds_list_find_value(achievements, pointInList - 1);
			achievementMessage.description = achDescription[pointInList];
			achievementMessage.image = achImage[pointInList];
			achievementMessage.hidden = achHidden[pointInList];
		} else {
			show_debug_message("Already got Achievement!");
		}
	} else {
		show_debug_message("Achievement not in List!");
	}
}

AddAchievement("Test", "Tested Achievements", sAchDebug, true);
AddAchievement("Started Game", "You started the Game", sAchStartGame, false);
AddAchievement("Prolog", "You started a new Game with Prolog", sAchStory, false);
AddAchievement("1 Star", "You finished a level with 1 Star", sAch1Star, false);
AddAchievement("2 Stars", "You finished a level with 2 Stars", sAch2Star, false);
AddAchievement("3 Stars", "You finished a level with 3 Stars", sAch3Star, false);

for(i = 0; i < oLevelManager.levelCount; i++) {
	AddAchievement("Level " + string(i+1), "You finished Level " + string(i+1), sAchLevel, false);
}

AddAchievement("Fastest", "You used the fastest speed available", sAchFastest, false);
AddAchievement("First Enemy", "Kill your first enemy", sAchImageTemplate, false);
AddAchievement("50 Enemies", "Kill 50 enemies", sAchImageTemplate, false);
AddAchievement("100 Enemies", "Kill 100 enemies", sAchImageTemplate, false);
AddAchievement("250 Enemies", "Kill 250 enemies", sAchImageTemplate, false);