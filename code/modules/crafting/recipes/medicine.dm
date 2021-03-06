/datum/crafting_recipe/healingpowder
	name = "Healing Powder"
	result = /obj/item/stack/medical/healingpowder
	time = 50
	reqs = list(/obj/item/weapon/reagent_containers/food/snacks/grown/broc = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/xander = 1)
	category = CAT_MEDICINE
	default = 1
	XP = 20

/datum/crafting_recipe/stimpak
	name = "Stimpak"
	result = /obj/item/weapon/reagent_containers/f13stimpack
	reqs = list(/obj/item/weapon/reagent_containers/food/snacks/grown/glow = 2,
				/obj/item/weapon/reagent_containers/food/snacks/grown/shroom = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/agave = 1,
				/obj/item/weapon/reagent_containers/syringe = 1,
				/datum/reagent/water = 20
				)
	time = 50
	category = CAT_MEDICINE
	default = 1
	XP = 40

/*
/datum/crafting_recipe/gauze
	name = "Clear Gauze"
	result = /obj/item/stack/medical/gauze
	reqs = list(/obj/item/stack/medical/gauze/improvised,
				/datum/reagent/consumable/ethanol = 10)
	time = 50
	category = CAT_MEDICINE
	default = 1
	XP = 5
*/

/datum/crafting_recipe/radaway
	name = "Radaway"
	result = /obj/item/weapon/reagent_containers/pill/patch/radaway
	reqs = list(/obj/item/crafting/abraxo = 2,
				/datum/reagent/water = 10,
				/obj/item/weapon/reagent_containers/food/snacks/grown/glow = 3)
	time = 100
	category = CAT_MEDICINE
	default = 1
	XP = 20


/datum/crafting_recipe/turbo
	name = "Turbo"
	result = /obj/item/weapon/reagent_containers/pill/patch/turbo
	reqs = list(/obj/item/weapon/reagent_containers/pill/patch/jet = 1,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/turpentine = 1,
				/obj/item/crafting/abraxo = 1,
				/obj/item/weapon/reagent_containers/food/snacks/grown/broc = 1)
	tools = list(/obj/item/weapon/lighter, /obj/item/weapon/reagent_containers/glass/beaker)
	time = 100
	category = CAT_MEDICINE
	default = 1
	XP = 50

/datum/crafting_recipe/fev
	name = "FEV"
	result = /obj/item/stack/medical/fev
	reqs = list(/obj/item/weapon/reagent_containers/blood/empty = 1,
				/datum/reagent/water/fev = 10)
	time = 100
	category = CAT_MEDICINE
	default = 1
	XP = 10