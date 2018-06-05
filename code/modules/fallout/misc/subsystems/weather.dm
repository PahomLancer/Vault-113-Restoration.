var/datum/subsystem/weather/SSweather
/datum/subsystem/weather
	name = "Weather"
	wait = 10
	priority = 3000
	can_fire = 1
	var/list/datum/weather_controller/controllers = list()
	var/list/datum/weather_controller/active = list()
	var/min_interval = 12000
	var/max_interval = 24000
	var/next_weather
	var/list/outside_areas = list()

/datum/subsystem/weather/New()
	NEW_SS_GLOBAL(SSweather)

/datum/subsystem/weather/fire(resumed=FALSE)

	for(var/datum/weather_controller/W in active)
		if(W.stop_time < world.time)
			stop_weather(W.id)
			continue
		W.process(resumed)

	if(world.time > next_weather)
		var/weather = get_random_weather()
		if(weather)
			apply_weather(weather)
			next_weather = world.time + rand(min_interval, max_interval)

/datum/subsystem/weather/Initialize(start_timeofday)
	for(var/area/A in world)
		if(A.open_space)
			A.icon = 'icons/fallout/misc/weather.dmi'
			A.invisibility = 0
			A.blend_mode = 1
			outside_areas += A
	generate_controllers()
	next_weather = world.time + rand(min_interval, max_interval)
	..()

/datum/subsystem/weather/proc/apply_weather(weather_id)
	var/datum/weather_controller/weather = controllers[weather_id]
	active |= weather
	weather.on_start()

/datum/subsystem/weather/proc/stop_weather(weather_id)
	var/datum/weather_controller/weather = controllers[weather_id]
	active -= weather
	weather.on_end()

/datum/subsystem/weather/proc/get_random_weather()
	var/list/all_weathers = shuffle(controllers)

	if(all_weathers.len == active.len)
		return FALSE

	for(var/W in all_weathers)
		var/datum/weather_controller/weather = all_weathers[W]
		if((weather in active) || !weather.can_start())
			all_weathers -= W
			continue
		all_weathers[W] = weather.chance
	if(all_weathers.len < 1)
		return FALSE
	world << all_weathers
	return pickweight(all_weathers)

/datum/subsystem/weather/proc/generate_controllers()
	var/controller_types = typesof(/datum/weather_controller) - /datum/weather_controller
	for(var/controller in controller_types)
		var/datum/weather_controller/W = new controller()
		controllers[W.id] = W