//#define FLAG_CAPTURE_SPEED 0.27
//#define FLAG_CAPTURE_SPEED 2
#define FLAG_CAPTURE_SPEED 0.4

var/datum/subsystem/flag/SSflag

/datum/subsystem/flag
	name = "Flags"
	flags = SS_NO_INIT
	display_order = 1
	wait = 5

	var/list/war_factions = list("bs", "enclave", "ncr", "legion", "raiders", "vault", "coc")
	var/list/processing = list()

/datum/subsystem/flag/New()
	NEW_SS_GLOBAL(SSflag)

/datum/subsystem/flag/fire(resumed = 0)
	for(var/obj/flagpole/flag in processing)
		if(world.time > flag.flag_nextFire)
			var/tickets_speed = 0
			var/faction = "none"
			for(var/mob/living/carbon/human/player in hrange(flag, 7))
				if((player.social_faction != flag.flag_faction) && (player.social_faction in war_factions))
					tickets_speed += 1
					faction = player.social_faction

					tickets_speed = min(tickets_speed, 3)

			// Loosing flag
			if(tickets_speed > 0)
				if(flag.flag_tickets == 100)
					flag.onLoosing()

				tickets_speed *= FLAG_CAPTURE_SPEED

				flag.flag_tickets -= tickets_speed
				flag.flag_tickets = max(flag.flag_tickets - tickets_speed, 0)

				if(flag.flag_tickets == 0)
					flag.flag_tickets = 25
					flag.onCaptured(faction)
			else
				flag.flag_tickets = min(flag.flag_tickets + FLAG_CAPTURE_SPEED, 100)

			flag.flag_nextFire = world.time + (flag.flag_tickets == 100 ? 100 : 10)

			flag.onUpdate()
