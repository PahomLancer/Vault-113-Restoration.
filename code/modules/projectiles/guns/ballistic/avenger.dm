//The ammo/gun is stored in a back slot item
/obj/item/weapon/avengerpack
	name = "avenger backpack"
	desc = "The massive external ammo holder for the avenger minigun"
	icon = 'icons/obj/guns/minigun.dmi'
	icon_state = "holstered_a"
	item_state = "backpack"
	slot_flags = SLOT_BACK
	w_class = WEIGHT_CLASS_HUGE
	var/obj/item/weapon/gun/ballistic/avenger/gun = null
	var/armed = 0 //whether the gun is attached, 0 is attached, 1 is the gun is wielded.

/obj/item/weapon/avengerpack/New()
	gun = new(src)
	START_PROCESSING(SSobj, src)
	..()

/obj/item/weapon/avengerpack/Destroy()
	STOP_PROCESSING(SSobj, src)
	..()

/obj/item/weapon/avengerpack/attack_hand(var/mob/living/carbon/user)
	if(src.loc == user)
		if(!armed)
			if(user.get_item_by_slot(slot_back) == src)
				armed = 1
				if(!user.put_in_hands(gun))
					armed = 0
					to_chat(user, "<span class='warning'>You need a free hand to hold the gun!</span>")
					return
				update_icon()
				gun.forceMove(user)
				user.update_inv_back()
		else
			to_chat(user, "<span class='warning'>You are already holding the gun!</span>")
	else
		..()

/obj/item/weapon/avengerpack/attackby(obj/item/weapon/W, mob/user, params)
	if(W == gun) //Don't need armed check, because if you have the gun assume its armed.
		user.unEquip(gun,1)
	else
		..()

/obj/item/weapon/avengerpack/dropped(mob/user)
	if(armed)
		user.unEquip(gun,1)

/obj/item/weapon/avengerpack/MouseDrop(atom/over_object)
	if(armed)
		return
	if(iscarbon(usr))
		var/mob/M = usr

		if(!over_object)
			return

		if(!M.restrained() && !M.stat)

			if(istype(over_object, /obj/screen/inventory/hand))
				var/obj/screen/inventory/hand/H = over_object
				if(!M.unEquip(src))
					return
				M.put_in_hand(src, H.held_index)


/obj/item/weapon/avengerpack/update_icon()
	if(armed)
		icon_state = "notholstered_a"
	else
		icon_state = "holstered_a"

/obj/item/weapon/avengerpack/proc/attach_gun(var/mob/user)
	if(!gun)
		gun = new(src)
	gun.forceMove(src)
	armed = 0
	if(user)
		to_chat(user, "<span class='notice'>You attach the [gun.name] to the [name].</span>")
	else
		src.visible_message("<span class='warning'>The [gun.name] snaps back onto the [name]!</span>")
	update_icon()
	user.update_inv_back()


/obj/item/weapon/gun/ballistic/avenger
	name = "avenger minigun"
	desc = "Rockwell designed the Avenger as the replacement for their aging CZ53 Personal Minigun. The Avenger's design improvements include improved, gel-fin, cooling and chromium plated barrel-bores. This gives it a greater range and lethality."
	icon = 'icons/obj/guns/minigun.dmi'
	icon_state = "avenger_spin"
	item_state = "avenger"
	origin_tech = "combat=6;powerstorage=2;magnets=3"
	flags = CONDUCT | HANDSLOW
	slowdown = 1
	slot_flags = null
	w_class = WEIGHT_CLASS_HUGE
	materials = list()
	burst_size = 3
	automatic = 1
	fire_delay = 1
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'sound/f13weapons/avenger.ogg'
	mag_type = /obj/item/ammo_box/magazine/avenger
	casing_ejector = 1
	var/obj/item/weapon/avengerpack/ammo_pack
	big_gun = 1

/obj/item/weapon/gun/ballistic/avenger/attack_self(mob/living/user)
	return

/obj/item/weapon/gun/ballistic/avenger/dropped(mob/user)
	if(ammo_pack)
		ammo_pack.attach_gun(user)
	else
		qdel(src)

/obj/item/weapon/gun/ballistic/avenger/afterattack(atom/target, mob/living/user, flag, params)
	if(!ammo_pack || ammo_pack.loc != user)
		to_chat(user, "You need the backpack ammo source to fire the gun!")
	..()

/obj/item/weapon/gun/ballistic/avenger/New()
	if(!ammo_pack)
		if(istype(loc,/obj/item/weapon/avengerpack)) //We should spawn inside a ammo pack so let's use that one.
			ammo_pack = loc
			..()
		else
			qdel(src)//No pack, no gun

/obj/item/weapon/gun/ballistic/avenger/dropped(mob/living/user)
	ammo_pack.attach_gun(user)


