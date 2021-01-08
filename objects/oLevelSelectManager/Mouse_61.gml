if (scrollableDown) {
	for (i = 1; i < array_length(Roomlist); i++)
	{
		roomButton[i].y -= scrollSpeed;

		roomCheckmark[i].y -= scrollSpeed;
	}
}

if(roomButton[array_length(roomButton) - 1].y <= room_height - 300)
{
	scrollableDown = false;
} else {
	scrollableDown = true;	
}