/obj/item/weapon/gun
	var/name_original
	var/list/modifications = list ()
	var/list/modificationsNames = list ()

/obj/item/weapon/gun/examine(mob/user)
	..()

	if(modificationsNames.len == 0)
		return

	to_chat(user, "WMK installed:")

	for(var/S in modificationsNames)
		to_chat(user, S)

/obj/item/weapon/gun/attackby(obj/item/weapon/W, mob/living/carbon/human/user, params)
	..()

	if(user.special.getPoint("i") <= 3)
		to_chat(user, "Wow! This box is pretty! Is it food inside?")
		return

	if(istype(W, /obj/item/kit))
		W:install(src)

/obj/item/weapon/gun/proc/WMK_have(var/type)
	return (type in modifications)