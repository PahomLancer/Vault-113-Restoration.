//Boxes of ammo
/obj/item/ammo_box
	name = "ammo box (null_reference_exception)"
	desc = "A box of ammo."
	icon_state = "357"
	icon = 'icons/obj/ammo.dmi'
	flags = CONDUCT
	slot_flags = SLOT_BELT
	item_state = "syringe_kit"
	materials = list(MAT_METAL=30000)
	throwforce = 2
	w_class = WEIGHT_CLASS_TINY
	throw_speed = 3
	throw_range = 7
	var/ammo_type = /obj/item/ammo_casing
	var/max_ammo = 7
	var/multiple_sprites = 0
	var/caliber
	var/multiload = 1
	var/start_empty = 0
	var/ammo_left = 0

/obj/item/ammo_box/New()
	..()
	if(!start_empty)
		ammo_left = max_ammo

	update_icon()

/obj/item/ammo_box/proc/get_round(keep = 0)
	if (ammo_left == 0)
		return null
	else
		ammo_left -= 1
		return PoolOrNew(ammo_type)

/obj/item/ammo_box/proc/give_round(obj/item/ammo_casing/R, replace_spent = 0)
	// Boxes don't have a caliber type, magazines do. Not sure if it's intended or not, but if we fail to find a caliber, then we fall back to ammo_type.
	if(!R || (caliber && R.caliber != caliber) || (!caliber && R.type != ammo_type))
		return 0

	if (ammo_left < max_ammo)
		ammo_left += 1
		qdel(R)
		update_icon()
		return 1

	return 0

/obj/item/ammo_box/proc/can_load(mob/user)
	return 1

/obj/item/ammo_box/attackby(obj/item/A, mob/user, params, silent = 0, replace_spent = 0)
	var/num_loaded = 0
	if(!can_load(user))
		return
	if(istype(A, /obj/item/ammo_box))
		if(A:ammo_type != ammo_type)
			to_chat(user, "<span class='notice'>Wrong ammo type!</span>")
			return

		var/amount = min(A:ammo_left, max_ammo - ammo_left)

		A:ammo_left -= amount
		ammo_left += amount

		num_loaded = amount

		update_icon()
	if(istype(A, /obj/item/ammo_casing))
		var/obj/item/ammo_casing/AC = A
		if(give_round(AC, replace_spent))
			num_loaded++

	if(num_loaded)
		if(!silent)
			to_chat(user, "<span class='notice'>You load [num_loaded] shell\s into \the [src]!</span>")
		A.update_icon()
		update_icon()

	return num_loaded

/obj/item/ammo_box/attack_self(mob/user)
	var/obj/item/ammo_casing/A = get_round()
	if(A)
		user.put_in_hands(A)
		to_chat(user, "<span class='notice'>You remove a round from \the [src]!</span>")
		update_icon()

/obj/item/ammo_box/update_icon()
	switch(multiple_sprites)
		if(1)
			icon_state = "[initial(icon_state)]-[ammo_left]"
		if(2)
			icon_state = "[initial(icon_state)]-[ammo_left ? "[max_ammo]" : "0"]"
	desc = "[initial(desc)] There are [ammo_left] shell\s left!"

//Behavior for magazines
/obj/item/ammo_box/magazine/proc/ammo_count()
	return ammo_left

/obj/item/ammo_box/magazine/proc/empty_magazine()
	var/turf_mag = get_turf(src)
	for(var/I = 1 to ammo_left)
		var/obj/item/A = get_round()
		A.forceMove(turf_mag)
		ammo_left -= 1