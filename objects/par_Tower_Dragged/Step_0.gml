x = oGridManager.moveSnapped(mouse_x);
y = oGridManager.moveSnapped(mouse_y);

//x = mouse_x;
//y = mouse_y;

if(place_meeting(x,y,par_Restriction) or place_meeting(x,y,par_Tower)) col = c_red;
else col = c_white;