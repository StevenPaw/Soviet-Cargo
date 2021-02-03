//oGridManager.drawSnapped(x,y,sprite_index,image_index);

draw_self();
if(oRangeHover.isInRange(x,y,sprite_width,sprite_height))
{
	draw_circle(x,y,maxrange,true);
	draw_circle(x,y,minrange,true);
	if(keyboard_check(ord("I"))) {
		nearest = instance_nearest(x,y,par_Traps);
		
		if(instance_exists(oInfoBox)) {
			infBox = instance_find(oInfoBox, 0);
			instance_destroy(infBox);
		}

		infoBox = instance_create_layer(room_width/2, room_height/2, "GUI1", oInfoBox);
		infoBox.towerName = nearest.clickableObjectType.infoName;
		infoBox.towerRange = nearest.clickableObjectType.infoRange;
		infoBox.towerSpeed = nearest.clickableObjectType.infoSpeed;
		infoBox.towerCost = nearest.clickableObjectType.infoCost;
		infoBox.towerEnergy = nearest.clickableObjectType.infoEnergy;
		infoBox.towerSellCost = nearest.clickableObjectType.infoSell;
		infoBox.towerDescription = nearest.clickableObjectType.infoDescription;
	}
}


var enemy = instance_nearest(x,y,par_Enemy);
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

//Debuginfo
if(oDebugManager.debug) {
	draw_text(x,y,"Uses left: " + string(uses) + "/" + string(maxuses));
}