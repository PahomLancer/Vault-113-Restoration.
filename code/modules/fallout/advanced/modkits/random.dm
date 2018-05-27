/obj/item/kit/random
	price = 2000

/obj/item/kit/random/New()
	var/list/kits = typesof(/obj/item/kit/)
	kits -= /obj/item/kit/random
	kits -= /obj/item/kit

	var/target = "[pick(kits)]"
	var/obj/item = new target()
	item.loc = loc

	qdel(src)