obj/flag
	icon = 'icons/fallout/advanced/flags.dmi'
	icon_state = "city"
	pixel_x = 10
	anchored = 1
	layer = 10

	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

obj/flagpole
	name = "Flagpole"
	icon = 'icons/fallout/advanced/flagpole_2.dmi'
	icon_state = "flag_stock"
	anchored = 1
	density = 1
	layer = 11

	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

	var/flag_location = "dummy"
	var/flag_faction = "none"
	var/flag_tickets = 100
	var/flag_nextFire = 0
	var/flag_perk = /datum/perk_hidden
	var/obj/flag

obj/flagpole/city
	flag_location = "City North"
	flag_perk = /datum/perk_hidden/conqueror1

obj/flagpole/city2
	flag_location = "City South"
	flag_perk = /datum/perk_hidden/conqueror2

obj/flagpole/city3
	flag_location = "City Center"
	flag_perk = /datum/perk_hidden/conqueror3

obj/flagpole/village
	flag_location = "Village"
	flag_perk = /datum/perk_hidden/conqueror4

obj/flagpole/bunker
	flag_location = "Bunker"
	flag_perk = /datum/perk_hidden/condition

obj/flagpole/New()
	..()
	flag = new /obj/flag(loc)
	SSflag.processing += src

obj/flagpole/proc/factionPerk(var/faction)
	var/datum/f13_faction/faction_datum = get_faction_datum(faction)
	var/faction_name = faction_datum.name

	faction_datum.perks.add(flag_perk)

	var/datum/perk_hidden/perk = new flag_perk()

	to_chat(world, "<font size='3' color='blue'>[faction_name] now [perk.desc]</font>")

	qdel(perk)

	if(flag_faction != "none")
		var/datum/f13_faction/faction_datum_prev = get_faction_datum(flag_faction)
		faction_datum_prev.perks.remove(flag_perk)

obj/flagpole/proc/onCaptured(var/faction)
	factionPerk(faction)

	flag_faction = faction
	flag.icon_state = faction

	var/datum/f13_faction/faction_datum = get_faction_datum(faction)
	var/faction_name = faction_datum.name
	to_chat(world, "<font size='4' color='red'>[flag_location] was captured by [faction_name]!</font>")

obj/flagpole/proc/onLoosing()
	to_chat(world, "<font size='3' color='blue'>Rumors reached that someone tries to capture [flag_location]</font>")

obj/flagpole/proc/onUpdate()
	flag.pixel_y = 10 + flag_tickets
