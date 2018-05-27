/mob/living/simple_animal/hostile/eyebot/virtual
	var/mob/living/carbon/human/pilot

/mob/living/simple_animal/hostile/eyebot/virtual/New()
	..()
	eyebots += src
	src.verbs += /mob/living/simple_animal/hostile/eyebot/virtual/proc/leave

/mob/living/simple_animal/hostile/eyebot/virtual/Del()
	..()
	eyebots -= src

/mob/living/simple_animal/hostile/eyebot/virtual/proc/enter(var/mob/user)
	if(ckey)
		to_chat(user, "Eyebot already under control!")
		return

	pilot = user
	ckey = user.ckey

/mob/living/simple_animal/hostile/eyebot/virtual/proc/leave()
	set name = "Stop Control"
	set category = "EYEBOT"

	pilot.ckey = ckey

/mob/living/simple_animal/hostile/eyebot/virtual/death(gibbed)
	if(ckey)
		leave()

	eyebots -= src

	..(gibbed)