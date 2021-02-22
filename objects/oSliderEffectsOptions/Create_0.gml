currentValue = round(global.effectsVolume * 100);
maxValue = 100;
sliderWidth = sprite_width;
text = "Effects Volume: ";
suffix = "%";
isChangeable = true;

sliderWidth = currentValue * 0.01;

if(isChangeable) {
	sliderDot = instance_create_layer(x + (sprite_width / maxValue) * currentValue,y,"Options2",oSliderDot);
	sliderDot.currentValue = currentValue;
	sliderDot.maxValue = maxValue;
	sliderDot.slider = id;
}