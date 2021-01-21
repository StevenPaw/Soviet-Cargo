if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse){
	instance_create_depth(mouse_x, mouse_y, -9, draggableTower);
	global.isBuying = true;
}
