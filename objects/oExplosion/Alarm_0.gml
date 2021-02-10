if(instance_exists(par_Enemy)) {
	for(i = 0; i < instance_number(par_Enemy); i++){
		enemy = instance_find(par_Enemy, i);
		
		var _xd = enemy.x - x;
		var _yd = enemy.y - y;
		dist = sqrt( _xd * _xd + _yd * _yd);
		
		if(dist <= explosionRange) {
			enemy.hp -= explosionDamage;
		}
	}
}