//Fallout 13 protectron directory

/mob/living/simple_animal/hostile/sentrybot
	name = "sentrybot"
	desc = "A pre-War type of sentrybot.<br>Extremely dangerous machine."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "sentrybot"
	icon_living = "sentrybot"
	icon_dead = "sentrybot_d"
	icon_gib = "sentrybot_d"
	speak_chance = 0
	turns_per_move = 8
	environment_smash = 0
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	move_to_delay = 3
	stat_attack = 1
	robust_searching = 1
	maxHealth = 350
	health = 350
	self_weight = 400
	healable = 0

	faction = list("hostile", "robot")

	sound_speak_chance = 5
	sound_speak = list('sound/f13npc/robot_charge1.ogg','sound/f13npc/robot_charge2.ogg','sound/f13npc/robot_charge3.ogg')

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/robot_alert.ogg'

	death_sound = 'sound/f13npc/robot_death.ogg'

	harm_intent_damage = 15
	melee_damage_lower = 15
	melee_damage_upper = 25
	minimum_distance = 2
	retreat_distance = 4
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
	rapid = 1
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/weapons/resonator_fire.ogg'

	XP = 30