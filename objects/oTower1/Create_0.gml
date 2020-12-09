range = 300;
fire_rate = room_speed / 3;
shooting = false;
objectToShoot = noone;

tower_base = instance_create_depth(x, y, -1, obj_TowerBase);

move_snap(64, 64);
