if (!hasAch) {
	info = "not yet earned";
	image_index = 1;
} else {
	image_index = 0;
}

if (!onlyDisplay){
	if(x + sprite_width >= room_width - distanceToWall && isSlidingIn) {
		x -= moveSpeed;
	}
	
	if(x + sprite_width < room_width - distanceToWall && isSlidingIn) {
		isSlidingIn = false;
		alarm[0] = displayTime;
	}
	
	if(x < room_width + distanceToWall && isSlidingOut) {
		x += moveSpeed;
	}
	
	if(x > room_width && isSlidingOut) {
		instance_destroy(self);
	}
}

if(!onlyDisplay){
	y = room_height / 2 - (sprite_height / 2);
}