Point_dir = point_direction(x,y,objectToShoot_x,objectToShoot_y); //the angle to rotate to, add 90 degrees to current angle

image_angle += sin(degtorad(Point_dir - image_angle))*rspeed; //rotates the image to the target