alpha -= 0.005;
if(alpha < 0) {
	instance_destroy(id);
}
image_angle += rotateSpeed;
image_alpha = alpha;

image_xscale = size * scaler;
image_yscale = image_xscale;