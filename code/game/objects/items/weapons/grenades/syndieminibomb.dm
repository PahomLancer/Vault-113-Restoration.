/obj/item/weapon/grenade/syndieminibomb
	desc = "A syndicate manufactured explosive used to sow destruction and chaos"
	name = "syndicate minibomb"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "syndicate"
	item_state = "flashbang"
	origin_tech = "materials=3;magnets=4;syndicate=3"


/obj/item/weapon/grenade/syndieminibomb/prime()
	update_mob()
	explosion(src.loc,1,2,4,flame_range = 2)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/dynamite
	desc = "A stick of dynamite. The merchant of death's making bank. Light the fuse and toss."
	name = "Dynamite"
	icon_state = "dynamite"
	origin_tech = "materials=1;magnets=2"
	det_time = 30

/obj/item/weapon/grenade/syndieminibomb/dynamite/prime()
	update_mob()
	explosion(src.loc,0,3,6,flame_range = 0)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/dynim
	desc = "A high explosive, consisting of nitroglycerin mixed with the absorbent substance kiselguhr. Includes a timer. 1 minute timer setuped."
	name = "Dynamite"
	icon_state = "dynim"
	origin_tech = "materials=1;magnets=2"
	det_time = 600

/obj/item/weapon/grenade/syndieminibomb/dynim/prime()
	update_mob()
	explosion(src.loc,0, 7, 12,flame_range = 0)
	qdel(src)

/*/obj/item/weapon/grenade/syndieminibomb/dynim/attack_self(mob/user)
	var/newtime = input(usr, "Please set the timer.", "Timer", 10) as num
	if(user.get_active_held_item() == src)
		newtime = Clamp(newtime, 10, 60000)
		det_time = newtime
		to_chat(user, "Timer set for [det_time] seconds.")*/

/obj/item/weapon/grenade/syndieminibomb/molotov
	desc = "A home-made flammable grenade."
	name = "Molotov cocktail"
	icon_state = "molotov"
	origin_tech = "materials=1;magnets=2"
	det_time = 15

/obj/item/weapon/grenade/syndieminibomb/molotov/prime()
	update_mob()
	explosion(src.loc,0,0,1,flame_range = 4)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/tincan
	desc = "Some powder in tincan."
	name = "Tincan"
	icon_state = "tincan"
	origin_tech = "materials=1;magnets=2"

/obj/item/weapon/grenade/syndieminibomb/tincan/prime()
	update_mob()
	explosion(src.loc,0,3,7,flame_range = 0)
	qdel(src)


/obj/item/weapon/grenade/syndieminibomb/concussion
	name = "HE Grenade"
	desc = "A compact shrapnel grenade meant to devestate nearby organisms and cause some damage in the process. Pull pin and throw opposite direction."
	icon_state = "concussion"
	origin_tech = "materials=3;magnets=4;syndicate=2"

/obj/item/weapon/grenade/syndieminibomb/concussion/prime()
	update_mob()
	explosion(src.loc,0,8,16,flame_range = 0)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/concussion/frag
	name = "frag grenade"
	desc = "Fire in the hole."
	icon_state = "frag"

/obj/item/weapon/grenade/syndieminibomb/concussion/frag/prime()
	update_mob()
	explosion(src.loc,5,10,20,flame_range = 0)
	qdel(src)

/obj/item/weapon/grenade/syndieminibomb/concussion/frag_fal
	name = "Frag grenade"
	desc = "A generic fragmentation grenade. Contains a small amount of high explosives, the container itself forming most of the damaging fragments. Explodes on contact."
	icon_state = "frag_fal"

/obj/item/weapon/grenade/syndieminibomb/concussion/frag_fal/prime()
	update_mob()
	explosion(src.loc,0,4,8,flame_range = 0)
	qdel(src)

/obj/item/weapon/grenade/gluon
	desc = "An advanced grenade that releases a harmful stream of gluons inducing radiation in those nearby. These gluon streams will also make victims feel exhausted, and induce shivering. This extreme coldness will also likely wet any nearby floors."
	name = "gluon frag grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "bluefrag"
	item_state = "flashbang"
	var/freeze_range = 4
	var/rad_damage = 35
	var/stamina_damage = 30

/obj/item/weapon/grenade/gluon/prime()
	update_mob()
	playsound(loc, 'sound/effects/EMPulse.ogg', 50, 1)
	radiation_pulse(loc,freeze_range,freeze_range+1,rad_damage)
	for(var/turf/T in view(freeze_range,loc))
		if(isfloorturf(T))
			var/turf/open/floor/F = T
			F.wet = TURF_WET_PERMAFROST
			addtimer(CALLBACK(F, /turf/open/floor.proc/MakeDry), rand(3000, 3100), TURF_WET_PERMAFROST)
			for(var/mob/living/carbon/L in T)
				L.adjustStaminaLoss(stamina_damage)
				L.bodytemperature -= 230
	qdel(src)
