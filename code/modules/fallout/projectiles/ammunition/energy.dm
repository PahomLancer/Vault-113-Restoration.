//Fallout 13 energy guns ammo directory

/obj/item/ammo_casing/energy/f13plasma
	projectile_type = /obj/item/projectile/beam/plasma
	delay = 2
	randomspread = 1
	variance = 5
	select_name = "kill"
	e_cost = 50
	firing_effect_type = /obj/effect/overlay/temp/dir_setting/firing_effect/plasma


/obj/item/ammo_casing/energy/f13plasma/turbo
	projectile_type = /obj/item/projectile/beam/plasma/turbo
	delay = 5
	e_cost = 75

/obj/item/ammo_casing/energy/f13plasma/tri
	delay = 0
	pellets = 3
	variance = 25
	e_cost = 100
	randomspread = 0

/obj/item/ammo_casing/energy/laser/rcw
	delay = 1
	e_cost = 100
	projectile_type = /obj/item/projectile/beam/laser/rcw
	randomspread = 1
	variance = 8

/obj/item/projectile/beam/laser/rcw
	damage = 16

/obj/item/ammo_casing/energy/laser/rifle
	delay = 4
	e_cost = 33
	randomspread = 1
	variance = 4

/obj/item/ammo_casing/energy/laser/rifle/aer13
	delay = 4
	e_cost = 33

/obj/item/ammo_casing/energy/laser/rifle/tri
	delay = 0
	pellets = 3
	variance = 25
	e_cost = 100
	randomspread = 0

/obj/item/ammo_casing/energy/laser/laer
	delay = 2
	e_cost = 50
	randomspread = 1
	projectile_type = /obj/item/projectile/beam/laser/laerbolt
	variance = 4

/obj/item/projectile/beam/laser/laerbolt
	name = "electric bolt"
	damage = 50
	icon_state = "omnilaser"
	light_color = LIGHT_COLOR_BLUE
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/ammo_casing/energy/laser/gauss2mm
	delay = 2
	e_cost = 1000
	randomspread = 0
	projectile_type = /obj/item/projectile/beam/laser/gauss2mm
	variance = 4

/obj/item/projectile/beam/laser/gauss2mm
	name = "2mm bolt"
	damage = 65
	armour_penetration = 80
	dismemberment = 10
	icon_state = "2mm"
	pass_flags = PASSTABLE
	light_color = LIGHT_COLOR_BLUE
	damage_type = BRUTE
	hitsound = null
	hitsound_wall = "ricochet"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser