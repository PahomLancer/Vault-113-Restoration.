/datum/experience
	var/current = 0
	var/level = 1
	var/mob/living/carbon/owner

/datum/experience/New(iOwner)
	owner = iOwner

/datum/experience/proc/nextLevel()
	//return 50 + (150 * (level))
	return round((level ** 1.92) * 100) //round to pretty view

/datum/experience/proc/toNextLevel()
	return nextLevel() - current

/datum/experience/proc/levelCap()
	var/list/allPerks = typesof(/datum/perk)
	return (allPerks.len - 1)

/datum/experience/proc/add(XP)
	if(!XP)
		return

	XP *= 2

	XP *= 0.5 + (owner.special.getPoint("i") / 10)

	if(owner.perks)
		if(owner.perks.have(/datum/perk/daddyboy))
			XP *= 1.1

	current += XP

	to_chat(owner, "<font color='blue'>You earned [XP] XP! ([toNextLevel()] left)</font>")

	if(toNextLevel() > 0)
		playsound(owner, "sound/f13effects/xp_add.ogg", 50)
	else
		if(level < levelCap())
			promoteLevel()

/datum/experience/proc/promoteLevel()
	level += 1

	to_chat(owner, "<font color='blue'>You got level [level]!</font>")

	playsound(owner, "sound/f13effects/xp_newLevel.ogg", 50)

	if (owner.perks)
		if(owner.perks.count == 0)
			owner.verbs += /mob/living/proc/perksShow

		owner.perks.count += 1
		//owner.perks.uiChoose()