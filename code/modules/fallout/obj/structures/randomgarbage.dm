//Fallout 13 automobile tires directory

/obj/structure/garbage
	name = "trash"
	desc = "Just trash"
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "Junk_1"
	obj_integrity = 50
	max_integrity = 50
	density = 1
	self_weight = 10
	var/craftnumber = 10
	var/craftobj = 10
	var/obj/item/crafting/CC

/obj/structure/garbage/New()
	craftnumber = pick(6,7,8,9,10)

/obj/structure/garbage/attack_hand(mob/user)
	if(iscyborg(user) || isalien(user))
		return
	if(craftnumber > 0)
		craftobj = pick(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
		if(craftobj == 1)
			CC = new/obj/item/crafting/Baseball_ball(user.loc)
		if(craftobj == 2)
			CC = new/obj/item/crafting/abraxo(user.loc)
		if(craftobj == 3)
			CC = new/obj/item/crafting/board(user.loc)
		if(craftobj == 4)
			CC = new/obj/item/crafting/bulb(user.loc)
		if(craftobj == 5)
			CC = new/obj/item/crafting/buzzer(user.loc)
		if(craftobj == 6)
			CC = new/obj/item/crafting/capacitor(user.loc)
		if(craftobj == 7)
			CC = new/obj/item/crafting/cofee_pot(user.loc)
		if(craftobj == 8)
			CC = new/obj/item/crafting/cookpot(user.loc)
		if(craftobj == 9)
			CC = new/obj/item/crafting/diode(user.loc)
		if(craftobj == 10)
			CC = new/obj/item/crafting/duct_tape(user.loc)
		if(craftobj == 11)
			CC = new/obj/item/crafting/frame(user.loc)
		if(craftobj == 12)
			CC = new/obj/item/crafting/fuse(user.loc)
		if(craftobj == 13)
			CC = new/obj/item/crafting/igniter(user.loc)
		if(craftobj == 14)
			CC = new/obj/item/crafting/kettle(user.loc)
		if(craftobj == 15)
			CC = new/obj/item/crafting/large_gear(user.loc)
		if(craftobj == 16)
			CC = new/obj/item/crafting/lunchbox(user.loc)
		if(craftobj == 17)
			CC = new/obj/item/crafting/reloader(user.loc)
		if(craftobj == 18)
			CC = new/obj/item/crafting/reloader_set(user.loc)
		if(craftobj == 19)
			CC = new/obj/item/crafting/resistor(user.loc)
		if(craftobj == 20)
			CC = new/obj/item/crafting/sensor(user.loc)
		if(craftobj == 21)
			CC = new/obj/item/crafting/sensor_module(user.loc)
		if(craftobj == 22)
			CC = new/obj/item/crafting/small_gear(user.loc)
		if(craftobj == 23)
			CC = new/obj/item/crafting/switch(user.loc)
		if(craftobj == 24)
			CC = new/obj/item/crafting/timer(user.loc)
		if(craftobj == 25)
			CC = new/obj/item/crafting/toaster(user.loc)
		if(craftobj == 26)
			CC = new/obj/item/crafting/transistor(user.loc)
		if(craftobj == 27)
			CC = new/obj/item/crafting/turpentine(user.loc)
		if(craftobj == 28)
			CC = new/obj/item/crafting/vacuum_cleaner(user.loc)
		if(craftobj == 29)
			CC = new/obj/item/crafting/weapon_repair_kit(user.loc)
		if(craftobj == 30)
			CC = new/obj/item/crafting/wonderglue(user.loc)

		to_chat(user, "<span class='notice'>You take craft materilas from [src].</span>")
		craftnumber = craftnumber - 1
	else
		if(iscyborg(user) || isalien(user))
			return

		craftobj = pick(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30)
		if(craftobj == 1)
			CC = new/obj/item/crafting/Baseball_ball(user.loc)
		if(craftobj == 2)
			CC = new/obj/item/crafting/abraxo(user.loc)
		if(craftobj == 3)
			CC = new/obj/item/crafting/board(user.loc)
		if(craftobj == 4)
			CC = new/obj/item/crafting/bulb(user.loc)
		if(craftobj == 5)
			CC = new/obj/item/crafting/buzzer(user.loc)
		if(craftobj == 6)
			CC = new/obj/item/crafting/capacitor(user.loc)
		if(craftobj == 7)
			CC = new/obj/item/crafting/cofee_pot(user.loc)
		if(craftobj == 8)
			CC = new/obj/item/crafting/cookpot(user.loc)
		if(craftobj == 9)
			CC = new/obj/item/crafting/diode(user.loc)
		if(craftobj == 10)
			CC = new/obj/item/crafting/duct_tape(user.loc)
		if(craftobj == 11)
			CC = new/obj/item/crafting/frame(user.loc)
		if(craftobj == 12)
			CC = new/obj/item/crafting/fuse(user.loc)
		if(craftobj == 13)
			CC = new/obj/item/crafting/igniter(user.loc)
		if(craftobj == 14)
			CC = new/obj/item/crafting/kettle(user.loc)
		if(craftobj == 15)
			CC = new/obj/item/crafting/large_gear(user.loc)
		if(craftobj == 16)
			CC = new/obj/item/crafting/lunchbox(user.loc)
		if(craftobj == 17)
			CC = new/obj/item/crafting/reloader(user.loc)
		if(craftobj == 18)
			CC = new/obj/item/crafting/reloader_set(user.loc)
		if(craftobj == 19)
			CC = new/obj/item/crafting/resistor(user.loc)
		if(craftobj == 20)
			CC = new/obj/item/crafting/sensor(user.loc)
		if(craftobj == 21)
			CC = new/obj/item/crafting/sensor_module(user.loc)
		if(craftobj == 22)
			CC = new/obj/item/crafting/small_gear(user.loc)
		if(craftobj == 23)
			CC = new/obj/item/crafting/switch(user.loc)
		if(craftobj == 24)
			CC = new/obj/item/crafting/timer(user.loc)
		if(craftobj == 25)
			CC = new/obj/item/crafting/toaster(user.loc)
		if(craftobj == 26)
			CC = new/obj/item/crafting/transistor(user.loc)
		if(craftobj == 27)
			CC = new/obj/item/crafting/turpentine(user.loc)
		if(craftobj == 28)
			CC = new/obj/item/crafting/vacuum_cleaner(user.loc)
		if(craftobj == 29)
			CC = new/obj/item/crafting/weapon_repair_kit(user.loc)
		if(craftobj == 30)
			CC = new/obj/item/crafting/wonderglue(user.loc)
		to_chat(user, "<span class='notice'>You take last craft materilas from [src].</span>")
		qdel(src)

/obj/structure/garbage/garbage2
	icon_state = "Junk_2"

/obj/structure/garbage/garbage3
	icon_state = "Junk_3"

/obj/structure/garbage/garbage4
	icon_state = "Junk_4"

/obj/structure/garbage/garbage5
	icon_state = "Junk_5"

/obj/structure/garbage/garbage6
	icon_state = "Junk_6"

/obj/structure/garbage/garbage7
	icon_state = "Junk_8"

/obj/structure/garbage/garbage9
	icon_state = "Junk_9"

/obj/structure/garbage/garbage10
	icon_state = "Junk_10"

/obj/structure/garbage/garbage11
	icon_state = "Junk_11"

/obj/structure/garbage/garbage12
	icon_state = "Junk_12"