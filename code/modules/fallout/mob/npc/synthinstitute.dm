/mob/living/simple_animal/hostile/synth
	name = "Synth"
	desc = "Synth strider. Looks like weird human but it's machine."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "synthmk1"
	icon_living = "synthmk1"
	icon_dead = "synthmk1_d"
	icon_gib = "synthmk1_d"
	speak_chance = 0
	turns_per_move = 7
	environment_smash = 0
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	move_to_delay = 3
	stat_attack = 1
	robust_searching = 1
	maxHealth = 150
	health = 150
	self_weight = 85
	healable = 0

	faction = list("hostile", "institute")

	sound_speak_chance = 5
	sound_speak = list('sound/f13npc/synthcharge1.ogg','sound/f13npc/synthcharge2.ogg','sound/f13npc/synthcharge3.ogg','sound/f13npc/synthcharge4.ogg')

	aggro_sound_chance = 50
	aggro_sound = list('sound/f13npc/synthalert.ogg','sound/f13npc/synthalert2.ogg','sound/f13npc/synthalert3.ogg','sound/f13npc/synthalert4.ogg','sound/f13npc/synthalert5.ogg')

	death_sound = list('sound/f13npc/synthdead.ogg','sound/f13npc/synthdead2.ogg','sound/f13npc/synthdead3.ogg')

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
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/f13weapons/laser_pistol.ogg'

	XP = 25

/mob/living/simple_animal/hostile/synth/mk2
	name = "Synth"
	icon_state = "synthmk2"
	icon_living = "synthmk2"
	icon_dead = "synthmk2_d"
	icon_gib = "synthmk2_d"
	projectiletype = /obj/item/projectile/beam
	projectilesound = 'sound/f13weapons/laser_rifle.ogg'
	XP = 30