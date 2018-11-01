/obj/item/weapon/gun
	name = "gun"
	desc = "It's a gun. It's pretty terrible, though."
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "detective"
	item_state = "gun"
	flags =  CONDUCT
	slot_flags = SLOT_BELT
	materials = list(MAT_METAL=2000)
	w_class = WEIGHT_CLASS_NORMAL
	throwforce = 5
	throw_speed = 3
	throw_range = 5
	force = 5
	origin_tech = "combat=1"
	needs_permit = 1
	unique_rename = 0
	attack_verb = list("struck", "hit", "bashed")

	var/fire_sound = "gunshot"
	var/suppressed = 0					//whether or not a message is displayed when fired
	var/can_suppress = 0
	var/can_unsuppress = 1
	var/recoil = 0						//boom boom shake the room
	var/clumsy_check = 1
	var/obj/item/ammo_casing/chambered = null
	var/trigger_guard = TRIGGER_GUARD_NORMAL	//trigger guard on the weapon, hulks can't fire them with their big meaty fingers
	var/sawn_desc = null				//description change if weapon is sawn-off
	var/sawn_state = SAWN_INTACT
	var/burst_size = 1					//how large a burst is
	var/fire_delay = 0					//rate of fire for burst firing and semi auto
	var/firing_burst = 0				//Prevent the weapon from firing again while already firing
	var/semicd = 0						//cooldown handler
	var/weapon_weight = WEAPON_LIGHT
	var/spread = 0						//Spread induced by the gun itself.
	var/randomspread = 1				//Set to 0 for shotguns. This is used for weapons that don't fire all their bullets at once.
	var/unique_reskin = 0 //allows one-time reskinning
	var/current_skin = null //the skin choice if we had a reskin
	var/list/options = list()
	var/small_gun = 0
	var/big_gun = 0
	var/energy_gun = 0

	lefthand_file = 'icons/mob/inhands/guns_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/guns_righthand.dmi'

	//var/obj/item/device/firing_pin/pin = /obj/item/device/firing_pin //standard firing pin for most guns

	var/obj/item/device/flashlight/gun_light = null
	var/can_flashlight = 0

	var/list/upgrades = list()

	var/ammo_x_offset = 0 //used for positioning ammo count overlay on sprite
	var/ammo_y_offset = 0
	var/flight_x_offset = 0
	var/flight_y_offset = 0

	//Zooming
	var/zoomable = FALSE //whether the gun generates a Zoom action on creation
	var/zoomed = FALSE //Zoom toggle
	var/zoom_amt = 3 //Distance in TURFs to move the user's screen forward (the "zoom" effect)
	var/datum/action/toggle_scope_zoom/azoom
	var/scopetype

	//Gun safety.
	var/safety = 0

	    //crc
	var/condition = 300
	var/jammed = FALSE
	var/jam_fixing = FALSE

    //var/loaded = 0

/mob/living/carbon/human/verb/weaponWield()
	set name = "Wield"
	set category = "IC"

	var/obj/item/W = get_active_held_item()
	if(W)
		W.attempt_wield(src)

/obj/item/weapon/gun/New()
	..()
	/*if(pin)
		pin = new pin(src)*/
	if(gun_light)
		verbs += /obj/item/weapon/gun/proc/toggle_gunlight
		new /datum/action/item_action/toggle_gunlight(src)
	build_zooming()
	condition = 100


/obj/item/weapon/gun/CheckParts(list/parts_list)
	..()
	var/obj/item/weapon/gun/G = locate(/obj/item/weapon/gun) in contents
	if(G)
		G.forceMove(loc)
		//qdel(G.pin)
		//G.pin = null
		visible_message("[G] can now fit a new pin, but the old one was destroyed in the process.", null, null, 3)
		qdel(src)

/obj/item/weapon/gun/examine(mob/user)
	..()
	/*if(pin)
		to_chat(user, "It has [pin] installed.")
	else
		to_chat(user, "It doesn't have a firing pin installed, and won't fire.")*/
	if(unique_reskin && !current_skin)
		to_chat(user, "<span class='notice'>Alt-click it to reskin it.</span>")
	if(safety)
		to_chat(user, "<span class='notice'>The safety is on.</span>")
	else
		to_chat(user, "<span class='notice'>The safety is off.</span>")

	to_chat(user, "<span class='notice'>Weapon condition: [round(condition)]%</span>")

