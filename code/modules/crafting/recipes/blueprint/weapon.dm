//BALLISTIC

/obj/item/blueprint/bozar
	name = "bozar blueprint"
	recipe = /datum/crafting_recipe/bozar

/obj/item/blueprint/n99
	name = "10-mm pistol blueprint"
	recipe = /datum/crafting_recipe/n99

/obj/item/blueprint/a_rifle308
	name = "automatic rifle .308 blueprint"
	recipe = /datum/crafting_recipe/a_rifle308

/obj/item/blueprint/smg10mm
	name = "10-mm submachine gun blueprint"
	recipe = /datum/crafting_recipe/smg10mm

/obj/item/blueprint/rifle308
	name = "rifle .308 blueprint"
	recipe = /datum/crafting_recipe/rifle308

/obj/item/blueprint/pipegun
	name = "pipe gun blueprint"
	recipe = /datum/crafting_recipe/pipegun

/obj/item/blueprint/assault_rifle
	name = "assault rifle blueprint"
	recipe = /datum/crafting_recipe/assault_rifle

/obj/item/blueprint/trail_carbine
	name = "trail carbine blueprint"
	recipe = /datum/crafting_recipe/trail_carbine

//PLASMA

/obj/item/blueprint/plasma_rifle
	name = "plasma rifle blueprint"
	recipe = /datum/crafting_recipe/plasma_rifle

/obj/item/blueprint/glock
	name = "glock86 blueprint"
	recipe = /datum/crafting_recipe/plasma_glock

/obj/item/blueprint/plasma_pistol
	name = "plasma pistol blueprint"
	recipe = /datum/crafting_recipe/plasma_pistol

/obj/item/blueprint/multiplas
	name = "multiplas blueprint"
	recipe = /datum/crafting_recipe/plasma_multiplas

/obj/item/blueprint/turboplas
	name = "turbo plasma rifle blueprint"
	recipe = /datum/crafting_recipe/plasma_turbo

//LASER

/obj/item/blueprint/laser_pistol
	name = "laser pistol blueprint"
	recipe = /datum/crafting_recipe/laser_pistol

/obj/item/blueprint/laser_rifle9
	name = "laser rifle AER9 blueprint"
	recipe = /datum/crafting_recipe/laser_rifle9

/obj/item/blueprint/laser_rifle13
	name = "laser rifle AER13 blueprint"
	recipe = /datum/crafting_recipe/laser_rifle13

/obj/item/blueprint/laser_tri
	name = "tribeam blueprint"
	recipe = /datum/crafting_recipe/laser_tri

/obj/item/blueprint/laser_rcw
	name = "RCW blueprint"
	recipe = /datum/crafting_recipe/laser_rcw


///bench///

/obj/item/bench/ballistic
	name = "Weapon Crafting Bench"
	icon_state = "bench"
	recipe = list(/datum/crafting_recipe/trail_carbine, /datum/crafting_recipe/assault_rifle, /datum/crafting_recipe/pipegun, /datum/crafting_recipe/rifle308, /datum/crafting_recipe/smg10mm, /datum/crafting_recipe/a_rifle308, /datum/crafting_recipe/n99)

/obj/item/bench/laser
	name = "Energy Weapon Crafting Bench"
	icon_state = "bench_l"
	recipe = list(/datum/crafting_recipe/laser_rcw, /datum/crafting_recipe/laser_tri, /datum/crafting_recipe/laser_rifle13, /datum/crafting_recipe/laser_rifle9, /datum/crafting_recipe/laser_pistol, /datum/crafting_recipe/plasma_pistol)

