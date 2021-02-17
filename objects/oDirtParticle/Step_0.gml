alpha -= 0.05;
if(alpha < 0) {
	instance_destroy(id);
}
image_angle += rotateSpeed;
image_alpha = alpha;