/mob/living/simple_animal/hostile/vault
	name = "Vault Dweller"
	desc = "Just a Vault Dweller"
	icon_state = "vault_dweller"
	icon_living = "vault_dweller"
	icon_dead = "vault_dweller"
	icon_gib = "vault_dweller"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/vault)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("vault", "city")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Yep!", "I want to eat!", "Overseer is asshole!", "What about nuka cola?")
	speak_emote = "says,"
	speak_chance = 1
	XP = 10

/mob/living/simple_animal/hostile/vault/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "vault"
			H.faction -= "city"
	..()

/obj/effect/mob_spawn/human/corpse/vault
	name = "Vault Dweller"
	uniform = /obj/item/clothing/under/f13/vault/v13
	//suit = /obj/item/clothing/suit/armor/vest
	shoes = /obj/item/clothing/shoes/sneakers/brown
	//gloves = /obj/item/clothing/gloves/combat
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	//helmet = /obj/item/clothing/head/helmet/swat
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/vault/dweller
	minimum_distance = 10
	retreat_distance = 10
	obj_damage = 0
	environment_smash = 0

/mob/living/simple_animal/hostile/vault/dweller/Aggro()
	..()
	summon_backup(15)
	say("HELP!!")

/mob/living/simple_animal/hostile/vault/dweller/dweller1
	icon_state = "vault_dweller1"
	icon_living = "vault_dweller1"
	icon_dead = "vault_dweller1"
	icon_gib = "vault_dweller1"

/mob/living/simple_animal/hostile/vault/dweller/dweller2
	icon_state = "vault_dweller2"
	icon_living = "vault_dweller2"
	icon_dead = "vault_dweller2"
	icon_gib = "vault_dweller2"

/mob/living/simple_animal/hostile/vault/dweller/dweller3
	icon_state = "vault_dweller3"
	icon_living = "vault_dweller3"
	icon_dead = "vault_dweller3"
	icon_gib = "vault_dweller3"

/mob/living/simple_animal/hostile/vault/dweller/dweller4
	icon_state = "vault_dweller4"
	icon_living = "vault_dweller4"
	icon_dead = "vault_dweller4"
	icon_gib = "vault_dweller4"

/mob/living/simple_animal/hostile/vault/dweller/dweller5
	icon_state = "vault_dweller5"
	icon_living = "vault_dweller5"
	icon_dead = "vault_dweller5"
	icon_gib = "vault_dweller5"

/mob/living/simple_animal/hostile/vault/security
	name = "Vault Security"
	desc = "Just a Vault Security"
	icon_state = "vault_dweller_sec"
	icon_living = "vault_dweller_sec"
	icon_dead = "vault_dweller_sec"
	icon_gib = "vault_dweller_sec"
	maxHealth = 200
	health = 200
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/vault/security, /obj/item/weapon/gun/energy/laser/pistol/wattz1000)
	self_weight = 50
	healable = 1
	ranged = 1
	rapid = 1
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'
	XP = 20

/obj/effect/mob_spawn/human/corpse/vault/security
	name = "Vault Security"
	uniform = /obj/item/clothing/under/f13/vault/v13
	suit = /obj/item/clothing/suit/armor/bulletproof
	shoes = /obj/item/clothing/shoes/sneakers/brown
	//gloves = /obj/item/clothing/gloves/combat
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/riot
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/enclave
	name = "Enclave"
	desc = "Just an Enclave"
	icon_state = "enclave_scientist"
	icon_living = "enclave_scientist"
	icon_dead = "enclave_scientist"
	icon_gib = "enclave_scientist"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/enclave)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("enclave")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Yep!", "Where is your powerarmor!", "Moron!", "Idiot!")
	speak_emote = "says,"
	speak_chance = 1
	XP = 15

/mob/living/simple_animal/hostile/enclave/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "enclave"
	..()

/obj/effect/mob_spawn/human/corpse/enclave
	name = "Enclave scientist"
	uniform = /obj/item/clothing/under/f13/enclave_officer
	suit = /obj/item/clothing/suit/radiation/enclave
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/f13/military
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/radiation/enclave
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/enclave/scientist
	name = "Enclave scientist"
	desc = "Just an Enclave scientist"
	minimum_distance = 10
	retreat_distance = 10
	obj_damage = 0
	environment_smash = 0

/mob/living/simple_animal/hostile/enclave/scientist/Aggro()
	..()
	summon_backup(15)
	say("HELP!!")

