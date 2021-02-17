/// @description Tower Animation
if (image_index = 0) {
	image_index = 1;
	reloading = true;
	alarm[3] = reloadingTime / global.gameSpeed;
	effect_create_below(ef_smoke,x,y,500,c_grey);
	for (i = 0; i < instance_number(par_EnemyUnderground); i++) {
		if(distance_to_object(instance_find(par_EnemyUnderground, i)) < maxrange) {
			show_debug_message("Distance to Enemy " + string(i) + ": " + string(distance_to_object(instance_find(par_EnemyUnderground, i))));
			enemyToAttack = instance_find(par_EnemyUnderground, i);
			enemyToAttack.Damage(areaDamage);
		}
	}
} else if (image_index = 1){
	image_index = 0; // Resets the Tower
	reloading = false;
}