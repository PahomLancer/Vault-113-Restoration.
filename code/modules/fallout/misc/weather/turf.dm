turf/proc/has_weather(weather_id)
	if(!SSweather)
		return FALSE
	var/area/A = loc
	if(A.open_space && (SSweather.controllers[weather_id] in SSweather.active))
		return TRUE
	return FALSE