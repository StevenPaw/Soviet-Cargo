tutFinished = true;
if(instance_exists(oTutorialManager)) {
	if (!oTutorialManager.tutorialFinished) {
		tutFinished = false;
	}
}
	
if(tutFinished) {
if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse){
	if(instance_exists(par_Trap_Dragged)) {
		infBox = instance_find(par_Trap_Dragged, 0);
		instance_destroy(infBox);
	} 
	if(instance_exists(par_Tower_Dragged)) {
		infBox = instance_find(par_Tower_Dragged, 0);
		instance_destroy(infBox);
	} 
	instance_create_depth(mouse_x, mouse_y, -9, draggableTrap);
	global.isBuying = true;
}
}

if(instance_exists(oTrapTooltip)){
	instance_destroy(instance_find(oTrapTooltip, 0));
}