range = 300;
fire_rate = room_speed / 3;
shooting = false;
objectToShoot = noone;


tower_base = instance_create_depth(x, y, -1, obj_TowerBase);

move_snap(64, 64);


//FOR ROTATION
objectToShoot_x = room_width; //Sets the x-Position of the Enemy to determine to shooting direction
objectToShoot_y = y + 1; //Sets the y-Position of the Enemy to determine to shooting direction
rspeed = 5; //Speed of the Rotation
Point_dir = 0; //the variable that will store what direction to rotate to