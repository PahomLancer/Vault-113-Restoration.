/obj/vertibird_exit_door
	name = "Exit Hatch"
	icon = 'icons/obj/doors/airlocks/survival/horizontal/survival.dmi'
	icon_state = "closed"
	anchored = 1
	density = 1

/obj/vertibird_exit_door/proc/eject(obj/I)
	if(!vertibird)
		return

	if(istype(I, /obj/vertibird_exit_door))
		to_chat(usr, "Nice try!")
		return

	if(vertibird:locked)
		to_chat(usr, "It's locked!")
		return

	if(vertibird:inFly)
		to_chat(usr, "WE ARE IN THE AIR PRIVATE!")
		return

	I.forceMove(vertibird:ejectTurf())

/obj/vertibird_exit_door/attack_hand(mob/user)
	eject(user)

/obj/vertibird_exit_door/MouseDrop_T(obj/O, mob/user)
	eject(O)