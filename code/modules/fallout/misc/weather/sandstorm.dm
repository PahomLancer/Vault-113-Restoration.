#define SANDSTORM_CHANNEL 16

/datum/weather_controller/sandstorm
	name = "sandstorm"
	id = "sandstorm"
	desc = "Sandstorm."

	overlay = "sandstorm"
	chance = 5
	duration_min = 2000
	duration_max = 5000
	var/list/mobs = list()
	var/list/currentrun = list()
	var/started = FALSE

/datum/weather_controller/sandstorm/on_start()
	stop_time = world.time + duration_max
	spawn(300)
		started = TRUE
		..()
	for (var/area/A in SSweather.outside_areas)
		for(var/mob/living/carbon/human/H in A)
			H.playsound_local(get_turf(H), 'sound/f13effects/sandstorm_transition.ogg', vol = 15, channel = SANDSTORM_CHANNEL, repeat = 1)
	return TRUE

/datum/weather_controller/sandstorm/on_end()
	started = FALSE
	. = ..()

/datum/weather_controller/sandstorm/can_start()
	if((SSweather.controllers["rain"] in SSweather.active) || (SSweather.controllers["fog"] in SSweather.active))
		return FALSE
	return TRUE

/datum/weather_controller/sandstorm/on_mob_enter(mob/mob, area/area)
	. = ..()
	if(area && area.open_space)
		if(istype(mob,/mob/living/carbon/human))
			mobs |= mob
		if(started)
			mob.playsound_local(get_turf(mob), 'sound/f13effects/sandstorm_loop.ogg', vol = 15, channel = SANDSTORM_CHANNEL, repeat = 1)
		else
			mob.playsound_local(get_turf(mob), 'sound/f13effects/sandstorm_transition.ogg', vol = 15, channel = SANDSTORM_CHANNEL, repeat = FALSE)

/datum/weather_controller/sandstorm/on_mob_exit(mob/mob, area/area)
	. = ..()
	mobs -= mob
	mob.playsound_local(get_turf(mob), null, vol = 0, channel = SANDSTORM_CHANNEL, repeat = 1)

/datum/weather_controller/sandstorm/process()
	if(!started)
		return
	if(prob(75))
		spawn(rand(1,10))
			var/turf/open/turf = locate(rand(1,world.maxx), rand(1,world.maxy), rand(1,world.maxz))
			var/area/A = turf.loc
			if(A.open_space)
				lightningstrike(turf)
	if(!currentrun.len)
		currentrun = mobs.Copy()
	while(currentrun.len)
		var/mob/living/M = currentrun[currentrun.len]
		currentrun.len--
		if(istype(M, /mob/living/carbon/human))
			//if(prob(0.5))
				//lightningstrike(get_turf(M))
			var/mob/living/carbon/human/H = M
			if((!H.wear_mask || !(H.wear_mask.flags_inv & HIDEFACE)) && (!H.head || !(H.head.flags_inv & HIDEFACE)))
				H.adjustOxyLoss(2)
		if (TICK_CHECK)
			return
	currentrun.Cut()