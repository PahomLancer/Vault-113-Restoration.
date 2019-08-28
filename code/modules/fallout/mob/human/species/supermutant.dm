/datum/species/supermutant
	name = "supermutant"
	id = "supermutant"
	say_mod = "shouts"
	//default_color = "D5FF00"
	limbs_id = "supermutant"
	roundstart = 0
	brutemod = 0.35
	burnmod = 0.5
	speedmod = 1.25
	armor = 25
	punchdamagelow = 5
	punchdamagehigh = 15
	punchstunthreshold = 10
	use_skintones = 0
	nojumpsuit = 1
	sexes = 0
	var/specflags = list(EYECOLOR)
	mutant_bodyparts = list()
	//default_features = list("mcolor" = "FFF")
	no_equip = list(slot_wear_mask, slot_wear_suit, slot_gloves, slot_shoes, slot_w_uniform, slot_glasses, slot_ears, slot_head)
	specflags = list(RADIMMUNE, PIERCEIMMUNE, VIRUSIMMUNE, RADREGEN)
	var/canshout = 0

//Supermutants have strong limbs.
/datum/species/supermutant/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	for(var/obj/item/bodypart/b in C.bodyparts)
		b.max_damage += 10
	C.faction |= "supermutant"
	C.perks.add(/datum/perk/radresist_mutants)

/datum/species/supermutant/qualifies_for_faction(faction_id)
	if(faction_id == "legion" || faction_id == "city" || faction_id == "raider" || faction_id == "vault" || faction_id == "brotherhood" || faction_id == "enclave" || faction_id == "ncr" || faction_id == "followers" || faction_id == "bs")
		return 0
	return 1
/*
/datum/species/supermutant/handle_body(mob/living/carbon/human/H)
	H.remove_overlay(BODY_LAYER)

	var/list/standing	= list()

	handle_mutant_bodyparts(H)

	// eyes
	if(EYECOLOR in specflags)
		var/image/img_eyes_s = image("icon" = 'icons/mob/human_face.dmi', "icon_state" = "[eyes]_s", "layer" = -BODY_LAYER)
		img_eyes_s.color = "#" + H.eye_color
		standing	+= img_eyes_s

	if(standing.len)
		H.overlays_standing[BODY_LAYER] = standing

	H.apply_overlay(BODY_LAYER)
	return
*/
/datum/perk/radresist_mutants
	name = "Рад-сопротивление/Rad Resistance мутантов"
	description = "Рад-сопротивление позволяет вам — вот неожиданность — сопротивляться радиации. Эта способность добавляет 2500 % к сопротивляемости радиации. You are better able to avoid radiation, and the bad effects radiation causes. This Perk will improve your Radiation Resistance by 2500%."
	icon_state = "perk_radresist"


/datum/species/supermutant/spec_life(mob/living/carbon/human/H)
	//H.verbs += /mob/living/carbon/human/proc/hulk_jump
	//H.verbs += /mob/living/carbon/human/proc/hulk_dash
	//H.verbs += /mob/living/carbon/human/proc/hulk_smash
	if (canshout==0)
		H.say(pick(";RAAAAAAAARGH!", ";HNNNNNNNNNGGGGGGH!", ";GWAAAAAAAARRRHHH!", "NNNNNNNNGGGGGGGGHH!", ";AAAAAAARRRGH!" ))
		canshout = rand(50, 100)
	else
		canshout = canshout - 1
