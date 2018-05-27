/mob/living/proc/perksShow()
	set name = "Choose perk"
	set category = "Advanced"

	perks.uiChoose()

/datum/perkController
	var/list/perks = list ()
	var/mob/living/carbon/owner
	var/list/perkPool = list()
	var/datum/browser/popup
	var/count = 0

/datum/perkController/New(iOwner)
	owner = iOwner

	popup = new(owner, "vending", "Choose perk", 770, 450)

/datum/perkController/proc/add(Perk)
	perks += new Perk()

/datum/perkController/proc/remove(Perk)
	for(var/I = 1 to perks.len)
		var/datum/perk/current = perks[I]
		if(current.type == Perk)
			perks -= current

/datum/perkController/proc/have(Perk)
	for(var/datum/currentPerk in perks)
		if(currentPerk.type == Perk)
			return TRUE

	if((!istype(owner, /datum/f13_faction)) && (owner.social_faction in SSflag.war_factions))
		var/datum/f13_faction/faction_datum = get_faction_datum(owner.social_faction)
		return faction_datum.perks.have(Perk)

	return FALSE

/datum/perkController/proc/fillPerkPool()
	var/perk
	var/count = 0
	var/iteration = 33

	var/list/allPerks = typesof(/datum/perk/)
	allPerks -= /datum/perk/

	while((count < 2) && (iteration > 0))
		perk = pick(allPerks)
		if((!(perk in perkPool)) && (!(have(perk))))
			count += 1
			perkPool += perk
		iteration -= 1

/datum/perkController/proc/uiChoose()
	if(count == 0)
		to_chat(usr, "You need more experience to do this!")
		return

	if(perkPool.len == 0)
		fillPerkPool()

	popup.set_content(getHTML())
	popup.open()

/datum/perkController/proc/choosePerk(Index)
	if(perkPool[Index])
		add(perkPool[Index])

	/*
	for(var/I = 1 to perkPool.len)
		qdel(perkPool[I])
	*/

	perkPool.Cut(1)
	count -= 1
	if(count == 0)
		owner.verbs -= /mob/living/proc/perksShow

	popup.close()
	return

/datum/perkController/proc/getHTML()
	var/html

	if(perkPool.len != 2)
		return "No more perks for you!<br>Well done!"

	var/firstPerkTypeString = "[perkPool[1]]"
	var/secondPerkTypeString = "[perkPool[2]]"

	var/datum/perk/first = new firstPerkTypeString()
	var/datum/perk/second = new secondPerkTypeString()

	owner.browse_rsc_icon("icons/perks.dmi", "[first.icon_state]")
	owner.browse_rsc_icon("icons/perks.dmi", "[second.icon_state]")

	html += {"
	<style>table tr { text-align: center }</style>

	<table width="100%">
		<tr><td>[first.name]</td><td>[second.name]</td></tr>
		<tr><td><img src='[first.icon_state].png' class='center'></td><td><img src='[second.icon_state].png' class='center'></td></tr>
		<tr><td>[first.description]</td><td>[second.description]</td></tr>
		<tr>
			<td><a href='?src=\ref[src];perk=1'>Выбрать</a></td>
			<td><a href='?src=\ref[src];perk=2'>Выбрать</a></td>
		</tr>
	</table'>"}

	qdel(first)
	qdel(second)

	return html

/datum/perkController/Topic(href, href_list)
	if(..())
		return

	if(href_list["perk"])
		var/Index = text2num(href_list["perk"])
		choosePerk(Index)
