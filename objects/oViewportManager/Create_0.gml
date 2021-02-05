/// @description Allow Resizing

///Display Properties
ideal_width = 0;
ideal_height = 1024;

aspect_ratio = display_get_width() / display_get_height();

ideal_width = round(ideal_height * aspect_ratio);

//Check for odd numbers
if(ideal_width & 1)
	ideal_width++;
	
for(var i=room_first; i<room_last; i++)
{
	if(room_exists(i))
	{
		room_set_viewport(i,0,true,0,0,ideal_width,ideal_height);
		room_set_view_enabled(i, true);
	}
}

surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);