/datum/crafting_recipe/tribalarmor
	name = "Tribal Armor"
	result = /obj/item/clothing/suit/armor/f13/tribal
	reqs = list(/obj/item/stack/sheet/animalhide = 3,
				/obj/item/crafting/duct_tape = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_ARMOR
	default = 1
	XP = 20

/datum/crafting_recipe/leatherarmor
	name = "Leather Armor"
	result = /obj/item/clothing/suit/armor/f13/leatherarmor
	reqs = list(/obj/item/stack/sheet/animalhide = 6,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 200
	category = CAT_ARMOR
	default = 1
	XP = 30

/datum/crafting_recipe/chestplate
	name = "Metal Chestplate"
	result = /obj/item/clothing/suit/armor/f13/chestplate
	reqs = list(/obj/item/stack/sheet/animalhide = 1,
				/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 100
	category = CAT_ARMOR
	default = 1
	XP = 40

/datum/crafting_recipe/preacher_hoodie_armored
	name = "Armored Preacher Hoodie"
	result = /obj/item/clothing/suit/hooded/preacher_hoodie/preacher_hoodie_armored
	reqs = list(/obj/item/clothing/suit/hooded/preacher_hoodie = 1,
				/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench)
	time = 100
	category = CAT_ARMOR
	default = 1
	XP = 30

/datum/crafting_recipe/child_of_cathedral_hoodie_armored
	name = "Armored Child of Cathedral Hoodie"
	result = /obj/item/clothing/suit/hooded/child_of_cathedral_hoodie/child_of_cathedral_hoodie_armored
	reqs = list(/obj/item/clothing/suit/hooded/child_of_cathedral_hoodie = 1,
				/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench)
	time = 100
	category = CAT_ARMOR
	default = 1
	XP = 30

/datum/crafting_recipe/metalarmor
	name = "Metal Armor"
	result = /obj/item/clothing/suit/armor/f13/metalarmor
	reqs = list(/obj/item/clothing/suit/armor/f13/chestplate = 1,
				/obj/item/stack/sheet/animalhide = 3,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/crafting/duct_tape = 2,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 200
	category = CAT_ARMOR
	default = 1
	XP = 50

/datum/crafting_recipe/bmetalarmor
	name = "Black Metal Armor"
	result = /obj/item/clothing/suit/armor/f13/bmetalarmor
	reqs = list(/obj/item/clothing/suit/armor/f13/metalarmor = 1,
				/obj/item/stack/sheet/animalhide = 2,
				/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 5,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters)
	time = 200
	category = CAT_ARMOR
	default = 1
	XP = 50

/datum/crafting_recipe/supermutant_armor
	name = "Supermutant Metal Armor"
	result = /obj/item/clothing/suit/armor/f13/supermutant_armor
	reqs = list(/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/metal = 10,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench)
	time = 200
	category = CAT_ARMOR
	default = 1
	XP = 50

/datum/crafting_recipe/sm_armor_kit
	name = "Supermutant Armor Kit"
	result = /obj/item/clothing/suit/armor/f13/sm_armor_kit
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 1,
				/obj/item/clothing/suit/armor/f13/kit = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/weapon/wirecutters, /obj/item/weapon/wrench)
	time = 100
	category = CAT_ARMOR
	default = 1
	XP = 25

/datum/crafting_recipe/kit
	name = "Basic Armor Kit"
	result = /obj/item/clothing/suit/armor/f13/kit
	reqs = list(/obj/item/stack/cable_coil = 2,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 1,
				/obj/item/stack/sheet/animalhide = 2)
	time = 100
	category = CAT_ARMOR
	default = 1
	XP = 25