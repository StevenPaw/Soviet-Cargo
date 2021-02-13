/// @description Draw and find target
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
		infoBox.towerName = nearest.clickableObjectType.infoName;
		infoBox.towerRange = nearest.clickableObjectType.infoRange;
		infoBox.towerSpeed = nearest.clickableObjectType.infoSpeed;
		infoBox.towerCost = nearest.clickableObjectType.infoCost;
		infoBox.towerEnergy = nearest.clickableObjectType.infoEnergy;
		infoBox.towerSellCost = nearest.clickableObjectType.infoSell;
		infoBox.towerDescription = nearest.clickableObjectType.infoDescription;
	}
}


//Find Target
//first set possible target groups
var enemy = instance_nearest(x,y,par_Enemy);
switch(targetTypes) {
	default:
		enemy = instance_nearest(x,y,par_Enemy);
		break;
	case 1:
		enemy = instance_nearest(x,y,par_EnemyGround);
		break;
	case 2:
		enemy = instance_nearest(x,y,par_EnemyWater);
		break;
	case 4:
		enemy = instance_nearest(x,y,par_EnemySky);
		break;
	case 3:
		var enemy1 = instance_nearest(x,y,par_EnemyGround);
		var enemy2 = instance_nearest(x,y,par_EnemyWater);
		if(enemy1 == noone && enemy2 == noone) {
			enemy = noone;
			break;
		} else if(enemy1 == noone) {
			enemy = enemy2;
			break;
		} else if(enemy2 == noone) {
			enemy = enemy2;
			break;
		}
		
		if(distance_to_object(enemy1) < distance_to_object(enemy2)) {
			enemy = enemy1;
			break;
		} else {
			enemy = enemy2;
			break;
		}
	case 5:
		var enemy1 = instance_nearest(x,y,par_EnemyGround);
		var enemy2 = instance_nearest(x,y,par_EnemySky);
		if(enemy1 == noone && enemy2 == noone) {
			enemy = noone;
			break;
		} else if(enemy1 == noone) {
			enemy = enemy2;
			break;
		} else if(enemy2 == noone) {
			enemy = enemy2;
			break;
		}
		
		if(distance_to_object(enemy1) < distance_to_object(enemy2)) {
			enemy = enemy1;
			break;
		} else {
			enemy = enemy2;
			break;
		}
	case 6:
		var enemy1 = instance_nearest(x,y,par_EnemyWater);
		var enemy2 = instance_nearest(x,y,par_EnemySky);
		if(enemy1 == noone && enemy2 == noone) {
			enemy = noone;
			break;
		} else if(enemy1 == noone) {
			enemy = enemy2;
			break;
		} else if(enemy2 == noone) {
			enemy = enemy2;
			break;
		}
		
		if(distance_to_object(enemy1) < distance_to_object(enemy2)) {
			enemy = enemy1;
			break;
		} else {
			enemy = enemy2;
			break;
		}
}

//secondly check for needed distance
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
	draw_text(x,y,"Next Shoot: " + string(alarm[0]))
}