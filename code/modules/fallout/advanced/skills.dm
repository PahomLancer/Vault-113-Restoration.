#define SKILLS_POINTS 39

/mob/living
	var/datum/skills/skillsTarget

/mob/living/proc/SKILLSshow()
	set name = "SKILLS"
	set category = "Advanced"

	if(!skillsTarget)
		skillsTarget = new /datum/skills()
		skillsTarget.owner = src

	skillsTarget.ui("list")

/datum/skills
	var
		small_guns = 3
		big_guns = 3
		barter = 3
		energy_weapons = 3
		explosives = 3
		lockpick = 3
		medicine = 3
		melee_weapons = 3
		repair = 3
		science = 3
		sneak = 3
		speech = 3
		unarmed = 3
	//(1-10)
	var/datum/browser/popup

	var/mob/living/carbon/human/owner

/datum/skills/New()
	popup = new(usr, "vending", "SKILLS")

/datum/skills/proc/reagent(type)
	if(!owner)
		return FALSE

	return owner.reagents.has_reagent(type)

/datum/skills/proc/getMeleeMod()
	return (getPoint("unarmed") * 1.5)
/*
/datum/special/proc/getWeight(var/mob/living/carbon/human/user)
	if(!user)
		return 0

	. = 0

	if(user.perks.have(/datum/perk/strongback))
		. += 20

	if(istype(user.wear_suit, /obj/item/clothing/suit/armor/f13/power_armor))
		. += 10 + getPoint("s") * 5 + 20

	. += 10 + getPoint("s") * 5

	return .

/datum/skills/proc/getPointBonus(type)
	. = 0
	switch(type)
		if("s")
			. = (reagent("jet") ? 10 : 0) + (reagent("psyho") ? 4 : 0)
		if("p")
			. = 0
		if("e")
			. = (reagent("psyho") ? 4 : 0)
		if("c")
			. = 0
		if("i")
			. = (reagent("mentats") ? 10 : 0)
		if("a")
			. = (reagent("turbo") ? 10 : 0)
		if("l")
			. = 0
*/
/datum/skills/proc/getPoint(type, base = FALSE)
	switch(type)
		if("small_guns")
			. = small_guns
		if("big_guns")
			. = big_guns
		if("barter")
			. = barter
		if("energy_weapons")
			. = energy_weapons
		if("explosives")
			. = explosives
		if("lockpick")
			. = lockpick
		if("medicine")
			. = medicine
		if("melee_weapons")
			. = melee_weapons
		if("repair")
			. = repair
		if("sneak")
			. = sneak
		if("speech")
			. = speech
		if("unarmed")
			. = unarmed
		if("science")
			. = science
		else
			. = 0

	/*if(!base)
		. += getPointBonus(type)*/

/datum/skills/proc/getSpentPoints()
	var/i = small_guns + big_guns + barter + energy_weapons
	i += explosives + lockpick + medicine + melee_weapons
	i += repair + sneak + speech + unarmed + science
	return i

/datum/skills/proc/setPoint(type, value)
	switch(type)
		if("small_guns")
			small_guns = value
		if("big_guns")
			big_guns = value
		if("barter")
			barter = value
		if("energy_weapons")
			energy_weapons = value
		if("explosives")
			explosives = value
		if("lockpick")
			lockpick = value
		if("medicine")
			medicine = value
		if("melee_weapons")
			melee_weapons = value
		if("repair")
			repair = value
		if("sneak")
			sneak = value
		if("speech")
			speech = value
		if("unarmed")
			unarmed = value
		if("science")
			science = value

