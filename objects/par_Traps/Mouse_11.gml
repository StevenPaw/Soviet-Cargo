hovering = false;
if(tooltipActive) {
	if(instance_exists(oTowerTooltip)){
		instance_destroy(instance_find(oTowerTooltip, 0));
	}
}