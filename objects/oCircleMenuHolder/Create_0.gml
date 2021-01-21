mouseOnMenu = true;
clickedTower = oTowerDouble;

buttonSell = instance_create_depth(x,y,-100,oCircleMenuSell);
buttonInfo = instance_create_depth(x,y,-100,oCircleMenuInfo);
buttonReposition = instance_create_depth(x,y,-100,oCircleMenuReposition);

buttonSell.clickedTower = clickedTower;
buttonInfo.clickedTower = clickedTower;
buttonReposition.clickedTower = clickedTower;