/// @description Do Rainy stuff
height -= 1;

if(height <= 0) {
	instance_destroy();
	instance_create_layer(x,y,"EnemiesSky",oSplash);
}