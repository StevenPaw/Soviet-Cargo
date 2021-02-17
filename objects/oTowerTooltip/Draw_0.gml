draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


if(errorState = 0) {
	draw_set_font(fTooltipName);
	draw_text(x, y - 17 - sprite_height / 2, towerName);

	draw_set_font(fTooltipDescription);
	draw_text(x, y + 3 - sprite_height / 2, towerShortText);
}else {
	draw_set_font(fTooltipName);
	draw_text(x, y - 24 - sprite_height / 2, towerName);

	draw_set_font(fTooltipDescription);
	draw_text(x, y - 3 - sprite_height / 2, towerShortText);
		
	draw_set_color(c_red);
	draw_set_font(fTooltipError);
	draw_text(x, y + 15 - sprite_height / 2, errorMessage[errorState]);
}


//Show targetType Info
var tTSize = 0.55;
var yOffset = 20;
var xOffset = 0;
var spaceBetweenTargets = 40;

targetList[0] = "";
targetCount = 0;

if(targetGround) {
	targetList[targetCount] = "ground";
	targetCount += 1;
}
if(targetWater) {
	targetList[targetCount] = "water";
	targetCount += 1;
}
if(targetSky) {
	targetList[targetCount] = "sky";
	targetCount += 1;
}
if(targetUnderground) {
	targetList[targetCount] = "underground";
	targetCount += 1;
}

switch(array_length(targetList)) {
	default:
		break;
	case 1:
		xOffset = 0;
		break;
	case 2:
		xOffset = -spaceBetweenTargets * 0.5;
		break;
	case 3:
		xOffset = -spaceBetweenTargets * 1;
		break;
	case 4:
		xOffset = -spaceBetweenTargets * 1.5;
		break;
}

for (i = 0; i < array_length(targetList); i++) {
	switch (targetList[i]) {
		default:
			break;
		case "ground":
			draw_sprite_ext(sGround,1,x + xOffset,y - sprite_height - yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "water":
			draw_sprite_ext(sWater,1,x + xOffset,y - sprite_height - yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "sky":
			draw_sprite_ext(sSky,1,x + xOffset,y - sprite_height - yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "underground":
			draw_sprite_ext(sUnderground,1,x + xOffset,y - sprite_height - yOffset,tTSize,tTSize,0,c_white,1);
			break;
	}

	xOffset += spaceBetweenTargets;
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);