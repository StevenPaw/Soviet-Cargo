/// @description Rotation and Pausefix

//Rotate Tower to Enemy
Point_dir = point_direction(x,y,objectToShoot_x,objectToShoot_y); //the angle to rotate to, add 90 degrees to current angle
image_angle += sin(degtorad(Point_dir - image_angle))*rspeed * global.gameSpeed; //rotates the image to the target

//Makes sure after pausing the alarm is still working:
if(alarm[0] < -1 && global.gameSpeed > 0) {
	alarm[0] = 1;
}

//if there is nothing to shoot, move a bit
if(!instance_exists(objectToShoot)) {
	image_angle += aiSpeed * global.gameSpeed;
}