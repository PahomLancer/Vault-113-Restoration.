//Fallout 13 base of Wasteland economics

/obj/item/stack/caps
	name = "caps"
	desc = "Post-appocalyptic money. <br>ALT + Click to transfer."
	singular_name = "cap"
	icon = 'icons/fallout/objects/bottlecaps.dmi'
	icon_state = "1"
	amount = 1
	max_amount = 3000000
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1

/obj/item/stack/caps/New()
	..()
	update_icon()

/obj/item/stack/caps/update_icon()
	if(amount >= 20)
		icon_state = "20"
	else
		icon_state = "[amount]"

/obj/item/stack/caps/random/New()
	amount = rand(1,100)

	spawn(10)
		var/obj/item/stack/caps/target/newEngineAndColor = new /obj/item/stack/caps/target()
		newEngineAndColor.loc = loc
		newEngineAndColor.amount = amount
		newEngineAndColor.update_icon()

		if(istype(loc, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = loc
			H.put_in_hands(newEngineAndColor)

		qdel(src)

/obj/item/stack/caps/target/New(count)
	amount = count
	..()