if(progress < lifetime) {
	progress += 1;
} else {
	instance_destroy();
}