if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse){
	if(instance_exists(par_Tower_Dragged)) {
		infBox = instance_find(par_Tower_Dragged, 0);
		instance_destroy(infBox);
	} 
	instance_create_depth(mouse_x, mouse_y, -9, draggableTower);
	global.isBuying = true;
}
