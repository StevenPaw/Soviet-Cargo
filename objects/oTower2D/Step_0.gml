x = mouse_x;
y = mouse_y;

if(place_meeting(x,y,oRestriction) or place_meeting(x,y,oTowerParent)) col = c_red;
else col = c_white;