image_index = 0;
costPlace_y = costPlace_start;

if(instance_exists(oTowerTooltip)){
	instance_destroy(instance_find(oTowerTooltip, 0));
}

hovering = false;