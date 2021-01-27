//spawn enemies till spawn amount is reached

if(spawnActive){
	if(spawn_count < spawn_amount){
		//only spawn new Enemies if WinScreen and FailScreen are not active
		if(!oWinScreen.isActive && !oFailScreen.isActive){
			instance_create_layer(x,y,"Enemies",oEnemy);
			spawn_count++;
		}
		alarm[0] = spawn_delay;
	}
}