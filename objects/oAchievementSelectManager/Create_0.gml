Achievementlist[0] = ds_list_read(oAchievementManager.achievements, 0);
for (j = 0; j < ds_list_size(oAchievementManager.achievements); j++) {
    Achievementlist[j] = ds_list_read(oAchievementManager.achievements, j);
}

curX = 0;
curY = 50;
maxY = 0;
scrollableDown = true;
scrollableUp = false;
scrollSpeed = 30;

for (i = 1; i <= array_length(Achievementlist); i++) {
    shown = true;

    if (oAchievementManager.achHidden[i] && !oAchievementManager.achGot[i]) {
        shown = false;
    }

    if (shown) {
        if (curX = 0) {
            curX = 300;
        } else if (curX = 300) {
            curX = 670;
        } else if (curX = 670) {
            curX = 1040;
        } else {
            curY += 100;
            curX = 300;
        }

        achievementMessage[i] = instance_create_layer(curX, curY, "Achievements", oAchievementBox)
    } else {
        achievementMessage[i] = instance_create_layer(room_width, 0, "Achievements", oAchievementBox)
    }


    achievementMessage[i].info = oAchievementManager.achTime[i];
    achievementMessage[i].title = ds_list_find_value(oAchievementManager.achievements, i - 1);
    achievementMessage[i].description = oAchievementManager.achDescription[i];
    achievementMessage[i].image = oAchievementManager.achImage[i];
    achievementMessage[i].onlyDisplay = true;
    achievementMessage[i].hasAch = oAchievementManager.achGot[i];

    maxY = curY;
    //}
}