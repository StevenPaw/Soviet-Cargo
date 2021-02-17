/// @description Shoot logic

if(instance_exists(objectToShoot)){
	alarm[0] = fire_rate / global.gameSpeed;
}else {
	shooting = false;
	alarm[2] = 100 * aiSpeed;
}