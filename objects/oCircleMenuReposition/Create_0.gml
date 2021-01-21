active = false;
clickedTower = oTower1;

nearest = instance_nearest(x,y,oTowerParent);
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