//called after the gun has successfully fired its chambered ammo.
/obj/item/weapon/gun/proc/process_chamber()
	return 0


//check if there's enough ammo/energy/whatever to shoot one time
//i.e if clicking would make it shoot
/obj/item/weapon/gun/proc/can_shoot()
	return 1


/obj/item/weapon/gun/proc/shoot_with_empty_chamber(mob/living/user as mob|obj)
	to_chat(user, "<span class='danger'>*click*</span>")
	playsound(user, 'sound/weapons/empty.ogg', 100, 1)


/obj/item/weapon/gun/proc/shoot_live_shot(mob/living/user as mob|obj, pointblank = 0, mob/pbtarget = null, message = 1)
	if(recoil)
		shake_camera(user, (wielded ? recoil/3 : recoil) + 1, (wielded ? recoil/3 : recoil))

	if(suppressed)
		playsound(user, fire_sound, 10, 1)
	else
		playsound(user, fire_sound, 50, 1)
		if(message)
			if(pointblank)
				user.visible_message("<span class='danger'>[user] fires [src] point blank at [pbtarget]!</span>", null, null, COMBAT_MESSAGE_RANGE)
			else
				user.visible_message("<span class='danger'>[user] fires [src]!</span>", null, null, COMBAT_MESSAGE_RANGE)

/obj/item/weapon/gun/emp_act(severity)
	for(var/obj/O in contents)
		O.emp_act(severity)


/obj/item/weapon/gun/afterattack(atom/target, mob/living/user, flag, params)
	if(firing_burst)
		return
	if(flag) //It's adjacent, is the user, or is on the user's person
		if(target in user.contents) //can't shoot stuff inside us.
			return
		if(!ismob(target) || user.a_intent == INTENT_HARM) //melee attack
			return
		if(target == user && user.zone_selected != "mouth") //so we can't shoot ourselves (unless mouth selected)
			return

	/*if(istype(user))//Check if the user can use the gun, if the user isn't alive(turrets) assume it can.
		var/mob/living/L = user
		if(!can_trigger_gun(L))
			return*/

	if(safety)
		to_chat(user, "<span class='userdanger'>The safety is on!</span>")
		shoot_with_empty_chamber(user)
		return

	if(!can_shoot()) //Just because you can pull the trigger doesn't mean it can shoot.
		shoot_with_empty_chamber(user)
		return

	if(flag)
		if(user.zone_selected == "mouth")
			handle_suicide(user, target, params)
			return


	//Exclude lasertag guns from the CLUMSY check.
	if(clumsy_check)
		if(istype(user))
			if (user.disabilities & CLUMSY && prob(40))
				to_chat(user, "<span class='userdanger'>You shoot yourself in the foot with [src]!</span>")
				var/shot_leg = pick("l_leg", "r_leg")
				process_fire(user,user,0,params, zone_override = shot_leg)
				user.drop_item()
				return

/*
	if(weapon_weight == WEAPON_HEAVY && !wielded)//user.get_inactive_held_item())
		to_chat(user, "<span class='userdanger'>You need to wield \the [src] in both hands free to fire!</span>")
		return
*/

	//DUAL (or more!) WIELDING
	var/bonus_spread = 0
	var/loop_counter = 0
	if(ishuman(user) && user.a_intent == INTENT_HARM)
		var/mob/living/carbon/human/H = user
		for(var/obj/item/weapon/gun/G in H.held_items)
			if(G == src || G.weapon_weight >= WEAPON_MEDIUM)
				continue
			else if(1 /*G.can_trigger_gun(user)*/)
				bonus_spread += 24 * G.weapon_weight
				loop_counter++
				spawn(loop_counter)
					G.process_fire(target,user,1,params, null, bonus_spread)

	process_fire(target,user,1,params, null, bonus_spread)



/*/obj/item/weapon/gun/proc/can_trigger_gun(var/mob/living/user)

	if(!handle_pins(user) || !user.can_use_guns(src))
		return 0

	return 1*/

/*/obj/item/weapon/gun/proc/handle_pins(mob/living/user)
	if(pin)
		if(pin.pin_auth(user) || pin.emagged)
			return 1
		else
			pin.auth_fail(user)
			return 0
	else
		to_chat(user, "<span class='warning'>[src]'s trigger is locked. This weapon doesn't have a firing pin installed!</span>")
	return 0*/

