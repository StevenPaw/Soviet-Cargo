/// @description Shoot logic

if(instance_exists(objectToShoot)){
	var bullet = instance_create_layer(x,y,"Traps",bulletType);
	bullet.type = objectToShoot.type;
	bullet.direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
	alarm[0] = fire_rate / global.gameSpeed;
}else {
	shooting = false;
	alarm[2] = 100 * aiSpeed;
}