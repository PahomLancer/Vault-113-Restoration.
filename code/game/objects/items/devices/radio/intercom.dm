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
	var/busy = 0
	var/soundLength = 50
	var/soundFile = 'sound/f13music/mysterious_stranger.ogg'
	var/songnumber = 1
	dog_fashion = null

/obj/item/device/radio/radio/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/radio/attack_self(mob/user as mob)
	src.playAudio(user)
	return

/obj/item/device/radio/radio/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/device/radio/radio/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/device/radio/radio/attack_ai(mob/user)
	interact(user)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/radio/attack_hand(mob/user)
	interact(user)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/radio/proc/playAudio(mob/user)
	if(!src.busy)
		src.busy = 1

		songnumber = pick(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
		if(songnumber == 1)
			soundFile = 'sound/f13music/enclave_dixie.ogg'
			soundLength = 470
		if(songnumber == 2)
			soundFile = 'sound/f13music/enclave_hymn.ogg'
			soundLength = 310
		if(songnumber == 3)
			soundFile = 'sound/f13music/enclave_montezuma.ogg'
			soundLength = 420
		if(songnumber == 4)
			soundFile = 'sound/f13music/enclave_presidential.ogg'
			soundLength = 700
		if(songnumber == 5)
			soundFile = 'sound/f13music/enclave_stars.ogg'
			soundLength = 820
		if(songnumber == 6)
			soundFile = 'sound/f13music/enclave_washington.ogg'
			soundLength = 560
		if(songnumber == 7)
			soundFile = 'sound/f13music/enclave_yankee.ogg'
			soundLength = 730
		if(songnumber == 8)
			soundFile = 'sound/f13music/new_vegas_show_bonus_1.ogg'
			soundLength = 1870
		if(songnumber == 9)
			soundFile = 'sound/f13music/new_vegas_show_bonus_2.ogg'
			soundLength = 2409
		if(songnumber == 10)
			soundFile = 'sound/f13music/Aint That A Kick In the Head.ogg'
			soundLength = 1460
		if(songnumber == 11)
			soundFile = 'sound/f13music/Big Iron.ogg'
			soundLength = 2380
		if(songnumber == 12)
			soundFile = 'sound/f13music/Jingle Jangle Jingle.ogg'
			soundLength = 2000
		if(songnumber == 13)
			soundFile = 'sound/f13music/Why Dont You Do Right.ogg'
			soundLength = 2020
		if(songnumber == 14)
			soundFile = 'sound/f13music/Strahlende Trompete.ogg'
			soundLength = 1870
		if(songnumber == 15)
			soundFile = 'sound/f13music/Johnny Guitar.ogg'
			soundLength = 1830
		if(songnumber == 16)
			soundFile = 'sound/f13music/Where Have You Been All My Life.ogg'
			soundLength = 1770
		if(songnumber == 17)
			soundFile = 'sound/f13music/Goin Under.ogg'
			soundLength = 1770
		if(songnumber == 18)
			soundFile = 'sound/f13music/Blue Moon.ogg'
			soundLength = 1720
		if(songnumber == 19)
			soundFile = 'sound/f13music/Love Me As Though No Tomorrow.ogg'
			soundLength = 1550
		if(songnumber == 20)
			soundFile = 'sound/f13music/Heartaches by the Number.ogg'
			soundLength = 1540
		if(songnumber == 21)
			soundFile = 'sound/f13music/Its A Sin To Tell A Lie.ogg'
			soundLength = 1410
		if(songnumber == 22)
			soundFile = 'sound/f13music/Hallo Mister X.ogg'
			soundLength = 1300
		if(songnumber == 23)
			soundFile = 'sound/f13music/Mad About The Boy.ogg'
			soundLength = 1290
		if(songnumber == 24)
			soundFile = 'sound/f13music/Slow Bounce.ogg'
			soundLength = 1250
		if(songnumber == 25)
			soundFile = 'sound/f13music/Somethings Gotta Give.ogg'
			soundLength = 1220
		if(songnumber == 26)
			soundFile = 'sound/f13music/Happy Times.ogg'
			soundLength = 1170
		if(songnumber == 27)
			soundFile = 'sound/f13music/Von Spanien Nach S damerika.ogg'
			soundLength = 1060
		if(songnumber == 28)
			soundFile = 'sound/f13music/Sit And Dream.ogg'
			soundLength = 900
		if(songnumber == 29)
			soundFile = 'sound/f13music/Manhattan.ogg'
			soundLength = 880
		if(songnumber == 30)
			soundFile = 'sound/f13music/American Swing.ogg'
			soundLength = 950

		playsound(get_turf(src),src.soundFile,50)
		src.add_fingerprint(user)
		spawn(src.soundLength)
			src.icon_state = initial(src.icon_state)
			src.busy = 0
	return

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
	var/busy = 0
	var/soundLength = 50
	var/soundFile = 'sound/f13music/mysterious_stranger.ogg'
	var/songnumber = 1
	dog_fashion = null

/obj/item/device/radio/large_radio/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/large_radio/attack_self(mob/user as mob)
	src.playAudio(user)
	return

/obj/item/device/radio/large_radio/New()
	..()
	START_PROCESSING(SSobj, src)

/obj/item/device/radio/large_radio/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/item/device/radio/large_radio/attack_ai(mob/user)
	interact(user)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/large_radio/attack_hand(mob/user)
	interact(user)
	src.playAudio(user)
	return ..()

/obj/item/device/radio/large_radio/proc/playAudio(mob/user)
	if(!src.busy)
		src.busy = 1

		songnumber = pick(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
		if(songnumber == 1)
			soundFile = 'sound/f13music/enclave_dixie.ogg'
			soundLength = 470
		if(songnumber == 2)
			soundFile = 'sound/f13music/enclave_hymn.ogg'
			soundLength = 310
		if(songnumber == 3)
			soundFile = 'sound/f13music/enclave_montezuma.ogg'
			soundLength = 420
		if(songnumber == 4)
			soundFile = 'sound/f13music/enclave_presidential.ogg'
			soundLength = 700
		if(songnumber == 5)
			soundFile = 'sound/f13music/enclave_stars.ogg'
			soundLength = 820
		if(songnumber == 6)
			soundFile = 'sound/f13music/enclave_washington.ogg'
			soundLength = 560
		if(songnumber == 7)
			soundFile = 'sound/f13music/enclave_yankee.ogg'
			soundLength = 730
		if(songnumber == 8)
			soundFile = 'sound/f13music/new_vegas_show_bonus_1.ogg'
			soundLength = 1870
		if(songnumber == 9)
			soundFile = 'sound/f13music/new_vegas_show_bonus_2.ogg'
			soundLength = 2409
		if(songnumber == 10)
			soundFile = 'sound/f13music/Aint That A Kick In the Head.ogg'
			soundLength = 1460
		if(songnumber == 11)
			soundFile = 'sound/f13music/Big Iron.ogg'
			soundLength = 2380
		if(songnumber == 12)
			soundFile = 'sound/f13music/Jingle Jangle Jingle.ogg'
			soundLength = 2000
		if(songnumber == 13)
			soundFile = 'sound/f13music/Why Dont You Do Right.ogg'
			soundLength = 2020
		if(songnumber == 14)
			soundFile = 'sound/f13music/Strahlende Trompete.ogg'
			soundLength = 1870
		if(songnumber == 15)
			soundFile = 'sound/f13music/Johnny Guitar.ogg'
			soundLength = 1830
		if(songnumber == 16)
			soundFile = 'sound/f13music/Where Have You Been All My Life.ogg'
			soundLength = 1770
		if(songnumber == 17)
			soundFile = 'sound/f13music/Goin Under.ogg'
			soundLength = 1770
		if(songnumber == 18)
			soundFile = 'sound/f13music/Blue Moon.ogg'
			soundLength = 1720
		if(songnumber == 19)
			soundFile = 'sound/f13music/Love Me As Though No Tomorrow.ogg'
			soundLength = 1550
		if(songnumber == 20)
			soundFile = 'sound/f13music/Heartaches by the Number.ogg'
			soundLength = 1540
		if(songnumber == 21)
			soundFile = 'sound/f13music/Its A Sin To Tell A Lie.ogg'
			soundLength = 1410
		if(songnumber == 22)
			soundFile = 'sound/f13music/Hallo Mister X.ogg'
			soundLength = 1300
		if(songnumber == 23)
			soundFile = 'sound/f13music/Mad About The Boy.ogg'
			soundLength = 1290
		if(songnumber == 24)
			soundFile = 'sound/f13music/Slow Bounce.ogg'
			soundLength = 1250
		if(songnumber == 25)
			soundFile = 'sound/f13music/Somethings Gotta Give.ogg'
			soundLength = 1220
		if(songnumber == 26)
			soundFile = 'sound/f13music/Happy Times.ogg'
			soundLength = 1170
		if(songnumber == 27)
			soundFile = 'sound/f13music/Von Spanien Nach S damerika.ogg'
			soundLength = 1060
		if(songnumber == 28)
			soundFile = 'sound/f13music/Sit And Dream.ogg'
			soundLength = 900
		if(songnumber == 29)
			soundFile = 'sound/f13music/Manhattan.ogg'
			soundLength = 880
		if(songnumber == 30)
			soundFile = 'sound/f13music/American Swing.ogg'
			soundLength = 950

		playsound(get_turf(src),src.soundFile,50)
		src.add_fingerprint(user)
		spawn(src.soundLength)
			src.icon_state = initial(src.icon_state)
			src.busy = 0
	return

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