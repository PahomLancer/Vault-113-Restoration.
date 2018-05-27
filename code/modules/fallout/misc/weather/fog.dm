/datum/weather_controller/fog
	name = "fog"
	id = "fog"
	desc = "Simple fog."

	overlay = "fog"
	chance = 20
	duration_min = 500
	duration_max = 2000

/datum/weather_controller/fog/on_mob_enter(mob/mob, area/area)
	. = ..()
	if(area && area.open_space && istype(mob, /mob/living/carbon/human) && mob.client)
		mob.overlay_fullscreen("fog", /obj/screen/fullscreen/fog, animated = 10)

/datum/weather_controller/fog/on_mob_exit(mob/mob, area/area)
	. = ..()
	if(area && area.open_space && istype(mob, /mob/living/carbon/human) && mob.client)
		mob.clear_fullscreen("fog", 5)

/datum/weather_controller/fog/can_start()
	if((SSweather.controllers["sandstorm"] in SSweather.active))
		return FALSE
	return TRUE

/obj/screen/fullscreen/fog
	icon = 'icons/fallout/misc/weather_screens.dmi'
	icon_state = "Fog"
	screen_loc = "1,1"