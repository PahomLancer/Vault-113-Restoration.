#define SPECIAL_POINTS 28

// WEIGHT = contents_weight/(RATIO_WEIGHT + (special.getPoint("s") * 15))
// DAMAGE = 1 - (special.getPoint("e") * 0.025)
// PRICE  = Itm.price * (0.50 + (usr.special.getPoint("c") * 0.03) )
// DELAY = fire_delay / (usr.special.getPoint("a") * 0.2)
// MISS = missProb = 2 * special.getPoint("l")
// METABO = 1.3 - (0,068 * H.special.getPoint("i"))

/mob/living
	var/datum/special/specialTarget

/mob/living/proc/SPECIALshow()
	set name = "S.P.E.C.I.A.L."
	set category = "Advanced"

	if(!specialTarget)
		specialTarget = new /datum/special()
		specialTarget.owner = src

	specialTarget.ui("list")

/datum/special
	var/strength = 4
	var/perception = 4
	var/endurance = 4
	var/charisma = 4
	var/intelligence = 4
	var/agility = 4
	var/luck = 4
	var/datum/browser/popup

	var/mob/living/carbon/human/owner

/datum/special/New()
	popup = new(usr, "vending", "S.P.E.C.I.A.L.")

/datum/special/proc/reagent(type)
	if(!owner)
		return FALSE

	return owner.reagents.has_reagent(type)

/datum/special/proc/getMeleeMod()
	return (0.7 + (getPoint("s") * 0.10))

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

/datum/special/proc/getPointBonus(type)
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

/datum/special/proc/getPoint(type, base = FALSE)
	switch(type)
		if("s")
			. = strength
		if("p")
			. = perception
		if("e")
			. = endurance
		if("c")
			. = charisma
		if("i")
			. = intelligence
		if("a")
			. = agility
		if("l")
			. = luck
		else
			. = 0

	if(!base)
		. += getPointBonus(type)

/datum/special/proc/getSpentPoints()
	var/i = strength + perception + endurance + charisma
	i += intelligence + agility + luck
	return i

/datum/special/proc/setPoint(type, value)
	switch(type)
		if("s")
			strength = value
		if("p")
			perception = value
		if("e")
			endurance = value
		if("c")
			charisma = value
		if("i")
			intelligence = value
		if("a")
			agility = value
		if("l")
			luck = value

/datum/special/proc/getPointDescription(type)
	var/description

	switch(type)
		if("s")
			description = "������ ���������� ����. ��������� ������� �� ���������������� � ���� ������ �������� ���, ��� �� ������������� ������ �� ������� ������. Raw physical strength. A high Strength is good for physical characters (Modifies: Melee Damage, and Carry Weight, also slightly improve big guns skills)."
		if("p")
			description = "����������� ������, �������, ���������� � �������� ��������� ����. ������� ���������� ���������� ����� ��� ���������. ������ �� ���� ��������� � ��� � �����, ��� �� ������������� ������ �� �������������� ������. The ability to see, hear, taste and notice unusual things. A high Perception is important for a sharpshooter. (Modifies: Ranged combat, looting from mobs, also slightly improve energy guns skills.)"
		if("e")
			description = "�������� � ���������� ���������. ������ �� ���������� ��������. Stamina and physical toughness. A character with a high Endurance will survive where others may not. (Modifies: Hit Points)"
		if("c")
			description = "���������� ���� ��� ��������. A combination of appearance and charm. A high Charisma is important for characters that want to influence people with words. (Modifies: Trading skills with autotraders)"
		if("i")
			description = "������ �� ������������ ������������� ������������ � ���������, ���������� ����������� �����. Knowledge, wisdom and the ability to think quickly. A high Intelligence is important for any character. (Modifies: The number of exp getting from all actions, medical skills)"
		if("a")
			description = "������ �� �������� �������� ������, ���������, ��� �� ������������� ������ �� ������ ������. Coordination and the ability to move well. A high Agility is important for any active character. (Modifies: Rate of fire of ranged weapons, evasion, also slightly improve small guns skills)"
		if("l")
			description = "������ �� ���� ��������� �� ���, �������� ����� � �����. Fate. Karma. An extremely high or low Luck will affect the character - somehow. Events and situations will be changed by how lucky (or unlucky) your character is. (Modifies: Evasion, looting from mobs.)"

	return description

/datum/special/proc/ui(type)
	if(popup)
		popup.close()

	var/html

	switch(type)
		if("list")
			html += "<a href='byond://?src=\ref[src];special=s'>����/Strength</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=p'>����������/Perception</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=e'>������������/Endurance</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=c'>�������/Charisma</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=i'>���������/Intelligence</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=a'>��������/Agility</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=l'>�����/Luck</a> <br>"
			html += "<br><a href='byond://?src=\ref[src];apply=1'>�������/Apply</a> <br>"
		else
			//usr.browse_rsc_icon("icons/special/[type].png", "special_[type]")
			//usr.browse_rsc("icons/special/[type].png", "special_[type]")
			usr.browse_rsc_icon("icons/special/special.dmi", "special_[type]")
			html += "<img src='special_[type].png' class='center'> <br>"
			//html += "<img src='icons/special/[type].png' style='width: 32px; height: 32px;'> <br>"
			html += getPointDescription(type)
			var/current = getPoint(type, TRUE)
			var/left = max(0, SPECIAL_POINTS - getSpentPoints())

			html += "<br>������/Current: [current] (��������/left [left])<br>"

			if((current > 1))
				html += "<a href='byond://?src=\ref[src];dec=[type]'>��������/Reduce</a>"

			if((left > 0) & (current < 10))
				html += "<a href='byond://?src=\ref[src];inc=[type]'>��������/Increace</a>"

			html += "<br><a href='byond://?src=\ref[src];back=1'>�����/Back</a> <br>"

	popup.set_content(html)
	popup.open()

/datum/special/Topic(href, href_list)
	if(..())
		return

	if(href_list["apply"])
		var/mob/living/carbon/human/user = usr

		if(getSpentPoints() != SPECIAL_POINTS)
			to_chat(usr, "<span class='warning'>You must spent all points!</span>")
			return

		user.special = src

		popup.close()

		user.verbs -= /mob/living/proc/SPECIALshow
		//qdel(src)

	if(href_list["special"])
		var/type = href_list["special"]
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