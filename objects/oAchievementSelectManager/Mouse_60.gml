if(scrollableUp) {
	for (i = 1; i < array_length(achievementMessage); i++)
	{
		achievementMessage[i].y += scrollSpeed;
	}
}

if(achievementMessage[1].y >= 0)
{
	scrollableUp = false;
} else {
	scrollableUp = true;	
}
