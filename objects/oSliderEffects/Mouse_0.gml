if(isChangeable) {
	currentValue = sliderDot.changeValue();
	if(maxValue >= 0 && currentValue >= 0 && currentValue <= maxValue) {
		sliderWidth = currentValue * 0.01;
		global.effectsVolume = currentValue * 0.01;
	}
}