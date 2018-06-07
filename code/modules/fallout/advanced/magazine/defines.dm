/obj/machinery/magazine
	name = "Magazine"
	desc = "It's time to spent your caps!"
	icon = 'icons/obj/vending.dmi'
	icon_state = "sec"

	anchored = 1
	density = 1

	armor = list(melee = 100, bullet = 100, laser = 100, energy = 100, bomb = 100, bio = 100, rad = 100, fire = 100, acid = 100)
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF

	var/product_index = -1
	var/product_name
	var/product_price
	var/product_icon
	var/product_icon_state

	light_range = 6

	var/list/shipment = list()
	var/html

/obj/machinery/magazine/proc/clear()
	html = null

/obj/machinery/magazine/proc/getHTML()
	//if(!html)
	if(product_index == -1)
		. += "<style> .button:hover {background: #178642} .price {float: right; color: #ffffff; margin-right: 10px;} .button {display:inline-block; line-height: 32px; margin-top: 10px; width: 98%;} img {display:inline-block; vertical-align: middle; margin-right: 10px;} </style>"
		for(var/I = 1 to shipment.len)
			var/obj/O = shipment[I]

			infoGet(O)
			. += "<a class='button' href='byond://?src=\ref[src];buy=[I]'><img src='[product_icon_state].png'>[product_name] <span class='price'>[product_price]</span></a> <br>"
			usr.browse_rsc_icon(product_icon, product_icon_state)
	else
		infoGet(shipment[product_index])
		. += "Buying [product_name].<br> Waiting for [product_price] caps.<br>"
		. += "<a href='byond://?src=\ref[src];back=1'>Back</a><br>"
	//html = .

	return .

/obj/machinery/magazine/proc/showUI()
	var/datum/browser/popup = new(usr, "vending", name)
	popup.set_content(getHTML())
	popup.open()

/obj/machinery/magazine/proc/buy(Index)
	var/typeString = "[shipment[Index]]"
	var/obj/item = new typeString(loc)

	// MEGA WARNING FIX
	item.name = item.name

	playsound(src, 'sound/items/change_jaws.ogg', 60, 1)
	to_chat(usr, "You bought [product_name] for [product_price] caps!")
	product_index = -1

/obj/machinery/magazine/proc/sell(var/obj/item/I)
	infoGet(I)
	if(!product_price)
		to_chat(usr, "Owner doesn't interested in this product.")
		playsound(src, 'sound/machines/DeniedBeep.ogg', 60, 1)
		return

	var/price_mod = 0.50 + (usr:special.getPoint("c") * 0.05)
	product_price *= price_mod
	product_price = round(product_price)

	if(istype(I, /obj/item/weapon/gun))
		var/obj/item/weapon/gun/G = I
		product_price += G.modifications.len * 1000
		product_price *= G.condition / 100

	qdel(I)

	to_chat(usr, "You sold [product_name] for [product_price] caps.")
	playsound(src, 'sound/items/change_jaws.ogg', 60, 1)

	var/obj/item/stack/caps/target/caps = new(product_price)
	caps.loc = loc

/obj/machinery/magazine/proc/infoGet(var/obj/item/I)
	var/path = ispath(I)

	if(path)
		var/typeString = "[I]"
		I = new typeString()

	product_name = I.name
	product_icon = I.icon
	product_icon_state = I.icon_state

	if(I.price)
		product_price = I.price
	else
		product_price = null

	if(path)
		qdel(I)

/obj/machinery/magazine/proc/fillType(type)
	shipment = typesof(type)
	for(var/O in shipment)
		infoGet(O)
		if(!product_price)
			shipment -= O

/obj/machinery/magazine/attackby(obj/item/I, mob/living/carbon/human/user, parameters)
	if((product_index != -1) && (istype(I, /obj/item/stack/caps)))
		if(I:amount >= product_price)
			buy(product_index)
			I:amount -= product_price
		else
			to_chat(user, "Need [product_price - I:amount] more caps!")
	else
		if(I.price)
			sell(I)
		else
			attack_hand(user)

/obj/machinery/magazine/attack_hand(mob/user)
	showUI()

/obj/machinery/magazine/Topic(href, href_list)
	if(..())
		return

	if(href_list["buy"])
		product_index = text2num(href_list["buy"])

	if(href_list["back"])
		product_index = -1

	showUI()