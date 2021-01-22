draw_self();
if(oRangeHover.isInRange(x,y,sprite_width,sprite_height))
{
	draw_circle(x,y,maxrange,true);
	draw_circle(x,y,minrange,true);
	if(keyboard_check(ord("I"))) {
		nearest = instance_nearest(x,y,par_Tower);
		
		if(instance_exists(oInfoBox)) {
			infBox = instance_find(oInfoBox, 0);
			instance_destroy(infBox);
		}

		infoBox = instance_create_layer(room_width/2, room_height/2, "GUI1", oInfoBox);
		infoBox.towerName = nearest.infoName;
		infoBox.towerRange = nearest.infoRange;
		infoBox.towerSpeed = nearest.infoSpeed;
		infoBox.towerCost = nearest.infoCost;
		infoBox.towerEnergy = nearest.infoEnergy;
		infoBox.towerSellCost = nearest.infoSell;
		infoBox.towerDescription = nearest.infoDescription;
	}
}


var enemy = instance_nearest(x,y,oEnemy);
if(enemy != noone){
	if(point_distance(x,y,enemy.x,enemy.y) <= maxrange+15){
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