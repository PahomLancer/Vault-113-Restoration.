/obj/item/weapon/gun/energy/plasma
	name ="Plasma Rifle"
	icon_state = "plasma"
	item_state = "plasma"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	desc = "A Plasma Rifle Shoots a bolt of superheated plasma."
	origin_tech = "combat=4;magnets=3;prewar=4"
	ammo_type = list(/obj/item/ammo_casing/energy/f13plasma)
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	fire_sound = 'sound/f13weapons/plasmarifle.ogg'
	burst_size = 1
	shaded_charge = 1
	fire_delay = 5
	price = 1300
	recoil = 2
	energy_gun = 1

/obj/item/weapon/gun/energy/plasma/glock
	name ="Glock86"
	icon_state = "glock86"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	item_state = "plasma-pistol"
	desc = "Glock 86 Plasma Pistol. Designed by the Gaston Glock artificial intelligence. Shoots a small bolt of superheated plasma."
	origin_tech = "combat=2;magnets=3;prewar=5"
	weapon_weight = WEAPON_LIGHT
	w_class = WEIGHT_CLASS_NORMAL
	burst_size = 1
	zoomable = TRUE
	zoom_amt = 3
	scopetype = /obj/screen/fullscreen/scope/tech
	fire_delay = 10
	price = 950
	recoil = 1
	energy_gun = 1

/obj/item/weapon/gun/energy/plasma/pistol
	name ="Plasma Pistol"
	icon_state = "plasma-pistol"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	item_state = "plasma-pistol"
	desc = "Glock 86 Plasma Pistol. Designed by the Gaston Glock artificial intelligence. Shoots a small bolt of superheated plasma."
	origin_tech = "combat=2;magnets=3;prewar=3"
	weapon_weight = WEAPON_LIGHT
	w_class = 2
	burst_size = 1
	fire_delay = 5
	price = 800
	recoil = 1
	energy_gun = 1

/obj/item/weapon/gun/energy/plasma/pistol/cyborg
	name = "cyborg plasma pistol"
	item_state = "plasma-pistol"
	desc = "An integrated plasma pistol that draws from a cyborg's power cell. This weapon contains a limiter to prevent the cyborg's power cell from overheating."
	fire_delay = 3
	can_charge = 0
	use_cyborg_cell = 1
	energy_gun = 0

/obj/item/weapon/gun/energy/plasma/tri
	name ="Multiplas"
	icon_state = "multiplas"
	item_state = "multiplas"
	origin_tech = "combat=3;magnets=2;prewar=4"
	ammo_type = list(/obj/item/ammo_casing/energy/f13plasma/tri)
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	burst_size = 1
	w_class = 3
	fire_delay = 15
	price = 1500
	recoil = 4
	energy_gun = 1

/obj/item/weapon/gun/energy/plasma/turbo
	name ="turbo plasma rifle"
	icon_state = "turbo-plasma-rifle"
	item_state = "turbo-plasma-rifle"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	desc = "A modified winchester P94 plasma rifle. The plasma bolt chamber has been hotwired to accelerate the bolt formation process."
	origin_tech = "combat=6;magnets=6;prewar=6"
	ammo_type = list(/obj/item/ammo_casing/energy/f13plasma/turbo)
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	fire_delay = 15
	w_class = 4
	price = 1500
	recoil = 3
	energy_gun = 1
///////LASERS//////

/obj/item/weapon/gun/energy/laser/rcw
	name ="Laser RCW"
	icon_state = "rcw"
	item_state = "rcw"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	desc = "Rapid capacitor weapon."
	origin_tech = "combat=6;magnets=6;prewar=5"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/rcw)
	burst_size = 2 //Fuck yeah
	w_class = 3
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	price = 3000
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/pistol
	name ="Laser Pistol"
	icon_state = "laser-pistol"
	item_state = "laser-pistol"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	desc = "The AEP7 laser pistol was put into service to replace the AEP5 model. With a generous battery size, tight shot grouping at range, resilience to extended use, and fairly decent damage output, it is a very good choice for a sidearm and is used extensively in this role by the Brotherhood of Steel and the Enclave in the Capital Wasteland."
	origin_tech = "combat=3;magnets=2;prewar=2"
	ammo_type = list(/obj/item/ammo_casing/energy/laser)
	weapon_weight = WEAPON_LIGHT
	burst_size = 1
	fire_delay = 3
	w_class = 2
	price = 500
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/pistol/wattz1000
	name ="Wattz 1000 Pistol"
	icon_state = "wattz1000"
	item_state = "laser-pistol"
	desc = "A Wattz 1000 laser pistol. As the pistol is a civilian model, the wattage is lower than military or police versions. The reason for this is that it uses a laser focusing diode instead of a crystal array. For security, it can be locked down for transport, with a proper arming sequence needed to render it operable again."
	origin_tech = "combat=2;magnets=2;prewar=1"
	fire_delay = 3.5
	price = 400
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/rifle
	name ="Laser Rifle AER9"
	icon_state = "laser-rifle9"
	item_state = "laser-rifle9"
	icon = 'icons/fallout/objects/guns/energy.dmi'
	desc = "Laser rifles are high-tech weapons that emit a concentrated beam of coherent light, with sufficient wattage to do considerable damage."
	origin_tech = "combat=3;magnets=2;prewar=3"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/rifle)
	burst_size = 1
	fire_delay = 3
	w_class = 3
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	price = 1000
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/rifle/aer13
	name ="Laser Rifle AER13"
	icon_state = "laser-rifle13"
	item_state = "laser-rifle13"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/rifle/aer13)
	weapon_weight = WEAPON_HEAVY
	burst_size = 2
	fire_delay = 3
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/rifle/tri
	name ="Tribeam"
	icon_state = "tribeam"
	item_state = "tribeam"
	origin_tech = "combat=3;magnets=2;prewar=5"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/rifle/tri)
	weapon_weight = WEAPON_HEAVY
	burst_size = 1
	fire_delay = 5
	w_class = 4
	price = 2100
	energy_gun = 1

/obj/item/weapon/gun/energy/laser/laer
	name = "LAER"
	desc = "The Laser Assisted Electric Rifle is a prototype weapon developed at the Big Mountain Research Facility."
	icon = 'icons/fallout/objects/guns/energy.dmi'
	icon_state = "laer"
	item_state = "laer"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/laer)
	burst_size = 1
	w_class = 3
	fire_delay = 5
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	price = 3500
	origin_tech = "combat=5;magnets=7"
	energy_gun = 1

//Gauss Rifles//

/obj/item/weapon/gun/energy/laser/gaussrifle
	name = "Gauss Rifle"
	desc = "The Gauss Rifle is loaded with a magazine filled with slivers of inert metal. Using a substantial amount of charge, a power cell activates magnetic coils to hurtle these slugs at incredible speeds."
	icon = 'icons/fallout/objects/guns/energy.dmi'
	icon_state = "gaussrifle"
	item_state = "gaussrifle"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/gauss2mm)
	w_class = 3
	zoomable = TRUE
	zoom_amt = 22
	fire_delay = 10
	slot_flags = SLOT_BACK
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY
	price = 4000
	energy_gun = 1
	origin_tech = "combat=7;magnets=8;prewar=6"