//Fallout 13 Centaur directory

/mob/living/simple_animal/hostile/centaur
	name = "centaur"
	desc = "Centaurs are mutated creatures. They are a result of infection by the Forced Evolutionary Virus gone horribly wrong."
	icon = 'icons/fallout/mobs/animal.dmi'
	icon_state = "centaur"
	icon_living = "centaur"
	icon_gib = "centaur_g"
	speak_chance = 0
	speak_emote = list("gnashes")
	environment_smash = 1
	turns_per_move = 15
	butcher_results = list()
	response_help = "pokes"
	response_disarm = "punches"
	response_harm = "hits"
	emote_taunt = list("gnashes")
	taunt_chance = 30
	move_to_delay = 2
	maxHealth = 120
	health = 120
	aggro_vision_range = 10
	idle_vision_range = 5
	self_weight = 60

	faction = list("hostile", "supermuatant", "coc")

	sound_speak = list('sound/f13npc/Npc_centaur_chasevox_02.ogg','sound/f13npc/Npc_centaur_conscious_lp.ogg','sound/f13npc/Npc_centaur_idle_scan.ogg','sound/f13npc/Npc_centaur_walkbreath_01.ogg')
	sound_speak_chance = 5

	aggro_sound_chance = 50
	aggro_sound = 'sound/f13npc/Npc_centaur_attack_01.ogg'

	death_sound = 'sound/f13npc/Npc_centaur_death_01.ogg'

	damage_coeff = list(BRUTE = 0.6, BURN = 1, TOX = 0.2, CLONE = 0, STAMINA = 1, OXY = 0)
	harm_intent_damage = 20
	melee_damage_lower = 20
	melee_damage_upper = 30
	attacktext = "stings"
	attack_sound = 'sound/f13npc/Npc_centaur_attackspit_03.ogg'

	XP = 15

/mob/living/simple_animal/hostile/centaur/New()
	icon_state = pick("centaur", "centaur2")
	icon_living = pick("centaur", "centaur2")

/mob/living/simple_animal/hostile/centaur/death(gibbed)
	icon_dead = pick("centaur_d", "centaur_d2")
	..()