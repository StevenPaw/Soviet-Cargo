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
	
	roomCheckmark[i] = instance_create_layer(curX, curY, "LevelCheckmarks", oLevelCheckmark);
	if(oLevelManager.levelComplete[i]){
		roomCheckmark[i].isActive = true;
	} else {
		roomCheckmark[i].isActive = false;	
	}
	
	maxY = curY;
}