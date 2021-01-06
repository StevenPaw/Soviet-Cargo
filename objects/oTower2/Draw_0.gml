draw_self();
if(oRangeHover.isInRange(x,y,sprite_width,sprite_height)){
	draw_circle(x,y,range,true);
	draw_circle(x,y,minrange,true);
}


var enemy = instance_nearest(x,y,oEnemy);


//CODE DOESNT WORK YET (for min and max range):
/*
distancetoTower[0] = 0;

nearestEnemyInRange = undefined;
nearestEnemyDistance = 1000;
testedenemy[0] = noone;

for (i = 0; i < instance_number(oEnemy); i ++)
{
	if(testedenemy[i] != noone){
	testedenemy[i] = instance_find(oEnemy,i);
	}
}

for(i = 0; i < array_length(testedenemy) - 1; i++){
	if(instance_find(oEnemy,i) != noone){
	distancetoTower[i] = point_distance(x,y,instance_find(oEnemy,i).x,instance_find(oEnemy,i).y);
	}
}

for(i = 0; i < array_length(distancetoTower); i++){
	if(distancetoTower[i] > minrange && distancetoTower[i] < range) {
		if(distancetoTower[i] < nearestEnemyDistance){
			nearestEnemyInRange = instance_find(oEnemy, i);
			nearestEnemyDistance = distancetoTower[i];
		}
	}
}

if(nearestEnemyInRange != noone){
enemy = nearestEnemyInRange;
}else{
	enemy = noone;	
}
*/

if(enemy != noone){
	if(point_distance(x,y,enemy.x,enemy.y) <= range+15 && point_distance(x,y,enemy.x,enemy.y) >= minrange){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
			}
			
			objectToShoot = enemy;
			objectToShoot_x = objectToShoot.x;
			objectToShoot_y = objectToShoot.y;
			if(rangeHover(x,y,sprite_width,sprite_height))
				draw_line(x,y,enemy.x,enemy.y);
			}else {
				shooting = false;
				objectToShoot = noone;
		}
}