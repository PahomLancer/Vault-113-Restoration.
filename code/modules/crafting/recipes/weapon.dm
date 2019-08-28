// MELEE
/datum/crafting_recipe/spear
	name = "Spear"
	result = /obj/item/weapon/twohanded/tribal_spear
	reqs = list(/obj/item/crafting/duct_tape = 1,
				/obj/item/weapon/kitchen/knife = 1,
				/obj/item/weapon/grown/log = 1)
	time = 200
	category = CAT_WEAPON
	default = 1
	XP = 20

/datum/crafting_recipe/throwing_spear
	name = "Throwing Spear"
	result = /obj/item/weapon/spear
	reqs = list(/obj/item/stack/sheet/metal = 3)
	time = 100
	tools = list(/obj/item/weapon/weldingtool)
	category = CAT_WEAPON
	default = 1
	XP = 20

/datum/crafting_recipe/heatcosmicknife
	name = "Heat cosmic knife"
	result = /obj/item/weapon/kitchen/knife/heatcosmicknife
	reqs = list(/obj/item/weapon/kitchen/knife/cosmicknife = 1,
				/obj/item/crafting/toaster = 1)
	time = 200
	category = CAT_WEAPON
	default = 1
	XP = 40

//WEAPON PARTS


/datum/crafting_recipe/weaponparts/ballistic
	name = "Ballistic Weapon Parts"
	reqs = list(/obj/item/weapon/gun/ballistic/automatic = 1)
	time = 50
	category = CAT_WEAPON
	default = 1
	XP = 20
	result = /obj/item/crafting/weapon_parts/ballistic

/datum/crafting_recipe/weaponparts/energy
	name = "Energy Weapon Parts"
	reqs = list(/obj/item/weapon/gun/energy/laser = 1)
	time = 100
	category = CAT_WEAPON
	default = 1
	XP = 20
	result = /obj/item/crafting/weapon_parts/energy

/datum/crafting_recipe/weaponparts/plasma
	name = "Plasma Weapon Parts"
	reqs = list(/obj/item/weapon/gun/energy/plasma = 1)
	time = 200
	category = CAT_WEAPON
	default = 1
	XP = 20
	result = /obj/item/crafting/weapon_parts/plasma


//BALLISTIC

/datum/crafting_recipe/bozar
	name = "Bozar"
	result = /obj/item/weapon/gun/ballistic/automatic/bozar
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/crafting/weapon_parts/ballistic = 5,
				/obj/item/stack/sheet/plasteel = 5)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 1000
	category = CAT_WEAPON
	XP = 200

/datum/crafting_recipe/n99
	name = "10-mm Pistol"
	result = /obj/item/weapon/gun/ballistic/automatic/pistol/n99
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/crafting/weapon_parts/ballistic = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	default = 1
	category = CAT_WEAPON
	XP = 75

/datum/crafting_recipe/a_rifle308
	name = "Automatic Rifle .308"
	result = /obj/item/weapon/gun/ballistic/automatic/rifle
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/crafting/weapon_parts/ballistic = 2,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/mineral/wood = 3)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	category = CAT_WEAPON
	XP = 120

/datum/crafting_recipe/smg10mm
	name = "10-mm Submachine Gun"
	result = /obj/item/weapon/gun/ballistic/automatic/smg10mm
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 2,
				/obj/item/crafting/weapon_parts/ballistic = 2,
				/obj/item/stack/sheet/plasteel = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	category = CAT_WEAPON
	XP = 100

/datum/crafting_recipe/rifle308
	name = "Rifle .308"
	result = /obj/item/weapon/gun/ballistic/shotgun/rifle
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/crafting/weapon_parts/ballistic = 1,
				/obj/item/stack/sheet/mineral/wood = 3)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	category = CAT_WEAPON
	XP = 110

