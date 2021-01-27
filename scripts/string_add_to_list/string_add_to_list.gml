// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

/// @description string_add_to_list(list, string, delimiter)
function string_add_to_list(){
	var l, s, d, temp_str;
	l = argument[0];
	s = argument[1];
	d = argument[2];
	temp_str = "";
	for (var i = 1; i <= string_length(s); i++) {
		temp_str += string_char_at(s, i);
		if (string_char_at(s, i+1) == d) {
			ds_list_add(l, temp_str);
			temp_str = "";
			i++;
		}
	}
}