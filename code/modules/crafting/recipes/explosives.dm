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

/datum/crafting_recipe/dynamite
	name = "Dynamite"
	result = /obj/item/weapon/grenade/syndieminibomb/dynamite
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/crafting/duct_tape = 1,
				/datum/reagent/fuel = 20,
				/obj/item/stack/cable_coil = 1
				)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 200
	category = CAT_EXPLOSIVES
	default = 1
	XP = 20

/datum/crafting_recipe/dynim
	name = "Dynamite charge"
	result = /obj/item/weapon/grenade/syndieminibomb/dynim
	reqs = list(/obj/item/weapon/grenade/syndieminibomb/dynamite = 6,
				/obj/item/crafting/duct_tape = 2,
				/obj/item/crafting/timer = 1,
				/obj/item/stack/cable_coil = 2,
				/obj/item/crafting/igniter = 1
				)
	time = 150
	category = CAT_EXPLOSIVES
	default = 1
	XP = 40

/datum/crafting_recipe/tincan
	name = "Tincan"
	result = /obj/item/weapon/grenade/syndieminibomb/tincan
	reqs = list(/obj/item/stack/sheet/metal = 2,
				/obj/item/crafting/duct_tape = 1,
				/datum/reagent/fuel = 40,
				/obj/item/stack/cable_coil = 1,
				/obj/item/crafting/igniter = 1
				)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 150
	category = CAT_EXPLOSIVES
	default = 1
	XP = 30

/datum/crafting_recipe/molotov
	name = "Molotov"
	result = /obj/item/weapon/grenade/syndieminibomb/molotov
	reqs = list(/obj/item/weapon/reagent_containers/food/drinks/bottle = 1,
				/datum/reagent/fuel = 60,
				/obj/item/stack/sheet/cloth = 1
				)
	time = 30
	category = CAT_EXPLOSIVES
	default = 1
	XP = 5