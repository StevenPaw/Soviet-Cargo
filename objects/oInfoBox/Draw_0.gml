/// @description Draw Debuginfo

draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fInfoBox);
draw_text(tX + 91, tY + 28, towerName);

draw_set_font(fMenuSmall);
draw_text(tX + 60, tY + 80, towerRange);
draw_text(tX + 343, tY + 80, towerCost);
draw_text(tX + 491, tY + 80, towerSellCost);
draw_text(tX + 60, tY + 124, towerSpeed);
draw_text(tX + 343, tY + 124, towerEnergy);
draw_text(tX + 200, tY + 124, towerDamage);

draw_set_font(fInfoBox);
for(i = 0; i < array_length(towerDescription); i++){
	draw_text(tX + 24, tY + 170 + (i*35), towerDescription[i]);
}

//Show targetType Info
var tTSize = 0.3;
var yOffset = -10;
var xOffset = 200;
var spaceBetweenTargets = 20;

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

for (i = 0; i < array_length(targetList); i++) {
	switch (targetList[i]) {
		default:
			break;
		case "ground":
			draw_sprite_ext(sGround,1,x + xOffset,y + yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "water":
			draw_sprite_ext(sWater,1,x + xOffset,y + yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "sky":
			draw_sprite_ext(sSky,1,x + xOffset,y + yOffset,tTSize,tTSize,0,c_white,1);
			break;
		case "underground":
			draw_sprite_ext(sUnderground,1,x + xOffset,y + yOffset,tTSize,tTSize,0,c_white,1);
			break;
	}

	xOffset += spaceBetweenTargets;
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);
