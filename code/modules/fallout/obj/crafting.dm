//Fallout 13 crafting items directory
//All of the items listed are useful only for crafting things.

/obj/item/weaponcrafting/reciever
	name = "modular receiver"
	desc = "A prototype modular receiver and trigger assembly for a firearm."
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "reciever"

/obj/item/weaponcrafting/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of wood."
	icon = 'icons/fallout/objects/crafting.dmi'
	icon_state = "riflestock"

//The following items are in "crafting" type just to keep code clean.
/obj/item/crafting
	name = "Shitspawn"
	desc = "Why it's here?!<br>Badmins spawn shit!<br>Tell someone about it."
	icon = 'icons/fallout/objects/crafting.dmi'
	item_state = "null"
	w_class = WEIGHT_CLASS_TINY

/obj/item/crafting/diode
	name = "diode"
	desc = "It looks like something I saw in that useless broken television set once.<br>That thing is probably used in some electronic devices."
	icon_state = "diode_1"
/obj/item/crafting/diode/initialize()
	..()
	icon_state = "diode_[rand(1,3)]"

/obj/item/crafting/transistor
	name = "transistor"
	desc = "Popov would love it, but Tesla got to see it.<br>The most useful electrical component."
	icon_state = "transistor_1"
/obj/item/crafting/transistor/initialize()
	..()
	icon_state = "transistor_[rand(1,3)]"

/obj/item/crafting/capacitor
	name = "capacitor"
	desc = "It looks like something I saw inside of the radio once.<br>It seems like it's the most basic electrical component."
	icon_state = "capacitor_1"
/obj/item/crafting/capacitor/initialize()
	..()
	icon_state = "capacitor_[rand(1,3)]"

/obj/item/crafting/fuse
	name = "fuse"
	desc = "A tiny glass tube with some wiring stuck inside of it.<br>I have no idea what it is."
	icon_state = "fuse_1"
/obj/item/crafting/fuse/initialize()
	..()
	icon_state = "fuse_[rand(1,3)]"

/obj/item/crafting/resistor
	name = "resistor"
	desc = "Tesla Warrior says, \"Stop right there, criminal electron!\"<br>Electron says, \"You'll never catch me!!!\"<br>*Zoom* *Zoom* *Pew* *Pew* *Pew*"
	icon_state = "resistor_1"
/obj/item/crafting/resistor/initialize()
	..()
	icon_state = "resistor_[rand(1,3)]"

/obj/item/crafting/switch
	name = "switch"
	desc = "A common switch, used to light up the flashlight or activate a bomb timer." //Why i code it?
	icon_state = "switch_1"
/obj/item/crafting/switch/initialize()
	..()
	icon_state = "switch_[rand(1,3)]"

/obj/item/crafting/bulb
	name = "bulb"
	desc = "And at last I see the light,<br>And it's like the fog has lifted,<br>And at last I see the light,<br>And it's like the sky is new,<br>And it's warm and real and bright,<br>And the world has somehow shifted,<br>All at once everything looks different."
	icon_state = "bulb_1"
/obj/item/crafting/bulb/initialize()
	..()
	icon_state = "bulb_[rand(1,3)]"

/obj/item/crafting/board
	name = "empty circuit board"
	desc = "A plastic board used to hold all other electrical components together."
	icon_state = "board_1"
/obj/item/crafting/board/initialize()
	..()
	icon_state = "board_[rand(1,3)]"

/obj/item/crafting/buzzer
	name = "buzzer"
	desc = "I can almost hear it buzzing. Except it's not."
	icon_state = "buzzer"

/obj/item/crafting/frame
	name = "circuit board assembly"
	desc = "A printed circuit board - a complex electrical component."
	icon_state = "frame"

/obj/item/crafting/small_gear
	name = "small gear"
	desc = "A litle part of a big mechanism."
	icon_state = "gear_small"

/obj/item/crafting/large_gear
	name = "large gear"
	desc = "A big part of a grand mechanism."
	icon_state = "gear_large"

/obj/item/crafting/duct_tape
	name = "duct tape"
	desc = "A pinnacle of engineering - it fixes everything!"
	icon_state = "duct_tape"

/obj/item/crafting/kettle
	name = "kettle"
	desc = "A kettle for tea"
	icon_state = "kettle"

