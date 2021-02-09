if (scrollableDown) {
	for (i = 1; i < array_length(achievementMessage); i++)
	{
		achievementMessage[i].y -= scrollSpeed;
	}
}

if(achievementMessage[array_length(achievementMessage) - 1].y <= room_height - 300)
{
	scrollableDown = false;
} else {
	scrollableDown = true;	
}