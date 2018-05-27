/obj/item/blueprint
	name = "blueprint"
	desc = "just blueprint"
	icon = 'icons/fallout/objects/items.dmi'
	icon_state = "blueprint_empty"
	var/recipe

/obj/item/blueprint/New()
	icon_state = "blueprint[rand(1,4)]"
