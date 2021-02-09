if(scrollableUp) {
	for (i = 1; i < array_length(Roomlist); i++)
	{
		roomButton[i].y += scrollSpeed;

		roomCheckmark[i].y += scrollSpeed;
	}
}

if(roomButton[1].y >= 0)
{
	scrollableUp = false;
} else {
	scrollableUp = true;	
}