/obj/item/weapon/gun/proc/recharge_newshot()
	return

/obj/item/weapon/gun/proc/process_fire(atom/target as mob|obj|turf, mob/living/user as mob|obj, message = 1, params, zone_override, bonus_spread = 0)
	add_fingerprint(user)
/////////////
	if(gunroll(src,user))
		return

	if(condition == 0)
		to_chat(usr, "<span class='info'>With this weapon you can kill only yourself.</span>")
		return

	if(jammed)
		if(jam_fixing)
			return

		usr.visible_message("<span class='warning'>[usr] trying to fix jamming!<span class='warning'>")
		jam_fixing = TRUE
		if(do_mob(usr, usr, JAM_FIXTIME))
			jammed = FALSE
			to_chat(usr, "<span class='green'>Fixed!</span>")
		else
			to_chat(usr, "<span class='warning'>Need to stay still!</span>")

		jam_fixing = FALSE
		return

	if(condition < 60)
		if(prob(40 - (condition * 0.67)))
			jammed = TRUE

	if(WMK_have(/obj/item/kit/damage))
		chambered.BB.damage *= 1.33

	//var/mob/living/carbon/userCarbon = user

	// Location of weapon will be 0, 0, 0 if it in hand
	if(SSbulletecho.can_fire)
		SSbulletecho.processing += get_turf(target)

	if(semicd)
		return

	var/sprd = 0
	var/randomized_gun_spread = 0
	if(spread)
		randomized_gun_spread =	rand(0,spread)
	var/randomized_bonus_spread = rand(0, bonus_spread)

	var/condition_mul = usr:perks.have(/datum/perk_hidden/condition) ? 0.66 : 1

	condition_mul *= WMK_have(/obj/item/kit/condition) ? 0.66 : 1

	condition = max(0, condition - (0.25 * condition_mul))

	if(burst_size > 1)
		firing_burst = 1
		for(var/i = 1 to burst_size)
			if(!user)
				break
			if(!issilicon(user))
				if( i>1 && !(user.is_holding(src))) //for burst firing
					break
				if(target in user.contents)
					break
				if(target == user)
					break
			if(chambered && chambered.BB)
			/*
			        //crc
				if(prob((110 - condition)/2))
					condition -= 1
					if(condition < 10 && prob(40))
						explosion(src.loc, -1, 0, 1, 3)
					if(condition < 50)
						process_chamber()
						shoot_with_empty_chamber(user)
						break
			*/


				if(randomspread)
					sprd = round((rand() - 0.5) * (randomized_gun_spread + randomized_bonus_spread))
				else //Smart spread
					sprd = round((i / burst_size - 0.5) * (randomized_gun_spread + randomized_bonus_spread))
				if(!chambered.fire_casing(target, user, params, ,suppressed, zone_override, sprd))
					shoot_with_empty_chamber(user)
					break
				else
					if(get_dist(user, target) <= 1) //Making sure whether the target is in vicinity for the pointblank shot
						shoot_live_shot(user, 1, target, message)
					else
						shoot_live_shot(user, 0, target, message)
			else
				shoot_with_empty_chamber(user)
				break
			process_chamber()
			update_icon()

			//sleep(chambered ? chambered.delay : (fire_delay/* / (userCarbon.special.getPoint("a") * 0.2)*/))
		firing_burst = 0
	else
		if(chambered)
			/*
			if(prob((110 - condition)/2))
				condition -= 1
				if(condition < 10 && prob(40))
					explosion(src.loc, -1, 0, 1, 3)
				if(condition < 50)
					process_chamber()
					shoot_with_empty_chamber(user)
					return
			*/
			sprd = round((pick(1,-1)) * (randomized_gun_spread + randomized_bonus_spread))
			if(!chambered.fire_casing(target, user, params, , suppressed, zone_override, sprd))
				shoot_with_empty_chamber(user)
				return
			else
				if(get_dist(user, target) <= 1) //Making sure whether the target is in vicinity for the pointblank shot
					shoot_live_shot(user, 1, target, message)
				else
					shoot_live_shot(user, 0, target, message)
		else
			shoot_with_empty_chamber(user)
			return
		process_chamber()
		update_icon()
		//semicd = 1

		/*spawn(fire_delay / (userCarbon.special.getPoint("a") * 0.2))
			semicd = 0*/

	if(user)
		user.update_inv_hands()
	feedback_add_details("gun_fired","[src.type]")
	return 1

