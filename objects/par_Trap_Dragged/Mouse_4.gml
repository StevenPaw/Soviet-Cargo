if(col == c_white){
	oGridManager.placeSnapped(mouse_x,mouse_y,trapType,"Traps");
	//instance_create_layer(mouse_x, mouse_y, "Towers", trapType);
	instance_destroy();
}