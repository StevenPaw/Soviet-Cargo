Roomlist[0] = oLevelManager.Room[0];
for(j=0; j < array_length(oLevelManager.Room); j++)
{
	Roomlist[j] = oLevelManager.Room[j];
}

curX = 0;
curY = 0;
maxY = 0;
scrollableDown = true;
scrollableUp = false;
scrollSpeed = 10;

for (i = 1; i < array_length(Roomlist); i++)
{
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
	
	roomButton[i] = instance_create_layer(curX, curY,"LevelLayer",oLevelButton);
	
	roomButton[i].selectedLevel = Roomlist[i];
	roomButton[i].levelNumber = i;
	
	if (i > 1) {
		if(oLevelManager.levelComplete[i-1] > 0) {
			roomCheckmark[i] = instance_create_layer(curX -15, curY -20, "LevelCheckmarks", oLevelCheckmark);
			roomCheckmark[i].stars = oLevelManager.levelComplete[i];
		} else {
			roomCheckmark[i] = instance_create_layer(curX -15, curY -20, "LevelCheckmarks", oLockedIndicator);
			roomButton[i].state = 3;
		}
	} else {
		roomCheckmark[i] = instance_create_layer(curX -15, curY -20, "LevelCheckmarks", oLevelCheckmark);
		roomCheckmark[i].stars = oLevelManager.levelComplete[i];
	}
	
	
	
	maxY = curY;
}