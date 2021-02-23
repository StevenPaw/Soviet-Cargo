/// @description Scroll

if (mouse_wheel_up())
{
	if(scrollableUp) {
		for (i = 1; i < array_length(achievementMessage); i++)
		{
			achievementMessage[i].y += scrollSpeed;
		}
	}
}
else if (mouse_wheel_down())
{
	if (scrollableDown) {
		for (i = 1; i < array_length(achievementMessage); i++)
		{
			achievementMessage[i].y -= scrollSpeed;
		}
	}
}


if(achievementMessage[1].y >= 10)
{
	scrollableUp = false;
} else {
	scrollableUp = true;
}

if(achievementMessage[array_length(achievementMessage) - 1].y <= room_height - 100)
{
	scrollableDown = false;
} else {
	scrollableDown = true;	
}