/client/verb/who()
	set name = "Who"
	set category = "OOC"

	var/msg = "<b>Current Players:</b>\n"

	var/list/Lines = list()

	var/list/fakeCKeys = list ("BJAG9", "Blessedtuna", "BurningFreeze", "Carl248", "Chaoshazard", "Crownguard2", "Deelite", "DuduKronbauer", "Elthron", "Farie82", "Fczna", "FleshyHuman", "Gangelwaefre", "Gjuro_Andrija", "Grayborders", "GunDOSmk1", "JohnWaffles", "Kenumdrum", "Kimo456", "Licon", "Linknich123", "Lolzalolka", "Lorenzz", "Lt. Diggs", "LunaFire7", "Mewzia", "MINIMAN10000", "Normalyman", "Ocean Water", "Oceanofpeace", "Ozan59593", "Rb303", "Regens", "Rhythen", "RNGPriest", "Robbie_Rotten", "Runko", "Shekel Stealer", "SilvernKell", "SirGurgle", "Slduggy", "Sollessa", "SpessX", "Ssirius", "Streather", "Taaketa", "ThangCZ", "Thekirkland", "Thethingthing3846", "Trogdr", "Vesyan", "Vinregret", "VoxSkynned", "Whatwill", "Yurivw", "Zciwomad")

	for(var/client/C in clients)
		if(C.fake)
			fakeCKeys -= C.fake

	for(var/client/C in clients)
		clients<<C

		if(!C.fake)
			if(findtext(C.key, "guest"))
				C.fake = pick(fakeCKeys)
				fakeCKeys -= C.fake

	for(var/client/C in clients)
		if(C.holder && C.holder.fakekey)
			Lines += "[C.holder.fakekey]"
		else
			if(C.fake)
				Lines += "[C.fake]"
			else
				Lines += "[C.key]"

	for(var/line in sortList(Lines))
		msg += "[line]\n"

	msg += "<b>Total Players: [length(Lines)]</b>"
	to_chat(src, msg)