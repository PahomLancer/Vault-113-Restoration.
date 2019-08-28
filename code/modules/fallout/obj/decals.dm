//Fallout 13 decorative decals - the rest of pure decorative stuff is in decor.dm

/obj/effect/decal/cleanable/waste
	name = "puddle of goo"
	desc = "A puddle of sticky, incredibly toxic and likely radioactive green goo."
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "goo1"
	anchored = 1
	layer = 2.1
	light_color = LIGHT_COLOR_GREEN
	light_power = 0.5
	light_range = 3
	rad_heavy_range = 1
	rad_light_range = 4
	rad_severity = 10

/obj/effect/decal/cleanable/waste/New()
	..()
	icon_state = "goo[rand(1,13)]"
	START_PROCESSING(SSobj, src)
	SSradiation.processing += src

/obj/item/trash/cloud_residue
	name = "cloud residue"
	desc = "Cloud residue is the powdery residue from the Cloud that surrounds the Sierra Madre. It is dark red in color."
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "goo_r1"
	anchored = 0
	layer = 2
	light_color = LIGHT_COLOR_RED
	light_power = 0.5
	light_range = 3
	//rad_heavy_range = 1
	//rad_light_range = 4
	//rad_severity = 10

/obj/item/trash/cloud_residue/New()
	..()
	icon_state = "goo_r[rand(1,4)]"

/obj/effect/decal/cleanable/cloud
	name = "red cloud"
	desc = "A toxin red cloud."
	icon = 'icons/fallout/misc/weather.dmi'
	icon_state = "redcloud"
	anchored = 1
	layer = 2.1
	light_color = LIGHT_COLOR_RED
	light_power = 0.5
	light_range = 4
	rad_heavy_range = 1
	rad_light_range = 2
	rad_severity = 5

/obj/effect/decal/cleanable/cloud/New()
	..()
	START_PROCESSING(SSobj, src)
	SSradiation.processing += src

/obj/effect/decal/marking
	name = "road marking"
	desc = "Road surface markings were used on paved roadways to provide guidance and information to drivers and pedestrians.<br>Nowadays, those wandering the wasteland commonly use them as directional landmarks."
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "singlevertical" //See decals.dmi for different icon states of road markings.
	anchored = 1
	layer = 2.1
	resistance_flags = INDESTRUCTIBLE