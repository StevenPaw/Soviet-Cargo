
if (global.gameSpeed > 0) {

	var enemy = oEnemy;

	if(spawnActive && spawn_count <= spawn_count_max){
		
		if(global.wave < 5) {
			enemy = oEnemy;
		} else if(global.wave >= 5) {
			randomize();
			enemy = choose(oEnemy,oEnemyShield,oEnemySky,oEnemySpeed,oEnemyUnderground,oEnemyWater);
		}
	
		if(!oWinScreen.isActive && !oFailScreen.isActive){
			if(enemy == oEnemy || enemy = oEnemyShield || enemy = oEnemySpeed) {
				instance_create_layer(x,y,"EnemiesGround",enemy);
			} else if (enemy = oEnemySky) {
				instance_create_layer(x,y,"EnemiesSky",enemy);
			} else if (enemy = oEnemyUnderground) {
				instance_create_layer(x,y,"EnemiesUnderground",enemy);
			} else if (enemy = oEnemyWater) {
				instance_create_layer(x,y,"EnemiesWater",enemy);
			}
		}
		
		spawn_count += 1;
	}
	alarm[0] = spawn_rate;
}