/obj/item/crafting/toaster
	name = "toaster"
	desc = "The toaster is a pre-War kitchen appliance that was used to toast bread. It has a stainless steel casing with black painted levers and base, that has internal heating coils to toast the bread inside the two slots on the top."
	icon_state = "toaster"

/obj/item/crafting/vacuum_cleaner
	name = "vacuum cleaner"
	desc = "A Vacuum cleaner"
	icon_state = "vacuum_cleaner"

/obj/item/crafting/sensor_module
	name = "sensor module"
	desc = "A Sensor module"
	icon_state = "sensor_module"

/obj/item/crafting/cofee_pot
	name = "Coffee pot"
	desc = "The coffee pot is a large pot that gently slopes inwards. As indicated by the untarnished pot, it was originally chrome colored."
	icon_state = "cofee_pot"

/obj/item/crafting/cookpot
	name = "Cookpot"
	desc = "Cookpot."
	icon_state = "cookpot"

/obj/item/crafting/Baseball_ball
	name = "Baseball ball"
	desc = "Baseball ball."
	icon_state = "Baseball_ball"

/obj/item/crafting/wonderglue
	name = "wonder glue"
	desc = "A pre-War brand of glue that has retained its adhesive qualities.<br>A glue itself is a liquid acrylic adhesive, meant to fix broken plastics and ceramics or used in the assembly of a great assortment of items."
	icon_state = "wonderglue1"

/obj/item/crafting/wonderglue/initialize()
	..()
	icon_state = "wonderglue[rand(1,2)]"

/obj/item/crafting/turpentine
	name = "turpentine"
	desc = "A flammable liquid distilled from pine resin, used as a solvent."
	icon_state = "turpentine"

/obj/item/crafting/abraxo
	name = "abraxo"
	desc = "A pre-War cleaning agent produced by Abraxodyne Chemical."
	icon_state = "abraxo"

/obj/item/crafting/reloader
	name = "cartrige reloader"
	desc = "This device allows to hand-load your own gun rounds using certain raw materials."
	icon_state = "reloader"
	var pow_loaded = 0

//crc
/obj/item/crafting/reloader/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/crafting/reloader_set))
		if(pow_loaded < 100)
			visible_message("<span class='notice'>[user] put the materials in reloader</span>")
			pow_loaded = 100
			I.Del()

	if(istype(I, /obj/item/ammo_casing))
		if(pow_loaded <= 0)
			to_chat(user, "<span class='notice'>There are no materials left for reload ammo casing.</span>")
		else
			if(do_after(user, 5, target = src))
				I.New()
				I.forceMove(src)
				to_chat(user, "<span class='notice'>You take a round from reloader</span>")

				pow_loaded -= 1

/obj/item/crafting/reloader/examine()
	..()
	if(pow_loaded > 0)
		usr.show_message("There are [pow_loaded] materials left.",1)
	else
		usr.show_message("<span class='notice'>There are no materials left.",1)

///
/obj/item/crafting/igniter
	name = "igniter"
	desc = "A small electronic device able to ignite combustable substances."
	icon_state = "igniter"

/obj/item/crafting/timer
	name = "timer"
	desc = "Used to time things. Works well with contraptions which has to count down. Tick tock."
	icon_state = "timer"

/obj/item/crafting/sensor
	name = "proximity sensor"
	desc = "Used for scanning and alerting when someone enters a certain proximity."
	icon_state = "sensor"


/obj/item/crafting/lunchbox
	name = "lunch box"
	desc = "This was a promotional item created by Vault-Tec before the Great War and used in the company's advertisements. With the right schematics, it can be used to make bottlecap mines."
	icon_state = "lunchbox"

//crc

/obj/item/crafting/reloader_set
	name = "Reloader cartridges"
	desc = "Materials for reloader device."
	icon_state = "reloader_set"
//	var cartridges = 100
/*
/obj/item/crafting/reloader/examine()
	..()
	if(cartridges > 0)
		usr << "<span class='notice'>There are [cartridges] cartridges left.</span>"
	else
		usr << "<span class='notice'>There are no cartridges left.</span>"
*/


/obj/item/crafting/weapon_repair_kit
	name = "Weapon repair kit"
	desc = "It can be used to repair weapons."
	icon_state = "weapon_repair_set"
	price = 1000