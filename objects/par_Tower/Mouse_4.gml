if(instance_exists(oCircleMenuHolder)) {
	infBox = instance_find(oCircleMenuHolder, 0);
	instance_destroy(infBox);
} 

circleMenu = instance_create_depth(x,y,-99,oCircleMenuHolder);
circleMenu.clickedTower = self.id;