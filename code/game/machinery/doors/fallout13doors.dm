// "Fuck them copypastes, someone pls, make a system for dooor so no one gets to copypaste shit!"
//  - unknown, author of this file
// "The system was always there, you just needed to use it ..."
//  - bauen1, the guy having to clean up the mess

/obj/machinery/dooor
	var/door_type = "wasteland"
	name = "wooden door"
	desc = "It opens and closes."
	icon = 'icons/obj/doors/wasteland_doors.dmi'
	opacity = 1
	density = 1
	anchored = 1
	layer = 4.2
	var/open_sound = 'sound/machines/door_open.ogg'
	var/close_sound = 'sound/machines/door_close.ogg'

/obj/machinery/dooor/New(location)
	..()
	icon_state = door_type
	return

/obj/machinery/dooor/proc/Open()
	  icon_state = "[door_type]open"
	  playsound(src.loc, open_sound, 30, 0, 0)
	  opacity = 0
	  density = 0

/obj/machinery/dooor/proc/Close()
  icon_state = door_type
  playsound(src.loc, close_sound, 30, 0, 0)
  opacity = 1
  density = 1

/obj/machinery/dooor/proc/SwitchState()
  if(density)
    Open()
  else
    Close()
  return

/obj/machinery/dooor/attackby(obj/item/weapon/I, mob/living/user, params)
	SwitchState()

/obj/machinery/dooor/attack_hand(mob/user)
	SwitchState()

/obj/machinery/dooor/attack_tk(mob/user)
	SwitchState()

/obj/machinery/dooor/CanPass(atom/movable/mover, turf/target, height=0)
	if(mover.loc == loc)
		return 1
	return !density

/obj/machinery/dooor/CheckExit(atom/movable/O as mob|obj, target)
	if(O.loc == loc)
		return 1
	return !density

// Doors

/obj/machinery/dooor/wood
	door_type = "wood" // icon_state = "wasteland"

/obj/machinery/dooor/house
	door_type = "house"

/obj/machinery/dooor/room
	door_type = "room"

/obj/machinery/dooor/dirtyglass
	door_type = "dirtyglass"

/obj/machinery/dooor/fakeglass
	door_type = "fakeglass"
	name = "damaged wooden door"
	desc = "It still somehow opens and closes."

/obj/machinery/dooor/brokenglass
	door_type = "brokenglass"
	name = "shattered door"
	desc = "It still opens and closes."

/obj/machinery/dooor/glass
	door_type = "glass"

/obj/machinery/dooor/dirtystore
	door_type = "dirtystore"
	name = "metal door"
	desc = "It's a metal door with dirty glass."
	open_sound = "sound/f13machines/doorstore_open.ogg"
	close_sound = "sound/f13machines/doorstore_close.ogg"

/obj/machinery/dooor/store
	door_type = "store"
	name = "metal door"
	open_sound = "sound/f13machines/doorstore_open.ogg"
	close_sound = "sound/f13machines/doorstore_close.ogg"
