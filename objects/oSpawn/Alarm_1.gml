if(instance_number(oEnemy) <= 0){
	
	spawn_count = 0;
	spawn_amount++;
	global.level++;
	global.hp += 10;
	//global.spd += 0.1; <--- increases enemy speed per wave
	spawn_rate -= 3.5;
	alarm[0] = spawn_rate;
}

alarm[1] = room_speed * 3;