/datum/crafting_recipe/pipegun
	name = "Pipe Gun"
	result = /obj/item/weapon/gun/ballistic/shotgun/pipe
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/crafting/weapon_parts/ballistic = 1,
				/obj/item/stack/sheet/metal = 1,
				/obj/item/stack/sheet/mineral/wood = 2)
	tools = list(/obj/item/weapon/screwdriver)
	time = 500
	default = 1
	category = CAT_WEAPON
	XP = 40

/datum/crafting_recipe/assault_rifle
	name = "Assault Rifle 5.56mm"
	result = /obj/item/weapon/gun/ballistic/automatic/assault_rifle
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/crafting/weapon_parts/ballistic = 3,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 3,
				/obj/item/stack/sheet/plasteel = 2)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	category = CAT_WEAPON
	XP = 140

/datum/crafting_recipe/trail_carbine
	name = "trail carbine"
	result = /obj/item/weapon/gun/ballistic/shotgun/trail
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
				/obj/item/crafting/weapon_parts/ballistic = 1,
				/obj/item/weaponcrafting/stock = 1,
				/obj/item/stack/sheet/metal = 3)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/ballistic)
	time = 500
	category = CAT_WEAPON
	XP = 120

// PLASMA

/datum/crafting_recipe/plasma_rifle
	name = "plasma rifle"
	result = /obj/item/weapon/gun/energy/plasma
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/plasma = 2,
			/obj/item/stack/sheet/metal = 5,
			/obj/item/stack/sheet/plasteel = 5,
			/obj/item/crafting/diode = 1,
			/obj/item/crafting/transistor = 2,
			/obj/item/crafting/capacitor = 5,
			/obj/item/crafting/resistor = 1,
			/obj/item/crafting/board = 1,
			/obj/item/stack/cable_coil = 9,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 850
	category = CAT_WEAPON
	XP = 250

/datum/crafting_recipe/plasma_glock
	name = "plasma glock"
	result = /obj/item/weapon/gun/energy/plasma/glock
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
	/obj/item/stack/sheet/metal = 3,
	/obj/item/crafting/weapon_parts/plasma = 1,
	/obj/item/stack/sheet/glass = 2,
	/obj/item/crafting/diode = 2,
	/obj/item/crafting/transistor = 2,
	/obj/item/crafting/capacitor = 3,
	/obj/item/crafting/resistor = 1,
	/obj/item/crafting/board = 1,
	/obj/item/stack/cable_coil = 5,
	/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 175

/datum/crafting_recipe/plasma_pistol
	name = "Plasma pistol"
	result = /obj/item/weapon/gun/energy/plasma/pistol
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
	/obj/item/weaponcrafting/stock = 1,
	/obj/item/stack/sheet/metal = 3,
	/obj/item/crafting/weapon_parts/plasma = 1,
	/obj/item/crafting/diode = 1,
	/obj/item/crafting/transistor = 1,
	/obj/item/crafting/capacitor = 2,
	/obj/item/crafting/resistor = 1,
	/obj/item/crafting/board = 1,
	/obj/item/stack/cable_coil = 6,
	/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 750
	category = CAT_WEAPON
	XP = 140

/datum/crafting_recipe/plasma_multiplas
	name = "Multiplas"
	result = /obj/item/weapon/gun/energy/plasma/tri
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
	/obj/item/weaponcrafting/stock = 1,
	/obj/item/crafting/weapon_parts/plasma = 5,
	/obj/item/stack/sheet/plasteel = 10,
	/obj/item/crafting/diode = 3,
	/obj/item/crafting/transistor = 3,
	/obj/item/crafting/capacitor = 5,
	/obj/item/crafting/resistor = 2,
	/obj/item/crafting/board = 1,
	/obj/item/stack/cable_coil = 10,
	/obj/item/weapon/stock_parts/cell = 1, /obj/item/bench/laser)
	time = 900
	category = CAT_WEAPON
	XP = 400

