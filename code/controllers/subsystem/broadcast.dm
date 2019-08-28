/datum/subsystem/broadcast
	name = "Broadcast"
	display_order = 1
	wait = 9

/datum/subsystem/broadcast/proc/getSeconds()
	return text2num(time2text(world.timeofday,"ss"))

/datum/subsystem/broadcast/proc/getMinutes()
	return text2num(time2text(world.timeofday,"mm"))

/datum/subsystem/broadcast/proc/getHours()
	return text2num(time2text(world.timeofday,"hh"))

/datum/subsystem/broadcast/proc/textGlobal(text)
	to_chat(world, "<span class='cultlarge'>[text]</span>")

/datum/subsystem/broadcast/fire(resumed = 0)
	if(getSeconds() == 0)
		switch(getMinutes())
			if(0)
				textGlobal("Заходите в наш дискорд! https://discord.gg/tfRyu2B")