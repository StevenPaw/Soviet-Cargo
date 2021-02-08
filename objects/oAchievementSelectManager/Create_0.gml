Achievementlist[0] = ds_list_read(oAchievementManager.achievements,0);
for(j=0; j < ds_list_size(oAchievementManager.achievements); j++)
{
	Achievementlist[j] = ds_list_read(oAchievementManager.achievements,j);
}

curX = 0;
curY = 50;
maxY = 0;
scrollableDown = true;
scrollableUp = false;
scrollSpeed = 10;

for (i = 1; i < array_length(Achievementlist); i++)
{
	//if(oAchievementManager.achGot[i]){
		if(curX = 0){
			curX = 100;	
		}else if(curX = 100){
			curX = 400;	
		}else if(curX = 400){
			curX = 700;	
		}else if(curX = 400){
			curX = 700;	
		}else if(curX = 700){
			curX = 1000;	
		} else {
			curY += 300;
			curX = 100;
		}
		
		achievementMessage[i] = instance_create_layer(curX, curY, "Achievements", oAchievementBox)
	
		achievementMessage[i].info = oAchievementManager.achTime[i];
		achievementMessage[i].title = ds_list_find_value(oAchievementManager.achievements, i - 1);
		achievementMessage[i].description = oAchievementManager.achDescription[i];
		achievementMessage[i].image = oAchievementManager.achImage[i];
		achievementMessage[i].onlyDisplay = true;
		achievementMessage[i].hasAch = oAchievementManager.achGot[i];
	
		maxY = curY;
	//}
}