/datum/crafting_recipe/plasma_turbo
	name = "Turbo Plasma Rifle"
	result = /obj/item/weapon/gun/energy/plasma/turbo
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/plasma = 5,
			/obj/item/stack/sheet/plasteel = 10,
			/obj/item/crafting/diode = 6,
			/obj/item/crafting/transistor = 5,
			/obj/item/crafting/capacitor = 7,
			/obj/item/crafting/resistor = 3,
			/obj/item/crafting/board = 2,
			/obj/item/stack/cable_coil = 15,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 1200
	category = CAT_WEAPON
	XP = 500

//LASER

/datum/crafting_recipe/laser_pistol
	name = "Laser Pistol"
	result = /obj/item/weapon/gun/energy/laser/pistol
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/stack/sheet/metal = 2,
			/obj/item/crafting/weapon_parts/energy = 1,
			/obj/item/crafting/diode = 1,
			/obj/item/crafting/transistor = 1,
			/obj/item/crafting/capacitor = 1,
			/obj/item/crafting/resistor = 1,
			/obj/item/crafting/board = 1,
			/obj/item/crafting/bulb = 1,
			/obj/item/stack/cable_coil = 1,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 150

/datum/crafting_recipe/laser_rifle9
	name = "Laser Rifle AER9"
	result = /obj/item/weapon/gun/energy/laser/rifle
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/energy = 2,
			/obj/item/stack/sheet/metal = 3,
			/obj/item/stack/sheet/plasteel = 5,
			/obj/item/crafting/diode = 1,
			/obj/item/crafting/transistor = 2,
			/obj/item/crafting/capacitor = 2,
			/obj/item/crafting/resistor = 2,
			/obj/item/crafting/board = 1,
			/obj/item/crafting/bulb = 1,
			/obj/item/stack/cable_coil = 5,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 200

/datum/crafting_recipe/laser_rifle13
	name = "Laser Rifle AER13"
	result = /obj/item/weapon/gun/energy/laser/rifle/aer13
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/energy = 3,
			/obj/item/stack/sheet/metal = 1,
			/obj/item/stack/sheet/plasteel = 5,
			/obj/item/crafting/diode = 3,
			/obj/item/crafting/transistor = 3,
			/obj/item/crafting/capacitor = 2,
			/obj/item/crafting/resistor = 2,
			/obj/item/crafting/board = 1,
			/obj/item/crafting/bulb = 1,
			/obj/item/stack/cable_coil = 10,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 250

/datum/crafting_recipe/laser_tri
	name = "Tribeam"
	result = /obj/item/weapon/gun/energy/laser/rifle/tri
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/energy = 5,
			/obj/item/stack/sheet/metal = 5,
			/obj/item/stack/sheet/plasteel = 5,
			/obj/item/crafting/diode = 4,
			/obj/item/crafting/transistor = 4,
			/obj/item/crafting/capacitor = 6,
			/obj/item/crafting/resistor = 3,
			/obj/item/crafting/board = 3,
			/obj/item/crafting/bulb = 3,
			/obj/item/stack/cable_coil = 20,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 300

/datum/crafting_recipe/laser_rcw
	name = "RCW"
	result = /obj/item/weapon/gun/energy/laser/rcw
	reqs = list(/obj/item/weaponcrafting/reciever = 1,
			/obj/item/weaponcrafting/stock = 1,
			/obj/item/crafting/weapon_parts/energy = 5,
			/obj/item/stack/sheet/metal = 5,
			/obj/item/stack/sheet/plasteel = 5,
			/obj/item/crafting/diode = 5,
			/obj/item/crafting/transistor = 4,
			/obj/item/crafting/capacitor = 4,
			/obj/item/crafting/resistor = 3,
			/obj/item/crafting/board = 1,
			/obj/item/crafting/bulb = 1,
			/obj/item/stack/cable_coil = 10,
			/obj/item/weapon/stock_parts/cell = 1)
	tools = list(/obj/item/weapon/screwdriver, /obj/item/bench/laser)
	time = 800
	category = CAT_WEAPON
	XP = 400