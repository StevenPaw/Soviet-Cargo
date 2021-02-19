/// @description Do Rainy stuff
height -= 1 * global.gameSpeed;

if(height <= 0) {
	instance_destroy();
	instance_create_layer(x,y,"EnemiesSky",oSplash);
}