/mob/living/simple_animal/hostile/enclave/soldier
	name = "Enclave Soldier"
	desc = "Just a Enclave Soldier"
	icon_state = "enclave_soldier"
	icon_living = "enclave_soldier"
	icon_dead = "enclave_soldier"
	icon_gib = "enclave_soldier"
	maxHealth = 500
	health = 500
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/enclave/soldier, /obj/item/weapon/gun/energy/plasma/turbo)
	self_weight = 80
	healable = 1
	ranged = 1
	rapid = 1
	projectiletype = /obj/item/projectile/beam/plasma
	projectilesound = 'sound/f13weapons/plasmarifle.ogg'
	XP = 80

/obj/effect/mob_spawn/human/corpse/enclave/soldier
	name = "Enclave Soldier"
	uniform = /obj/item/clothing/under/f13/enclave_officer
	suit = /obj/item/clothing/suit/armor/f13/power_armor/advanced
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/f13/military
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/power_armor/advanced
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/bs
	name = "BS"
	desc = "Just an BS"
	icon_state = "bs_knight"
	icon_living = "bs_knight"
	icon_dead = "bs_knight"
	icon_gib = "bs_knight"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 250
	health = 250
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/bs)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("bs", "city")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Everyone knows how to make another human being, but not everyone knows how to make another plasma rifle", "Semper Invicta!", "Steel be with you!")
	speak_emote = "says,"
	speak_chance = 1
	XP = 30

/mob/living/simple_animal/hostile/bs/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "bs"
	..()

/obj/effect/mob_spawn/human/corpse/bs
	name = "BS Knight"
	uniform = /obj/item/clothing/under/f13/bdu
	suit = /obj/item/clothing/suit/armor/f13/brotherhood_armor
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/f13/military
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/brotherhood_helmet
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/bs/knight
	name = "BS Knight"
	desc = "Just a BS Knight"
	icon_state = "bs_knight"
	icon_living = "bs_knight"
	icon_dead = "bs_knight"
	icon_gib = "bs_knight"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/bs, /obj/item/weapon/gun/energy/laser/pistol)
	self_weight = 40
	healable = 1
	ranged = 1
	rapid = 0
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'
	XP = 30

/mob/living/simple_animal/hostile/bs/paladin
	name = "BS Paladin"
	desc = "Just a BS Paladin"
	icon_state = "bs_paladin"
	icon_living = "bs_paladin"
	icon_dead = "bs_paladin"
	icon_gib = "bs_paladin"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/bs/paladin, /obj/item/weapon/gun/energy/laser/rifle/aer13)
	self_weight = 40
	maxHealth = 600
	health = 600
	healable = 1
	ranged = 1
	rapid = 1
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'
	XP = 70

/obj/effect/mob_spawn/human/corpse/bs/paladin
	name = "BS Paladin"
	uniform = /obj/item/clothing/under/f13/bdu
	suit = /obj/item/clothing/suit/armor/f13/power_armor/t45d
	shoes = /obj/item/clothing/shoes/f13/military
	gloves = /obj/item/clothing/gloves/f13/military
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/power_armor/t45d
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/ncr
	name = "NCR"
	desc = "Just an NCR"
	icon_state = "ncr_trooper"
	icon_living = "ncr_trooper"
	icon_dead = "ncr_trooper"
	icon_gib = "ncr_trooper"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/ncr)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("ncr", "city", "none", "followers")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Patrolling the Mojave almost makes you wish for a nuclear winter.", "When I got this assignment I was hoping there would be more gambling.", "It's been a long tour, all I can think about now is going back home.", "You know, if you were serving, you'd probably be halfway to general by now.", "You oughtta think about enlisting. We need you here.")
	speak_emote = "says,"
	speak_chance = 1
	XP = 20

/mob/living/simple_animal/hostile/ncr/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "ncr"
			//H.faction -= "city"
			//H.faction -= "none"
			H.faction -= "followers"

	..()

/obj/effect/mob_spawn/human/corpse/ncr
	name = "NCR Trooper"
	uniform = /obj/item/clothing/under/f13/ncr
	suit = /obj/item/clothing/suit/armor/f13/ncr
	shoes = /obj/item/clothing/shoes/f13/military/ncr
	gloves = /obj/item/clothing/gloves/f13/ncr
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/ncr_helmet
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/ncr/trooper
	name = "NCR Trooper"
	desc = "Just a NCR Trooper"
	icon_state = "ncr_trooper"
	icon_living = "ncr_trooper"
	icon_dead = "ncr_trooper"
	icon_gib = "ncr_trooper"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/ncr, /obj/item/weapon/gun/ballistic/automatic/garand, /obj/item/ammo_box/magazine/F13/g308)
	self_weight = 35
	healable = 1
	ranged = 1
	rapid = 0
	projectiletype = /obj/item/projectile/bullet/F13/c308mmBullet
	projectilesound = 'sound/weapons/garandshot.ogg'
	casingtype = /obj/item/ammo_casing/F13/m308
	XP = 20

