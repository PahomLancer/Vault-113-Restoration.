/obj/item/device/radio/intercom
	name = "station intercom"
	desc = "Talk through this."
	icon_state = "intercom"
	anchored = 1
	w_class = WEIGHT_CLASS_BULKY
	canhear_range = 2
	var/number = 0
	var/anyai = 1
	var/mob/living/silicon/ai/ai = list()
	var/last_tick //used to delay the powercheck
	dog_fashion = null

/obj/item/device/radio/intercom/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/device/radio/intercom/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/device/radio/intercom/attack_ai(mob/user)
	interact(user)

/obj/item/device/radio/intercom/attack_hand(mob/user)
	interact(user)

/obj/item/device/radio/intercom/interact(mob/user)
	..()
	ui_interact(user, state = default_state)

/obj/item/device/radio/intercom/receive_range(freq, level)
	if(!on)
		return -1
	if(wires.is_cut(WIRE_RX))
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if(!src.listening)
		return -1
	if(freq == SYND_FREQ)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range


/obj/item/device/radio/intercom/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(!anyai && !(speaker in ai))
		return
	..()

/obj/item/device/radio/intercom/process()
	if(((world.timeofday - last_tick) > 30) || ((world.timeofday - last_tick) < 0))
		last_tick = world.timeofday

		var/area/A = get_area_master(src)
		if(!A || emped)
			on = 0
		else
			on = A.powered(EQUIP) // set "on" to the power status

		if(!on)
			icon_state = "intercom-p"
		else
			icon_state = "intercom"

/obj/item/device/radio/intercom/add_blood(list/blood_dna)
	return 0



/obj/item/device/radio/radio
	name = "old radio reciever"
	desc = "Lisen from this."
	icon_state = "radio"
	anchored = 1
	w_class = WEIGHT_CLASS_BULKY
	canhear_range = 2
	var/number = 0
	var/anyai = 1
	var/mob/living/silicon/ai/ai = list()
	var/last_tick //used to delay the powercheck
	dog_fashion = null

/obj/item/device/radio/radio/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/device/radio/radio/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/device/radio/radio/attack_ai(mob/user)
	interact(user)

/obj/item/device/radio/radio/attack_hand(mob/user)
	interact(user)

/obj/item/device/radio/radio/interact(mob/user)
	..()
	ui_interact(user, state = default_state)

/obj/item/device/radio/radio/receive_range(freq, level)
	if(!on)
		return -1
	if(wires.is_cut(WIRE_RX))
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if(!src.listening)
		return -1
	if(freq == SYND_FREQ)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range


/obj/item/device/radio/radio/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(!anyai && !(speaker in ai))
		return
	..()

/obj/item/device/radio/radio/process()
	if(((world.timeofday - last_tick) > 30) || ((world.timeofday - last_tick) < 0))
		last_tick = world.timeofday

		var/area/A = get_area_master(src)
		if(!A || emped)
			on = 0
		else
			on = A.powered(EQUIP) // set "on" to the power status

		if(!on)
			icon_state = "radio-p"
		else
			icon_state = "radio"

/obj/item/device/radio/radio/add_blood(list/blood_dna)
	return 0



/obj/item/device/radio/large_radio
	name = "Vintage old radio reciever"
	desc = "Listen music through this."
	icon_state = "large_radio"
	anchored = 1
	w_class = WEIGHT_CLASS_BULKY
	canhear_range = 2
	var/number = 0
	var/anyai = 1
	var/mob/living/silicon/ai/ai = list()
	var/last_tick //used to delay the powercheck
	dog_fashion = null

/obj/item/device/radio/large_radio/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/device/radio/large_radio/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/device/radio/large_radio/attack_ai(mob/user)
	interact(user)

/obj/item/device/radio/large_radio/attack_hand(mob/user)
	interact(user)

/obj/item/device/radio/large_radio/interact(mob/user)
	..()
	ui_interact(user, state = default_state)

/obj/item/device/radio/large_radio/receive_range(freq, level)
	if(!on)
		return -1
	if(wires.is_cut(WIRE_RX))
		return -1
	if(!(0 in level))
		var/turf/position = get_turf(src)
		if(isnull(position) || !(position.z in level))
			return -1
	if(!src.listening)
		return -1
	if(freq == SYND_FREQ)
		if(!(src.syndie))
			return -1//Prevents broadcast of messages over devices lacking the encryption

	return canhear_range


/obj/item/device/radio/large_radio/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(!anyai && !(speaker in ai))
		return
	..()

/obj/item/device/radio/large_radio/process()
	if(((world.timeofday - last_tick) > 30) || ((world.timeofday - last_tick) < 0))
		last_tick = world.timeofday

		var/area/A = get_area_master(src)
		if(!A || emped)
			on = 0
		else
			on = A.powered(EQUIP) // set "on" to the power status

		if(!on)
			icon_state = "large_radio-p"
		else
			icon_state = "large_radio"

/obj/item/device/radio/large_radio/add_blood(list/blood_dna)
	return 0