/datum/skills/proc/getPointDescription(type)
	var/description

	switch(type)
		if("small_guns")
			description = "The use, care and general knowledge of small firearms - pistols, SMGs and rifles."
		if("big_guns")
			description = "The operation and maintenance of really big guns - miniguns, rocket launchers, flamethrowers and such.)"
		if("barter")
			description = "Trading and trade-related tasks. The ability to get better prices for items you sell, and lower prices for items you buy."
		if("energy_weapons")
			description = "The care and feeding of energy-based weapons. How to arm and operate weapons that use laser or plasma technology."
		if("explosives")
			description = "The finding and removal of traps. Also the setting of explosives for demolition purposes."
		if("lockpick")
			description = "The skill of opening locks without the proper key. The use of lockpicks or electronic lockpicks will greatly enhance this skill."
		if("medicine")
			description = "The higher a player's Medicine skill, the more hit points they will replenish when using a stimpak and the more effective they are at using any other medicinal item (such as Rad-X or RadAway)."
		if("melee_weapons")
			description = "Using non-ranged weapons in hand-to-hand or melee combat - knives, sledgehammers, spears, clubs and so on."
		if("repair")
			description = "The practical application of the Science skill, for fixing of broken equipment, machinery and electronics."
		if("sneak")
			description = "Quiet movement, and the ability to remain unnoticed. If successful, you will be much harder to locate. You cannot run and sneak at the same time."
		if("speech")
			description = "The ability to communicate in a practical and efficient manner. The skill of convincing others that your position is correct. The ability to lie and not get caught."
		if("unarmed")
			description = "A combination of martial arts, boxing and other hand-to-hand martial arts. Combat with your hands and feet."
		if("science")
			description = "Covers a variety of high-technology skills, such as computers, biology, physics, and geology."
	return description

/datum/skills/proc/ui(type)
	if(popup)
		popup.close()

	var/html

	switch(type)
		if("list")
			html += "<a href='byond://?src=\ref[src];skills=small_guns'>small guns</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=big_guns'>big guns</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=barter'>barter</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=energy_weapons'>energy weapons</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=explosives'>explosives</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=lockpick'>lockpick</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=medicine'>medicine</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=melee_weapons'>melee weapons</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=repair'>repair</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=sneak'>sneak</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=speech'>speech</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=unarmed'>unarmed</a> <br>"
			html += "<a href='byond://?src=\ref[src];skills=science'>science</a> <br>"
			html += "<br><a href='byond://?src=\ref[src];apply=1'>Apply</a> <br>"
		else
			//usr.browse_rsc_icon("icons/special/[type].png", "special_[type]")
			//usr.browse_rsc("icons/special/[type].png", "special_[type]")
			usr.browse_rsc_icon("icons/special/special.dmi", "skills_[type]")
			html += "<img src='skills_[type].png' class='center'> <br>"
			//html += "<img src='icons/special/[type].png' style='width: 32px; height: 32px;'> <br>"
			html += getPointDescription(type)
			var/current = getPoint(type, TRUE)
			var/left = max(0, SKILLS_POINTS - getSpentPoints())

			html += "<br>Сейчас/Current: [current] (осталось/left [left])<br>"

			if((current > 1))
				html += "<a href='byond://?src=\ref[src];dec=[type]'>Понизить/Reduce</a>"

			if((left > 0) & (current < 10))
				html += "<a href='byond://?src=\ref[src];inc=[type]'>Повысить/Increace</a>"

			html += "<br><a href='byond://?src=\ref[src];back=1'>Назад/Back</a> <br>"

	popup.set_content(html)
	popup.open()

/datum/skills/Topic(href, href_list)
	if(..())
		return

	if(href_list["apply"])
		var/mob/living/carbon/human/user = usr

		if(getSpentPoints() != SKILLS_POINTS)
			to_chat(usr, "<span class='warning'>You must spent all points!</span>")
			return

		user.skills = src

		popup.close()

		user.verbs -= /mob/living/proc/SKILLSshow
		//qdel(src)

	if(href_list["skills"])
		var/type = href_list["skills"]
		ui(type)

	if(href_list["back"])
		ui("list")

	if(href_list["inc"])
		var/type = href_list["inc"]
		var/newPoints = getPoint(type, TRUE) + 1
		if(newPoints <= 10)
			setPoint(type, newPoints)
		ui(type)

	if(href_list["dec"])
		var/type = href_list["dec"]
		var/newPoints = getPoint(type, TRUE) - 1
		if(newPoints > 0)
			setPoint(type, newPoints)
		ui(type)