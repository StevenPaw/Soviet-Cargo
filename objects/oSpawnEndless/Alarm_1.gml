if (global.gameSpeed > 0) {

	if(spawnActive) {
		if(instance_number(par_Enemy) <= 0){
			if(!oFailScreen.isActive){
			spawn_count = 0;
			spawn_count_max += 2; //increases enemycount of wave by two each time a new wave begins
			global.wave++;
			global.hp += 5;
			}
			if(spawn_rate > 11) {
				spawn_rate -= 10;
			}
			alarm[0] = spawn_rate / global.gameSpeed;
		}
	} else {
		global.wave = 0;
	}
}

alarm[1] = room_speed * 3;