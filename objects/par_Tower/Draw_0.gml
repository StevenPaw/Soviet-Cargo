draw_self();
if(oRangeHover.isInRange(x,y,sprite_width,sprite_height))
{
	draw_circle(x,y,maxrange,true);
	draw_circle(x,y,minrange,true);
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