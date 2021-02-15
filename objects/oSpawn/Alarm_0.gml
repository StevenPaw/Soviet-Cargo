if (global.gameSpeed > 0) {

//spawn enemies till spawn amount is reached

if(spawnActive){
	
	//Test for Waves
	if(!oWinScreen.isActive && !oFailScreen.isActive){
		if(spawn_count < oWaveManager.getWaveSize(global.wave)){
			switch(object_get_parent(oWaveManager.getEnemy(global.wave, spawn_count))) {
				default:
					instance_create_layer(x,y,"EnemiesGround",oWaveManager.getEnemy(global.wave, spawn_count));
					break;
				case par_EnemyWater:
					instance_create_layer(x,y,"EnemiesWater",oWaveManager.getEnemy(global.wave, spawn_count));
					break;
				case par_EnemySky:
					instance_create_layer(x,y,"EnemiesSky",oWaveManager.getEnemy(global.wave, spawn_count));
					break;
			}
			
		
			spawn_count++;
		}
	}
	alarm[0] = spawn_rate / global.gameSpeed;
}
}