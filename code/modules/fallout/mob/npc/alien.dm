/mob/living/simple_animal/hostile/alien_fallout
	name = "alien"
	desc = "An Alien."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "grey_gun"
	icon_living = "grey_gun"
	icon_dead = "grey_dead"
	icon_gib = "grey_dead"
	speak_chance = 0
	turns_per_move = 8
	environment_smash = 0
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	move_to_delay = 5
	stat_attack = 1
	robust_searching = 1
	maxHealth = 250
	health = 250
	self_weight = 30
	healable = 0

	faction = list("hostile", "alien")

	harm_intent_damage = 5
	melee_damage_lower = 5
	melee_damage_upper = 10
	minimum_distance = 4
	retreat_distance = 7
	attacktext = "punches"
	attack_sound = "punch"
	a_intent = "harm"
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	status_flags = CANPUSH
	vision_range = 12
	aggro_vision_range = 15
	idle_vision_range = 7
	ranged = 1
	projectiletype = /obj/item/projectile/energy/alien
	projectilesound = 'sound/weapons/AlienBlaster_SingleShot_1 (1).ogg'

	XP = 140