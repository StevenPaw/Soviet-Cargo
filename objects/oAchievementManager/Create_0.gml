achievements = ds_list_create();
achGot[0] = false;
achImage[0] = ph_1_16x16;
achDescription[0] = "ERROR";
achTime[0] = "01.01.2000 - 00:00";
achCount = 0;

function AddAchievement(name, description, image){
	achCount += 1;
	ds_list_add(achievements, name);
	achGot[achCount] = false;
	achImage[achCount] = image;
	achDescription[achCount] = description;
	achTime[achCount] = "not yet earned";
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
		} else {
			show_debug_message("Already got Achievement!");
		}
	} else {
		show_debug_message("Achievement not in List!");
	}
}

AddAchievement("Started Game", "You started the Game", sAchStartGame);
AddAchievement("Test", "Tested Achievements", sAchDebug);
AddAchievement("Level2", "You finished a level with 2 Stars", ph_1_16x16);