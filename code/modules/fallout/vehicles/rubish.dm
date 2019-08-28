//Fallout 13 rubish decoration

/obj/structure/car_rubish1
	name = "pre-War rubish"
	desc = "A rusty pre-War automobile carcass.<br>This car is damaged beyond repair."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "car_rubish1"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/car_rubish1/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/car_rubish2
	name = "pre-War rubish"
	desc = "A rusty pre-War automobile carcass.<br>This car is damaged beyond repair."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "car_rubish2"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/car_rubish2/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/car_rubish3
	name = "pre-War rubish"
	desc = "A rusty pre-War automobile carcass.<br>This car is damaged beyond repair."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "car_rubish3"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/car_rubish3/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/car_rubish4
	name = "pre-War rubish"
	desc = "A rusty pre-War automobile carcass.<br>This car is damaged beyond repair."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "car_rubish4"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/car_rubish4/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/debris1
	name = "pre-War building debris"
	desc = "A pre-War building debris."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "debris1"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/debris1/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/debris2
	name = "pre-War building debris"
	desc = "A pre-War building debris."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "debris2"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/debris2/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/debris3
	name = "pre-War building debris"
	desc = "A pre-War building debris."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "debris3"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/debris3/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/debris4
	name = "pre-War building debris"
	desc = "A pre-War building debris."
	icon = 'icons/fallout/objects/structures/rubish.dmi'
	icon_state = "debris4"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/debris4/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

/obj/structure/statue_fal
	name = "Ranger statue"
	desc = "A big ranger statue."
	icon = 'icons/fallout/objects/structures/statue.dmi'
	icon_state = "statue1"
	anchored = 1
	density = 1
	layer = ABOVE_MOB_LAYER
	resistance_flags = INDESTRUCTIBLE

/obj/structure/statue_fal/New()
	..()

	var/atom/movable/S = new (locate(x+1,y,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x+1,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()

	S = new (locate(x,y+1,z))
	S.density = 1
	S.anchored = 1
	S.icon = null
	S.verbs.Cut()