if(col == c_white){
	oGridManager.placeSnapped(mouse_x,mouse_y,towerType,"Towers");
	//instance_create_layer(mouse_x, mouse_y, "Towers", towerType);
	oStats.towersBuild += 1;
	instance_destroy();
}