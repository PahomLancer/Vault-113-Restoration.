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
	speed = 0
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
	speak_emote = list("I want to eat!", "What about nuka cola?")
	emote_hear = list("I want to eat!", "What about nuka cola?")
	emote_see = list("farts", "shivers")
	speak_chance = 1
	XP = 10

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
	speed = 0
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
	speak_emote = list("Moron!", "Idiot!")
	emote_hear = list("Moron!", "Idiot!")
	emote_see = list("farts", "shivers")
	speak_chance = 1
	XP = 15

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
	speed = 0
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
	speak = list("Yep!", "Where is your powerarmor!", "Moron!", "Idiot!")
	speak_emote = list("Moron!", "Idiot!")
	emote_hear = list("Moron!", "Idiot!")
	emote_see = list("farts", "shivers")
	speak_chance = 1
	XP = 30

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