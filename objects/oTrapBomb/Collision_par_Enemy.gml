instance_create_layer(x, y, "GUI1", oExplosion);
uses -=1;

if (uses <= 0) {
	instance_destroy();
}