/mob/living/simple_animal/hostile/ncr/sergeant
	name = "NCR Sergeant"
	desc = "Just a NCR Sergeant"
	icon_state = "ncr_sergeant"
	icon_living = "ncr_sergeant"
	icon_dead = "ncr_sergeant"
	icon_gib = "ncr_sergeant"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/ncr/sergeant, /obj/item/weapon/gun/ballistic/automatic/assault_rifle, /obj/item/ammo_box/magazine/F13/m556)
	self_weight = 40
	maxHealth = 200
	health = 200
	healable = 1
	ranged = 1
	rapid = 1
	projectiletype = /obj/item/projectile/bullet/F13/c556Bullet
	projectilesound = 'sound/f13weapons/assaultrifle_fire.ogg'
	casingtype = /obj/item/ammo_casing/F13/a556
	XP = 30

/obj/effect/mob_spawn/human/corpse/ncr/sergeant
	name = "NCR Sergeant"
	uniform = /obj/item/clothing/under/f13/ncr
	suit = /obj/item/clothing/suit/armor/f13/sergeant
	shoes = /obj/item/clothing/shoes/f13/military/ncr
	gloves = /obj/item/clothing/gloves/f13/ncr
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/f13/sergeant
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/legion
	name = "Legion"
	desc = "Just a Legion"
	icon_state = "legion_prime"
	icon_living = "legion_prime"
	icon_dead = "legion_prime"
	icon_gib = "legion_prime"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/legion)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("legion", "none", "followers")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Ave, true to Caesar.", "True to Caesar.", "Ave, Amicus.", "The new slave girls are quite beautiful.", "Give me cause, Profligate.", "Degenerates like you belong on a cross.")
	speak_emote = "says,"
	speak_chance = 1
	XP = 20

/mob/living/simple_animal/hostile/legion/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "legion"
			//H.faction -= "city"
			//H.faction -= "none"
			//H.faction -= "followers"

	..()

/obj/effect/mob_spawn/human/corpse/legion
	name = "Legion Prime"
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/legrecruit
	shoes = /obj/item/clothing/shoes/f13/military/legionleather
	//gloves = /obj/item/clothing/gloves/f13/ncr
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/legrecruit
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/legion/prime
	name = "Legion Prime"
	desc = "Just a Legion Prime"
	icon_state = "legion_prime"
	icon_living = "legion_prime"
	icon_dead = "legion_prime"
	icon_gib = "legion_prime"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/legion, /obj/item/weapon/gun/ballistic/shotgun/rifle, /obj/item/stack/medical/healingpowder)
	self_weight = 30
	healable = 1
	ranged = 1
	rapid = 0
	projectiletype = /obj/item/projectile/bullet/F13/c308mmBullet
	projectilesound = 'sound/weapons/garandshot.ogg'
	casingtype = /obj/item/ammo_casing/F13/m308
	XP = 20

/mob/living/simple_animal/hostile/legion/decan
	name = "Legion Decan"
	desc = "Just a Legion Decan"
	icon_state = "legion_decan"
	icon_living = "legion_decan"
	icon_dead = "legion_decan"
	icon_gib = "legion_decan"
	retreat_distance = 5
	minimum_distance = 5
	loot = list(/obj/effect/mob_spawn/human/corpse/legion/decan, /obj/item/weapon/gun/ballistic/shotgun/rifle, /obj/item/stack/medical/healingpowder)
	self_weight = 35
	maxHealth = 225
	health = 225
	healable = 1
	ranged = 1
	rapid = 0
	projectiletype = /obj/item/projectile/bullet/F13/c308mmBullet
	projectilesound = 'sound/weapons/garandshot.ogg'
	casingtype = /obj/item/ammo_casing/F13/m308
	XP = 30

/obj/effect/mob_spawn/human/corpse/legion/decan
	name = "Legion Decan"
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/legrecruit
	shoes = /obj/item/clothing/shoes/f13/military/legionleather
	gloves = /obj/item/clothing/gloves/f13/doom
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/legdecan
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/raider
	name = "Raider"
	desc = "Just a Raider"
	icon_state = "firefighter_raider"
	icon_living = "firefighter_raider"
	icon_dead = "firefighter_raider"
	icon_gib = "firefighter_raider"
	speak_chance = 0
	turns_per_move = 5
	respawn_time_of_mob = 900000000
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	stat_attack = 1
	robust_searching = 1
	maxHealth = 150
	health = 150
	harm_intent_damage = 5
	melee_damage_lower = 10
	melee_damage_upper = 10
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	loot = list(/obj/effect/mob_spawn/human/corpse/raider)
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("raiders")
	check_friendly_fire = 1
	status_flags = CANPUSH
	del_on_death = 1
	speak = list("Got to lay off the jet", "Scared huh? You should be.", "The jet will make you jittery", "...I can do this all day", "I've done this 100 times... you think you'll be any different?")
	speak_emote = "says,"
	speak_chance = 1
	XP = 15

