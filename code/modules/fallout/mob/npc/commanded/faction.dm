/mob/living/simple_animal/hostile/commanded/dog/faction/var/status_master

/mob/living/simple_animal/hostile/commanded/dog/faction/is_master(var/mob/speaker)
	if(ishuman(speaker))
		var/mob/living/carbon/human/H = speaker
		if(H.status == status_master)
			return TRUE
	return FALSE

/mob/living/simple_animal/hostile/commanded/dog/faction/brutus
	name = "brutus"
	faction = list("legion")
	faction_enemy = list("hostile", "enclave", "bs", "ncr", "raiders")
	status_master = "legate"

/mob/living/simple_animal/hostile/commanded/dog/faction/stalin
	name = "stalin"
	faction = list("bs")
	faction_enemy = list("hostile", "enclave", "legion", "ncr", "raiders")
	status_master = "elder"