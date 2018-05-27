#define RAIN_CHANNEL 15
/datum/weather_controller/rain
	name = "rain"
	id = "rain"
	desc = "Simple rain."

	overlay = "rain"
	chance = 40
	duration_min = 1000
	duration_max = 10000
	var/power = "normal"
	var/outside_sound
	var/inside_sound

/datum/weather_controller/rain/on_start()
	power = pick("normal", "storm")
	switch(power)
		if("normal")
			overlay = "rain"
			outside_sound = 'sound/f13effects/rain_new_2.ogg'
			inside_sound = 'sound/f13effects/rain_houses_high.ogg'
		if("storm")
			overlay = "storm"
			outside_sound = 'sound/f13effects/rain_new_1.ogg'
			inside_sound = 'sound/f13effects/rain_houses_high.ogg'
	. = ..()
	if(SSplanter)
		SSplanter.wait /= 3

/datum/weather_controller/rain/on_end()
	. = ..()
	if(SSplanter)
		SSplanter.wait = initial(SSplanter.wait)

/datum/weather_controller/rain/on_mob_enter(mob/mob, area/area = locate(/area/f13/wasteland))
	if(area.open_space)
		mob.playsound_local(get_turf(mob), outside_sound, vol = 100, channel = RAIN_CHANNEL, repeat = 1)
	else if(area.roof)
		mob.playsound_local(get_turf(mob), inside_sound, vol = 100, channel = RAIN_CHANNEL, repeat = 1)
	. = ..()

/datum/weather_controller/rain/can_start()
	if((SSweather.controllers["sandstorm"] in SSweather.active))
		return FALSE
	return TRUE

/datum/weather_controller/rain/on_mob_exit(mob/mob, area/area)
	mob.playsound_local(get_turf(mob), null, vol = 0, channel = RAIN_CHANNEL, repeat = 1)
	. = ..()

/datum/weather_controller/rain/process()
	if(prob(5))
		var/turf/open/turf = locate(rand(1,world.maxx), rand(1,world.maxy), rand(1,world.maxz))
		var/area/A = turf.loc
		if(A.open_space)
			lightningstrike(turf)