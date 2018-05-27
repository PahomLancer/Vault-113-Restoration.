//BALLISTIC

/datum/crafting_recipe/b_bozar
	name = "Bozar blueprint"
	result = /obj/item/blueprint/bozar
	reqs = list(/obj/item/blueprint/rifle308 = 1,
				/obj/item/blueprint/smg10mm = 1,
				/obj/item/blueprint/assault_rifle = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_a_rifle
	name = "Automatic Rifle .308 blueprint"
	result = /obj/item/blueprint/a_rifle308
	reqs = list(/obj/item/blueprint/rifle308 = 1,
				/obj/item/blueprint/smg10mm = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_smg10mm
	name = "Sub Machine Gun 10-mm blueprint"
	result = /obj/item/blueprint/smg10mm
	reqs = list(/obj/item/blueprint/n99 = 1,
				/obj/item/blueprint/assault_rifle = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_rifle308
	name = "Rifle .308 blueprint"
	result = /obj/item/blueprint/rifle308
	reqs = list(/obj/item/blueprint/trail_carbine = 1,
				/obj/item/blueprint/n99 = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_trail
	name = "Trail Carbine blueprint"
	result = /obj/item/blueprint/trail_carbine
	reqs = list(/obj/item/blueprint/pipegun = 1,
				/obj/item/blueprint/n99 = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

//LASER

/datum/crafting_recipe/b_laser_rifle9
	name = "Laser Rifle AER9 blueprint"
	result = /obj/item/blueprint/laser_rifle9
	reqs = list(/obj/item/blueprint/laser_pistol = 1,
				/obj/item/blueprint/smg10mm = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_laser_rifle13
	name = "Laser Rifle AER13 blueprint"
	result = /obj/item/blueprint/laser_rifle13
	reqs = list(/obj/item/blueprint/laser_rifle9 = 1,
				/obj/item/blueprint/plasma_rifle = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_laser_tri
	name = "Tribeam blueprint"
	result = /obj/item/blueprint/laser_tri
	reqs = list(/obj/item/blueprint/laser_rifle13 = 1,
				/obj/item/blueprint/trail_carbine = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_laser_rcw
	name = "RCW blueprint"
	result = /obj/item/blueprint/laser_rcw
	reqs = list(/obj/item/blueprint/plasma_rifle = 1,
				/obj/item/blueprint/laser_pistol = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

//PLASMA

/datum/crafting_recipe/b_plasma_rifle
	name = "Plasma Rifle blueprint"
	result = /obj/item/blueprint/plasma_rifle
	reqs = list(/obj/item/blueprint/laser_rifle9 = 1,
				/obj/item/blueprint/laser_pistol = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1
/*
/datum/crafting_recipe/glock
	name = "Trail Carbine blueprint"
	result = /obj/item/blueprint/glock
	reqs = list(/obj/item/blueprint/pipegun = 1,
				/obj/item/blueprint/n99 = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1
*/

/datum/crafting_recipe/b_multiplas
	name = "Multiplas blueprint"
	result = /obj/item/blueprint/multiplas
	reqs = list(/obj/item/blueprint/plasma_rifle = 1,
				/obj/item/blueprint/laser_tri = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1

/datum/crafting_recipe/b_turboplas
	name = "Turbo Plasma Rifle blueprint"
	result = /obj/item/blueprint/turboplas
	reqs = list(/obj/item/blueprint/multiplas = 1,
				/obj/item/blueprint/laser_rcw = 1)
	tools = list(/obj/item/weapon/pen)
	time = 200
	category = CAT_BLUEPRINT
	default = 1