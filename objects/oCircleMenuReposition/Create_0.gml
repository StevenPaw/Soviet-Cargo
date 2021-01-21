active = false;
clickedTower = oTowerDouble;

nearest = instance_nearest(x,y,par_Tower);
moneyback = nearest.cost;
powerback = nearest.powerCost;

function onClick() {
		
	if(global.coins >= nearest.cost / 2){
		instance_create_depth(mouse_x, mouse_y, -9, nearest.draggableObject);
		global.coins -= nearest.cost / 2;
		global.poweruse -= nearest.powerCost;
		instance_destroy(nearest);
	}
}