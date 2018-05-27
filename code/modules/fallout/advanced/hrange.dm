/proc/hrange(var/atom/A, range)
	. = list()
	for(var/mob/living/carbon/human/player in human_list)
		if(player.z == A.z)
			if(get_dist(player, A) < range)
				if(player.stat != DEAD)
					. += player