//Fallout 13 decorative billboards directory

/obj/structure/flag
	name = "flag"
	desc = "Shitspawn detected!<br>Please report the admin abuse immediately!<br>Just kidding, nevermind."
	icon_state = "null"
	density = 1
	anchored = 1
	layer = 5
	icon = 'icons/fallout/machines/64x64.dmi'
	resistance_flags = INDESTRUCTIBLE

/obj/structure/flag/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/flag/empty_flag
	name = "Empty flag"
	desc = "Just empty flag."
	icon_state = "emptyflag"

/obj/structure/flag/empty_flag/New()
	..()
	icon_state = pick("emptyflag")

/obj/structure/flag/ncr_flag
	name = "NCR flag"
	desc = "Just NCR flag."
	icon_state = "ncrflag"

/obj/structure/flag/ncr_flag/New()
	..()
	icon_state = pick("ncrflag")

/obj/structure/flag/legion_flag
	name = "Legion flag"
	desc = "Just Legion flag."
	icon_state = "legionflag"

/obj/structure/flag/legion_flag/New()
	..()
	icon_state = pick("legionflag")

/obj/structure/flag/tribal_totem
	name = "Tribal totem"
	desc = "Just Tribal totem."
	icon_state = "totem"

/obj/structure/flag/tribal_totem/New()
	..()
	icon_state = pick("totem")

/obj/structure/flag/bulletin_board
	name = "Bulletin board"
	desc = "Just Bulletin board."
	icon_state = "bulletin_board"

/obj/structure/flag/bulletin_board/New()
	..()
	icon_state = pick("bulletin_board")