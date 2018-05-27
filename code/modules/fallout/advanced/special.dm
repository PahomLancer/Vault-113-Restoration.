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
		. += 50

	. += 10 + getPoint("s") * 5

	return .

/datum/special/proc/getPointBonus(type)
	. = 0
	switch(type)
		if("s")
			. = (reagent("jet") ? 5 : 0) + (reagent("psyho") ? 2 : 0)
		if("p")
			. = 0
		if("e")
			. = (reagent("psyho") ? 2 : 0)
		if("c")
			. = 0
		if("i")
			. = (reagent("mentats") ? 5 : 0)
		if("a")
			. = (reagent("turbo") ? 5 : 0)
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
			description = "Грубая физическая сила. Оказывает влияние на грузоподъёмность и урон оружия ближнего боя."
		if("p")
			description = "Применения пока что нет :("
		if("e")
			description = "Выдержка и физическая стойкость. Влияет на количество здоровья."
		if("c")
			description = "Определяет цены при торговле."
		if("i")
			description = "Влияет на длительность использования медикаментов и химикатов, количество получаемого опыта."
		if("a")
			description = "Влияет на скорость стрельбы оружия."
		if("l")
			description = "Влияет на шанс попадания по Вам, качество вещей в мобах."

	return description

/datum/special/proc/ui(type)
	if(popup)
		popup.close()

	var/html

	switch(type)
		if("list")
			html += "<a href='byond://?src=\ref[src];special=s'>Сила</a> <br>"
			//html += "<a href='byond://?src=\ref[src];special=p'>Восприятие</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=e'>Выносливость</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=c'>Харизма</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=i'>Интеллект</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=a'>Ловкость</a> <br>"
			html += "<a href='byond://?src=\ref[src];special=l'>Удача</a> <br>"
			html += "<br><a href='byond://?src=\ref[src];apply=1'>Принять</a> <br>"
		else
			//usr.browse_rsc_icon("icons/special/[type].png", "special_[type]")
			//usr.browse_rsc("icons/special/[type].png", "special_[type]")
			usr.browse_rsc_icon("icons/special/special.dmi", "special_[type]")
			html += "<img src='special_[type].png' class='center'> <br>"
			//html += "<img src='icons/special/[type].png' style='width: 32px; height: 32px;'> <br>"
			html += getPointDescription(type)
			var/current = getPoint(type, TRUE)
			var/left = max(0, SPECIAL_POINTS - getSpentPoints())

			html += "<br>Сейчас: [current] (осталось [left])<br>"

			if((current > 1))
				html += "<a href='byond://?src=\ref[src];dec=[type]'>Понизить</a>"

			if((left > 0) & (current < 10))
				html += "<a href='byond://?src=\ref[src];inc=[type]'>Повысить</a>"

			html += "<br><a href='byond://?src=\ref[src];back=1'>Назад</a> <br>"

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