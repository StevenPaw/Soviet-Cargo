//set the image to the corresponding state
switch (state){
	default:
		image_index = 0;
		break;
	case 1:
		image_index = 1;
		break;
	case 2: 
		image_index = 2;
		break;
}

if(x <= room_width - sprite_width - 50){
	speed = 0;	
}