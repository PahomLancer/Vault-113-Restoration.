/mob/living/simple_animal/hostile/russian
	name = "Chinese"
	desc = "For the Imperior!"
	icon_state = "russianmelee"
	icon_living = "russianmelee"
	icon_dead = "russianmelee_d"
	icon_gib = "syndicate_gib"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 0
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = INTENT_HARM
	atmos_requirements = list("min_oxy" = 5, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 1, "min_co2" = 0, "max_co2" = 5, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("chinese")
	status_flags = CANPUSH
	del_on_death = 0
	loot = list(/obj/effect/mob_spawn/human/corpse/russian,
				/obj/item/weapon/gun/ballistic/automatic/assault_rifle/chinese)

/mob/living/simple_animal/hostile/russian/ranged
	icon_state = "russianranged"
	icon_living = "russianranged"
	icon_dead = "russianranged_d"
	ranged = 1
	retreat_distance = 5
	minimum_distance = 3
	projectilesound = 'sound/f13weapons/chinese.ogg'
	casingtype = /obj/item/ammo_casing/n762


/mob/living/simple_animal/hostile/russian/ranged/mosin
	loot = list(/obj/effect/mob_spawn/human/corpse/russian/ranged,
				/obj/item/weapon/gun/ballistic/automatic/assault_rifle/chinese)
	casingtype = /obj/item/ammo_casing/a762

/mob/living/simple_animal/hostile/russian/ranged/trooper
	icon_state = "russianrangedelite"
	icon_living = "russianrangedelite"
	maxHealth = 150
	health = 150
	casingtype = /obj/item/ammo_casing/shotgun/buckshot
	loot = list(/obj/effect/mob_spawn/human/corpse/russian/ranged/trooper,
				/obj/item/weapon/gun/ballistic/shotgun/lethal)

/mob/living/simple_animal/hostile/russian/ranged/officer
	name = "Russian Officer"
	icon_state = "russianofficer"
	icon_living = "russianofficer"
	maxHealth = 65
	health = 65
	rapid = 1
	casingtype = /obj/item/ammo_casing/c9mm
	loot = list(/obj/effect/mob_spawn/human/corpse/russian/ranged/officer,
				/obj/item/weapon/gun/ballistic/automatic/pistol/APS)

/mob/living/simple_animal/hostile/russian/ranged/officer/Aggro()
	..()
	summon_backup(15)
	say("V BOJ!!")