/mob/living/simple_animal/hostile/raider/death(gibbed)
	if(murder)
		if(istype(murder, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = murder
			//if(H.dna.species)
			//	if(H.dna.species.type == /datum/species/ghoul)
			H.faction -= "raider"
			H.faction -= "city"
			H.faction -= "none"
			H.faction -= "followers"

	..()

/obj/effect/mob_spawn/human/corpse/raider
	name = "Raider"
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/tribal
	shoes = /obj/item/clothing/shoes/f13/rag
	//gloves = /obj/item/clothing/gloves/f13/ncr
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/firefighter
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/raider/Aggro()
	..()
	summon_backup(15)
	say("RAIDERS, ATTACK!!")

/mob/living/simple_animal/hostile/raider/firefighter
	icon_state = "firefighter_raider"
	icon_living = "firefighter_raider"
	icon_dead = "firefighter_raider"
	icon_gib = "firefighter_raider"
	retreat_distance = 2
	minimum_distance = 2
	melee_damage_lower = 50
	melee_damage_upper = 50
	loot = list(/obj/effect/mob_spawn/human/corpse/raider, /obj/item/weapon/twohanded/fireaxe, /obj/item/weapon/reagent_containers/pill/patch/jet)
	self_weight = 25
	healable = 1
	ranged = 0

/mob/living/simple_animal/hostile/raider/tribal
	icon_state = "tribal_raider"
	icon_living = "tribal_raider"
	icon_dead = "tribal_raider"
	icon_gib = "tribal_raider"
	retreat_distance = 2
	minimum_distance = 2
	melee_damage_lower = 40
	melee_damage_upper = 40
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/tribal, /obj/item/weapon/twohanded/tribal_spear, /obj/item/weapon/reagent_containers/pill/patch/jet)
	self_weight = 22
	healable = 1
	ranged = 0

/obj/effect/mob_spawn/human/corpse/raider/tribal
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/supafly
	shoes = /obj/item/clothing/shoes/f13/rag
	//gloves = /obj/item/clothing/gloves/f13/doom
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/supaflyhelmet
	//back = /obj/item/weapon/storage/backpack
	has_id = 0


/mob/living/simple_animal/hostile/raider/baseball
	icon_state = "baseball_raider"
	icon_living = "baseball_raider"
	icon_dead = "baseball_raider"
	icon_gib = "baseball_raider"
	retreat_distance = 2
	minimum_distance = 2
	melee_damage_lower = 40
	melee_damage_upper = 40
	maxHealth = 200
	health = 200
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/baseball, /obj/item/weapon/melee/baseball_bat, /obj/item/weapon/reagent_containers/pill/patch/jet)
	self_weight = 30
	healable = 1
	ranged = 0

/obj/effect/mob_spawn/human/corpse/raider/baseball
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/yankee
	shoes = /obj/item/clothing/shoes/f13/rag
	//gloves = /obj/item/clothing/gloves/f13/doom
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/yankee
	//back = /obj/item/weapon/storage/backpack
	has_id = 0

/mob/living/simple_animal/hostile/raider/biker
	icon_state = "biker_raider"
	icon_living = "biker_raider"
	icon_dead = "biker_raider"
	icon_gib = "biker_raider"
	retreat_distance = 4
	minimum_distance = 4
	melee_damage_lower = 20
	melee_damage_upper = 20
	maxHealth = 200
	health = 200
	loot = list(/obj/effect/mob_spawn/human/corpse/raider/biker, /obj/item/weapon/gun/ballistic/revolver/magnum, /obj/item/weapon/reagent_containers/pill/patch/jet)
	self_weight = 30
	healable = 1
	ranged = 1
	projectiletype = /obj/item/projectile/bullet/F13/c44mmBullet
	projectilesound = 'sound/f13weapons/magnum_fire.ogg'
	casingtype = /obj/item/ammo_casing/F13/m44

/obj/effect/mob_spawn/human/corpse/raider/biker
	uniform = /obj/item/clothing/under/f13/rag
	suit = /obj/item/clothing/suit/armor/f13/slam
	shoes = /obj/item/clothing/shoes/f13/rag
	//gloves = /obj/item/clothing/gloves/f13/doom
	//radio = /obj/item/device/radio/headset
	//mask = /obj/item/clothing/mask/gas
	helmet = /obj/item/clothing/head/helmet/f13/motorcycle
	//back = /obj/item/weapon/storage/backpack
	has_id = 0