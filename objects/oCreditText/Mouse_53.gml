//Make Text Clickable
for (i = 0; i < array_length(CreditLink); i++) {
	var startY = y + spaceToHeader + spaceToTitle + (spaceBetweenCredits * i);
	
	text_width = string_width(CreditText[i]);
	text_height = string_height(CreditText[i]);
	
	if (point_in_rectangle(mouse_x, mouse_y, x - text_width * 0.75, startY, x + text_width * 0.75, startY + text_height))
	{
		if(CreditLink[i] != "") {
			url_open(CreditLink[i]);
		}
	}
}