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