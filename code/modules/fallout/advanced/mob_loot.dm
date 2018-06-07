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
		/obj/item/ammo_box/magazine/F13/m10 = 70,
		/obj/item/ammo_box/magazine/F13/m10smg = 70,
		/obj/item/ammo_box/F13/m44 = 70,
		/obj/item/ammo_box/magazine/F13/m308 = 70,
		/obj/item/ammo_box/F13/m308 = 70,
		/obj/item/ammo_box/magazine/F13/m223 = 70,
		/obj/item/ammo_box/F13/m223 = 70,
		/obj/item/ammo_box/magazine/F13/m556 = 70,
		/obj/item/weapon/stock_parts/cell = 70
	)

	var/list/uncommon = list (
		/obj/item/weapon/reagent_containers/pill/patch/radaway = 30,
		/obj/item/weapon/gun/ballistic/shotgun/pipe = 30,
		/obj/item/weapon/gun/energy/laser/pistol = 30,
		/obj/item/weapon/gun/ballistic/automatic/pistol/n99 = 30
	)

	var/list/unusual = list (
		/obj/item/weapon/reagent_containers/food/snacks/f13/bubblegum = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/bubblegum/large = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/cram = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/cram/large = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/yumyum = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/fancylads = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/sugarbombs = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/crisps = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/steak = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/specialapples = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/dandyapples = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/blamco = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/blamco/large = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/mechanic = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/instamash = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/porknbeans = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/borscht = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/dog = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/mre = 20,
		/obj/item/weapon/reagent_containers/food/snacks/f13/galette = 20
	)

	var/list/rare = list (
		/obj/item/weapon/reagent_containers/f13stimpack = 10,
		/obj/item/weapon/reagent_containers/f13stimpack/super = 2,
		/obj/item/crafting/weapon_repair_kit = 10,
		/obj/item/kit/damage = 10,
		/obj/item/kit/recoil = 10,
		/obj/item/kit/burst = 10,
		/obj/item/kit/delay = 10,
		/obj/item/kit/bayonet = 10,
		/obj/item/kit/scope = 10,
		/obj/item/kit/condition = 10
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