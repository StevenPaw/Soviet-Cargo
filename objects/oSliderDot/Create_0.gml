currentValue = 0;
maxValue = 100;
slider = noone;

function changeValue() {
	if(slider.isChangeable) {
	//move x to mouse if mouse is on slider
	if(mouse_x <= slider.x + slider.sprite_width && mouse_x >= slider.x){
		x = mouse_x;
		
		var maxX = slider.sprite_width;
		var minX = slider.x;
		
		currentValue = (100 / maxX) * (x - minX);
		
		return round(currentValue);
	}
	}
}