var/datum/subsystem/bullet_echo/SSbulletecho

/datum/subsystem/bullet_echo
	name = "Bullets echo"
	display_order = 1
	wait = 2

	var/list/processing = list()

/datum/subsystem/bullet_echo/New()
	NEW_SS_GLOBAL(SSbulletecho)

/datum/subsystem/bullet_echo/fire(resumed = 0)
	for(var/turf/T in processing)
		processing -= T

		for(var/mob/living/carbon/human/H in hrange(T, 64))
			var/distance = get_dist(H, T)

			if(distance > 7)
				if(distance < 64)
					var/sound_speed = 34 // 34 titles per second :D
					var/volume = 50 - (distance * 0.781) // 64 titles = 0%, 7 = 50%
					spawn(distance / sound_speed * 10)
						H.playsound_local(T, "sound/f13ambience/battle_[round(rand(1,3))].ogg", volume, 0, 0)