//////////////////////////////////////////////////////

/obj/item/weapon/gun/proc/gunroll(src,mob/living/carbon/human/user)
	if(src:small_gun)
		switch(/*user:small_guns*/user.skills.getPoint("small_guns"))
			if(1)
				if(prob(70 - user.special.getPoint("a")))
					user << "You are not skilled in small guns so you cant fire [src]"
					return 1
			if(2)
				if(prob(65 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(3)
				if(prob(60 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(4)
				if(prob(55 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(5)
				if(prob(50 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(6)
				if(prob(40 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(7)
				if(prob(30 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(8)
				if(prob(20 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(9)
				if(prob(10 - user.special.getPoint("a")))
					user << "You failed to fire [src] you are not skilled with small guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
	if(src:big_gun)
		switch(/*user:big_guns*/user.skills.getPoint("big_guns"))
			if(1)
				if(prob(70 - user.special.getPoint("s")))
					user << "You are not skilled in big guns so you cant fire [src]"
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(2)
				if(prob(65 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1

			if(3)
				if(prob(60 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(4)
				if(prob(55 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(5)
				if(prob(50 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(6)
				if(prob(40 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(7)
				if(prob(30 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(8)
				if(prob(20 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(9)
				if(prob(10 - user.special.getPoint("s")))
					user << "You failed to fire [src] you are not skilled with big guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
	if(src:energy_gun)
		switch(/*user:energy_weapons*/user.skills.getPoint("energy_weapons"))
			if(1)
				if(prob(70 - user.special.getPoint("p")))
					user << "You are not skilled in energy guns so you cant fire [src]"
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(2)
				if(prob(65 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1

			if(3)
				if(prob(60 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(4)
				if(prob(55 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(5)
				if(prob(50 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(6)
				if(prob(40 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(7)
				if(prob(30 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(8)
				if(prob(20 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
			if(9)
				if(prob(10 - user.special.getPoint("p")))
					user << "You failed to fire [src] you are not skilled with energy guns."
					user << "<span class='danger'>*click*</span>"
					playsound(user, 'sound/weapons/empty.ogg', 100, 1)
					return 1
/*
/obj/item/weapon/gun/proc/process_fire(atom/target as mob|obj|turf, mob/living/user as mob|obj, message = 1, params, zone_override)
	if(gunroll(src,user))
		return
	if (user:dna.species && user:dna.species.id=="supermutant")
		user << "Dont know how us this."
		return
	else
		add_fingerprint(user)

		if(semicd)
			return
		/*
		if(heavy_weapon)
			if(user.get_inactive_hand()get_active_held_item())
				recoil = 4 //one-handed kick
			else
				recoil = initial(recoil)
		*/
		if(burst_size > 1)
			for(var/i = 1 to burst_size)
				if(!user)
					break
				/*if(!issilicon(user))
					if( i>1 && !(src in get_both_hands(user))) //for burst firing
						break*/
				if(chambered)
					var/sprd = 0
					if(randomspread)
						sprd = round((rand() - 0.5) * spread)
					else //Smart spread
						sprd = round((i / burst_size - 0.5) * spread)
					/*if(!chambered.fire(target, user, params, suppressed, zone_override, sprd))
						shoot_with_empty_chamber(user)
						break
					else
						if(get_dist(user, target) <= 1) //Making sure whether the target is in vicinity for the pointblank shot
							shoot_live_shot(user, 1, target, message)
						else
							shoot_live_shot(user, 0, target, message)*/
				else
					shoot_with_empty_chamber(user)
					break
				process_chamber()
				update_icon()
				sleep(fire_delay)
		else
			if(chambered)
				if(!chambered.fire(target, user, params, suppressed, zone_override, spread))
					shoot_with_empty_chamber(user)
					return
				else
					if(get_dist(user, target) <= 1) //Making sure whether the target is in vicinity for the pointblank shot
						shoot_live_shot(user, 1, target, message)
					else
						shoot_live_shot(user, 0, target, message)
			else
				shoot_with_empty_chamber(user)
				return
			process_chamber()
			update_icon()
			semicd = 1
			spawn(fire_delay)
				semicd = 0

		/*if(user)
			if(user.hand)
				user.update_inv_l_hand()
			else
				user.update_inv_r_hand()*/
		feedback_add_details("gun_fired","[src.type]")
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/gun/attack(mob/M as mob, mob/user)
	if(user.a_intent == INTENT_HARM) //Flogging
		..()
	else
		return

/obj/item/weapon/gun/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/crafting/weapon_repair_kit))
		if(condition < 90)
			if(do_after(user, 20, target = src))
				to_chat(user, "<span class='notice'>You repaired your weapon.</span>")
				condition = min(100, condition + 40)
				qdel(I)
		else
			to_chat(user, "<span class='notice'>No need, weapon in good condition.</span>")

	if(can_flashlight)
		if(istype(I, /obj/item/device/flashlight/seclite))
			var/obj/item/device/flashlight/seclite/S = I
			if(!gun_light)
				if(!user.unEquip(I))
					return
				to_chat(user, "<span class='notice'>You click [S] into place on [src].</span>")
				if(S.on)
					set_light(0)
				gun_light = S
				update_icon()
				update_gunlight(user)
				verbs += /obj/item/weapon/gun/proc/toggle_gunlight
				var/datum/action/A = new /datum/action/item_action/toggle_gunlight(src)
				if(loc == user)
					A.Grant(user)

		if(istype(I, /obj/item/weapon/screwdriver))
			if(gun_light)
				for(var/obj/item/device/flashlight/seclite/S in src)
					to_chat(user, "<span class='notice'>You unscrew the seclite from [src].</span>")
					gun_light = null
					S.forceMove(get_turf(user))
					update_gunlight(user)
					S.update_brightness(user)
					update_icon()
					verbs -= /obj/item/weapon/gun/proc/toggle_gunlight
				for(var/datum/action/item_action/toggle_gunlight/TGL in actions)
					qdel(TGL)
	else
		..()



/obj/item/weapon/gun/proc/toggle_gunlight()
	set name = "Toggle Gunlight"
	set category = "Object"
	set desc = "Click to toggle your weapon's attached flashlight."

	if(!gun_light)
		return

	var/mob/living/carbon/human/user = usr
	gun_light.on = !gun_light.on
	to_chat(user, "<span class='notice'>You toggle the gunlight [gun_light.on ? "on":"off"].</span>")

	playsound(user, 'sound/weapons/empty.ogg', 100, 1)
	update_gunlight(user)
	return

/obj/item/weapon/gun/proc/update_gunlight(mob/user = null)
	if(gun_light)
		if(gun_light.on)
			set_light(gun_light.brightness_on)
		else
			set_light(0)
		update_icon()
	else
		set_light(0)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()


/obj/item/weapon/gun/pickup(mob/user)
	..()
	if(azoom)
		azoom.Grant(user)

/obj/item/weapon/gun/dropped(mob/user)
	..()
	zoom(user,FALSE)
	if(azoom)
		azoom.Remove(user)


/obj/item/weapon/gun/AltClick(mob/user)
	..()
	if(user.incapacitated())
		to_chat(user, "<span class='warning'>You can't do that right now!</span>")
		return
	if(src == user.get_active_held_item())
		safety = !safety
		playsound(user, 'sound/weapons/selector.ogg', 100, 1)
		to_chat(user, "<span class='notice'>You toggle the safety [safety ? "on":"off"].</span>")

	if(unique_reskin && !current_skin && loc == user)
		reskin_gun(user)


/obj/item/weapon/gun/proc/reskin_gun(mob/M)
	var/choice = input(M,"Warning, you can only reskin your weapon once!","Reskin Gun") in options

	if(src && choice && !current_skin && !M.incapacitated() && in_range(M,src))
		if(options[choice] == null)
			return
		current_skin = options[choice]
		to_chat(M, "Your gun is now skinned as [choice]. Say hello to your new friend.")
		update_icon()

/obj/item/weapon/gun/update_icon()//If it has a special wielded icon we want it to show up here.
	..()
	if(wielded && wielded_icon)
		item_state = wielded_icon
	else
		item_state = "[initial(item_state)]"



/obj/item/weapon/gun/proc/handle_suicide(mob/living/carbon/human/user, mob/living/carbon/human/target, params)
	if(!ishuman(user) || !ishuman(target))
		return

	if(semicd)
		return

	if(user == target)
		target.visible_message("<span class='warning'>[user] sticks [src] in [user.p_their()] mouth, ready to pull the trigger...</span>", \
			"<span class='userdanger'>You stick [src] in your mouth, ready to pull the trigger...</span>")
	else
		target.visible_message("<span class='warning'>[user] points [src] at [target]'s head, ready to pull the trigger...</span>", \
			"<span class='userdanger'>[user] points [src] at your head, ready to pull the trigger...</span>")

	//semicd = 1

	if(!do_mob(user, target, 120) || user.zone_selected != "mouth")
		if(user)
			if(user == target)
				user.visible_message("<span class='notice'>[user] decided not to shoot.</span>")
			else if(target && target.Adjacent(user))
				target.visible_message("<span class='notice'>[user] has decided to spare [target]</span>", "<span class='notice'>[user] has decided to spare your life!</span>")
		semicd = 0
		return

	semicd = 0

	target.visible_message("<span class='warning'>[user] pulls the trigger!</span>", "<span class='userdanger'>[user] pulls the trigger!</span>")

	if(chambered && chambered.BB)
		chambered.BB.damage *= 5

	process_fire(target, user, 1, params)

/*/obj/item/weapon/gun/proc/unlock() //used in summon guns and as a convience for admins
	if(pin)
		qdel(pin)
	pin = new /obj/item/device/firing_pin*/

/////////////
// ZOOMING //
/////////////

/datum/action/toggle_scope_zoom
	name = "Toggle Scope"
	check_flags = AB_CHECK_CONSCIOUS|AB_CHECK_RESTRAINED|AB_CHECK_STUNNED|AB_CHECK_LYING
	button_icon_state = "sniper_zoom"
	var/obj/item/weapon/gun/gun = null

/datum/action/toggle_scope_zoom/Trigger()
	gun.zoom(owner)

/datum/action/toggle_scope_zoom/IsAvailable()
	. = ..()
	if(!.)
		return 0
	if(!owner.is_holding(gun))
		return 0
	return 1

/datum/action/toggle_scope_zoom/Remove(mob/living/L)
	gun.zoom(L, FALSE)
	..()

/mob/living/var/obj/item/weapon/gun/zoomgun

/mob/living/Move(loc,dir)
	..()
	if(zoomgun)
		zoomgun.zoom(src, FALSE)

/mob/living/setDir(newdir)
	if(zoomgun && dir != newdir)
		zoomgun.zoom(src, FALSE)
	..()

/obj/item/weapon/gun/proc/zoom(mob/living/user, forced_zoom)
	if(!user || !user.client)
		return

	switch(forced_zoom)
		if(FALSE)
			zoomed = FALSE
		if(TRUE)
			zoomed = TRUE
		else
			zoomed = !zoomed

	update_zoom(user)

/obj/item/weapon/gun/equipped(mob/user, slot)
	..()
	if(azoom && user && user.client)
		update_zoom(user)
		azoom.UpdateButtonIcon()

/obj/item/weapon/gun/proc/update_zoom(mob/living/user)
	if(!user || !user.client)
		return
	if(zoomed)
		if(!user.is_holding(src))
			zoom(user, FALSE)
			return
		user.zoomgun = src
		var/_x = 0
		var/_y = 0
		switch(user.dir)
			if(NORTH)
				_y = zoom_amt
			if(EAST)
				_x = zoom_amt
			if(SOUTH)
				_y = -zoom_amt
			if(WEST)
				_x = -zoom_amt

		user.client.pixel_x = world.icon_size*_x
		user.client.pixel_y = world.icon_size*_y
		user.client.view = 12
//		if(scopetype)
//			user.overlay_fullscreen("scope", scopetype)
	else
		user.zoomgun = null
		user.client.pixel_x = 0
		user.client.pixel_y = 0
		user.client.view =  world.view
//		if(scopetype)
//			user.clear_fullscreen("scope", 0)
	user.update_fov_position()

//Proc, so that gun accessories/scopes/etc. can easily add zooming.
/obj/item/weapon/gun/proc/build_zooming()
	if(azoom)
		return

	if(zoomable)
		azoom = new()
		azoom.gun = src