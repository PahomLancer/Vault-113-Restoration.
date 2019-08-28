/mob/living/simple_animal
	var/looted = FALSE
	var/looting = FALSE

/mob/living/simple_animal/proc/getLootObject(var/modifer)
/*
	var/list/trash = list (
		/obj/item/trash/f13/bubblegum = 1,
		/obj/item/trash/f13/bubblegum_large = 1,
		/obj/item/trash/f13/cram = 1,
		/obj/item/trash/f13/cram_large = 1,
		/obj/item/trash/f13/yumyum = 1,
		/obj/item/trash/f13/fancylads = 1,
		/obj/item/trash/f13/sugarbombs = 1,
		/obj/item/trash/f13/crisps = 1,
		/obj/item/trash/f13/steak = 1,
		/obj/item/trash/f13/specialapples = 1,
		/obj/item/trash/f13/dandyapples = 1,
		/obj/item/trash/f13/blamco_large = 1,
		/obj/item/trash/f13/blamco = 1,
		/obj/item/trash/f13/mechanist = 1,
		/obj/item/trash/f13/instamash = 1,
		/obj/item/trash/f13/porknbeans = 1,
		/obj/item/trash/f13/borscht = 1,
		/obj/item/trash/f13/dog = 1,
		/obj/item/trash/f13/mre = 1,
		/obj/item/trash/f13/rotten = 1
	)
*/

	var/list/common = list (
		/obj/item/stack/caps/random = 80,
		/obj/item/ammo_box/magazine/F13/m10 = 10,
		/obj/item/ammo_box/magazine/F13/m10smg = 10,
		/obj/item/ammo_box/F13/m44 = 1,
		/obj/item/ammo_box/magazine/F13/m308 = 20,
		/obj/item/ammo_box/F13/m308 = 20,
		/obj/item/ammo_box/magazine/F13/m223 = 10,
		/obj/item/ammo_box/F13/m223 = 20,
		/obj/item/ammo_box/magazine/F13/m556 = 70,
		/obj/item/weapon/stock_parts/cell = 10
	)

	var/list/uncommon = list (
		/obj/item/weapon/reagent_containers/pill/patch/radaway = 5,
		/obj/item/weapon/gun/ballistic/shotgun/pipe = 5,
		/obj/item/weapon/gun/energy/laser/pistol = 7,
		/obj/item/weapon/gun/ballistic/automatic/pistol/n99 = 25
	)

	var/list/unusual = list (
		/obj/item/trash/f13/rotten = 25,
		/obj/item/weapon/reagent_containers/food/snacks/f13/bubblegum/large = 5,
		/obj/item/weapon/reagent_containers/food/snacks/f13/cram = 6,
		/obj/item/trash/f13/mre = 24
	)

	var/list/rare = list (
		/obj/item/weapon/reagent_containers/f13stimpack = 5,
		/obj/item/weapon/reagent_containers/f13stimpack/super = 2,
		/obj/item/crafting/weapon_repair_kit = 3,
		/obj/item/kit/damage = 1,
		/obj/item/kit/recoil = 1,
		/obj/item/kit/burst = 1,
		/obj/item/kit/delay = 1,
		/obj/item/kit/bayonet = 1,
		/obj/item/kit/scope = 1,
		/obj/item/kit/condition = 1
	)

	var/rarity = rand(1, 100)
	var/list/rarity_range = list (50 * modifer, 60 * modifer, 75 * modifer, 90 * modifer)

	var/list/loot = null

	if(rarity > rarity_range[1])
		loot = common

	if(rarity > rarity_range[2])
		loot = uncommon

	if(rarity > rarity_range[3])
		loot = unusual

	if(rarity > rarity_range[4])
		loot = rare

	if(loot != null)
		var/obj/item = pickweight(loot)
		return item
	else
		return null

/mob/living/simple_animal/proc/loot(var/mob/living/carbon/player)
	if(looted)
		return

	if(looting)
		return

	looting = TRUE
	if(!do_mob(player, src, 20))
		looting = FALSE
		return

	looting = FALSE
	looted = TRUE

	player.visible_message("[player] takes something from [src].")

	// 0 LUCK = 0.3. 10 LUCK = 1.2
	var/modifer = 0.3 + (player.special.getPoint("l") * 0.05) + (player.special.getPoint("p") * 0.15)


	// DEATHCLAW = 1.3 MOLERAT = 0.67
	modifer *= 0.6 + (XP * 0.04)

	var/itemType = getLootObject(1 / modifer)
	if(itemType == null)
		player.visible_message("<span class='notice'>Nothing there.</span>")
		return

	var/itemTypeString = "[itemType]"
	var/obj/item = new itemTypeString()

	player.put_in_active_hand(item)