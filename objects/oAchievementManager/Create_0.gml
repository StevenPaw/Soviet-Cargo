alarm[1] = 40;
achievements = ds_list_create();
achGot[0] = false;
achImage[0] = ph_1_16x16;
achDescription[0] = "ERROR";
achTime[0] = "01.01.2000 - 00:00";
achHidden[0] = false;
achCount = 0;

function AddAchievement(name, description, image, hidden) {
    achCount += 1;
    ds_list_add(achievements, name);
    achGot[achCount] = false;
    achImage[achCount] = image;
    achDescription[achCount] = description;
    achTime[achCount] = "not yet earned";
    achHidden[achCount] = hidden;
}

function giveAchievement(name) {
    if (ds_list_find_index(achievements, name) != -1) {
        //Calculates height of the Achievement-Box based on the number of shown boxes
        var yPos = 0;
        if (!instance_exists(oAchievementBox)) {
            yPos = room_height / 2 - 100;
        } else {
            var lastAch = instance_find(oAchievementBox, instance_number(oAchievementBox) - 1);
            var yOld = lastAch.y;
            yPos = yOld + 80;

            //for(j = 0; j < instance_number(oAchievementBox); j++) {
            //	yAdd += 80;
            //}
        }

        pointInList = ds_list_find_index(achievements, name);
        pointInList += 1;

        if (!achGot[pointInList]) {
            achGot[pointInList] = true;
            if (current_minute < 10) {
                minute = "0" + string(current_minute);
            } else {
                minute = string(current_minute);
            }
            if (current_hour < 10) {
                hour = "0" + string(current_hour);
            } else {
                hour = string(current_hour);
            }
            if (current_day < 10) {
                day = "0" + string(current_day);
            } else {
                day = string(current_day);
            }
            if (current_month < 10) {
                month = "0" + string(current_month);
            } else {
                month = string(current_month);
            }

            achTime[pointInList] = day + "." + month + "." + string(current_year) + " - " + hour + ":" + minute;
            achievementMessage = instance_create_layer(room_width, yPos, "Achievements", oAchievementBox)

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

function giveAllAchievements() {
    for (i = 0; i < ds_list_size(achievements); i++) {
        giveAchievement(ds_list_find_value(achievements, i));
    }
}

AddAchievement("Test", "Tested Achievements", sAchDebug, true);
AddAchievement("Started Game", "You started the Game", sAchStartGame, false);
AddAchievement("Prolog", "You started a new Game with Prolog", sAchStory, false);
AddAchievement("Study", "Master the Tutorial", sAchTutorial, false);
AddAchievement("1 Star", "You finished a level with 1 Star", sAch1Star, false);
AddAchievement("2 Stars", "You finished a level with 2 Stars", sAch2Star, false);
AddAchievement("3 Stars", "You finished a level with 3 Stars", sAch3Star, false);

for (i = 0; i < oLevelManager.levelCount; i++) {
    AddAchievement("Level " + string(i + 1), "You finished Level " + string(i + 1), sAchLevel, false);
}

AddAchievement("Fastest", "You used the fastest speed available", sAchFastest, false);
AddAchievement("First Enemy", "Kill your first enemy", sAchEnemy1, false);
AddAchievement("50 Enemies", "Kill 50 enemies", sAchEnemy50, false);
AddAchievement("100 Enemies", "Kill 100 enemies", sAchEnemy100, false);
AddAchievement("250 Enemies", "Kill 250 enemies", sAchEnemy250, false);
AddAchievement("First Tower", "Build your first tower", sAchTower1, false);
AddAchievement("25 Towers", "Build 25 towers", sAchTower25, false);
AddAchievement("50 Towers", "Build 50 towers", sAchTower50, false);
AddAchievement("100 Towers", "Build 100 towers", sAchTower100, false);
AddAchievement("200 Towers", "Build 200 towers", sAchTower200, false);
AddAchievement("First Trap", "Use your first trap", sAchTrap1, false);
AddAchievement("25 Traps", "Build 25 traps", sAchTrap25, false);
AddAchievement("50 Traps", "Build 50 traps", sAchTrap50, false);
AddAchievement("100 Traps", "Build 100 traps", sAchTrap100, false);
AddAchievement("200 Traps", "Build 200 traps", sAchTrap200, false);

AddAchievement("Easy Survival", "Survive 25 Waves in Easy Endless", sAchImageTemplate, false);
AddAchievement("Epic Easy Survival", "Survive 100 Waves in Easy Endless", sAchImageTemplate, false);
AddAchievement("Medium Survival", "Survive 25 Waves in Medium Endless", sAchImageTemplate, false);
AddAchievement("Epic Medium Survival", "Survive 100 Waves in Medium Endless", sAchImageTemplate, false);
AddAchievement("Hard Survival", "Survive 25 Waves in Hard Endless", sAchImageTemplate, false);
AddAchievement("Epic Hard Survival", "Survive 100 Waves in Hard Endless", sAchImageTemplate, false);