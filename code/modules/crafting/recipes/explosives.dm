/datum/crafting_recipe/capmine
	name = "Bottlecap Mine"
	result = /obj/item/weapon/grenade/mine/caps_mine
	reqs = list(/obj/item/crafting/lunchbox = 1,
				/obj/item/crafting/sensor_module = 1,
				/obj/item/crafting/timer = 1,
				/obj/item/crafting/igniter = 1,
				/obj/item/crafting/duct_tape = 1,
				/datum/reagent/fuel = 20,
				/obj/item/stack/cable_coil = 1,
				/obj/item/stack/caps = 10
				)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 200
	category = CAT_EXPLOSIVES
	default = 1
	XP = 100
