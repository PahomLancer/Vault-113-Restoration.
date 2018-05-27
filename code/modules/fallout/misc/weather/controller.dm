/datum/weather_controller
	var/name = "weather controller"
	var/id = "weather_id"
	var/desc = "Controlling weather mechanic."

	var/overlay
	var/chance = 0		//chance to weather apply
	var/duration_min = 0
	var/duration_max = 0
	var/area/area
	var/stop_time

/datum/weather_controller/proc/on_start()
	for (var/area/A in SSweather.outside_areas)
		A.add_cached_overlay(id, overlay)
	stop_time = world.time + rand(duration_min, duration_max)
	for (var/mob/M in mob_list)
		var/area/A = get_area(M)
		on_mob_enter(M, A)
	return TRUE
/datum/weather_controller/proc/on_end()
	for (var/area/A in SSweather.outside_areas)
		A.remove_cached_overlay(id)
	for (var/mob/M in mob_list)
		var/area/A = get_area(get_turf(M))
		on_mob_exit(M, A)
	return TRUE

/datum/weather_controller/proc/can_start()
	return TRUE

/datum/weather_controller/process(resumed=FALSE)
	return TRUE

/datum/weather_controller/proc/on_mob_enter(mob/mob, area/area) //calls when mob entered area with this weather
	return TRUE

/datum/weather_controller/proc/on_mob_exit(mob/mob, area/area)
	return TRUE

/datum/weather_controller/proc/lightningstrike(var/turf/T)
	if(!T)
		return
	new/obj/effect/overlay/temp/thunder(T)
	spawn(1)
		for(var/atom/movable/A in view(10,T))
			var/dist = get_dist(A,T)
			if(istype(A, /mob/living/carbon))
				var/mob/living/carbon/M = A
				if(M.client)
					M.playsound_local(T, 'sound/f13effects/thunderstrike.ogg', vol = 100)
				if(dist > 3)
					shake_camera(M, 2, 1)
					continue
				if(!M.special || !prob(M.special.getPoint("l")*10))
					M.fire_act(1000, 500)
					M.Weaken(5)
					M.blur_eyes(50)
					M.apply_damage(damage = 50,damagetype = BURN)
					shake_camera(M, 5, 4)
				else
					M.visible_message("<font color='green'>[M] is lucky as hell!</font>")
			else if(istype(A, /mob/living/carbon))
				var/mob/living/M = A
				M.apply_damage(damage = 150,damagetype = BURN)
			else
				if(dist > 5)
					continue
				A.fire_act(1000, 500)
		for(var/client/C in clients)
			var/turf/turf = get_turf(C.mob)
			if(turf.z == 1)
				C.mob.playsound_local(turf, pick('sound/f13effects/thunder_01.ogg', 'sound/f13effects/thunder_02.ogg', 'sound/f13effects/thunder_03.ogg', 'sound/f13effects/thunder_04.ogg', 'sound/f13effects/thunder_05.ogg', 'sound/f13effects/thunder_06.ogg'), vol = 100)
