////////////////////////////////////////
/////////////Stock Parts////////////////
////////////////////////////////////////

/datum/design/RPED
	name = "Rapid Part Exchange Device"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts."
	id = "rped"
	req_tech = list("engineering" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 5000) //hardcore
	build_path = /obj/item/weapon/storage/part_replacer
	category = list("Stock Parts")

/datum/design/BS_RPED
	name = "Bluespace RPED"
	desc = "Powered by bluespace technology, this RPED variant can upgrade buildings from a distance, without needing to remove the panel first."
	id = "bs_rped"
	req_tech = list("engineering" = 4, "bluespace" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 15000, MAT_GLASS = 5000, MAT_SILVER = 2500) //hardcore
	build_path = /obj/item/weapon/storage/part_replacer/bluespace
	category = list("Stock Parts")

//Capacitors
/datum/design/basic_capacitor
	name = "Basic Capacitor"
	desc = "A stock part used in the construction of various devices."
	id = "basic_capacitor"
	req_tech = list("powerstorage" = 1)
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(MAT_METAL = 100, MAT_GLASS = 100)
	build_path = /obj/item/weapon/stock_parts/capacitor
	category = list("Stock Parts","Machinery","initial")
	lathe_time_factor = 0.2

/datum/design/adv_capacitor
	name = "Advanced Capacitor"
	desc = "A stock part used in the construction of various devices."
	id = "adv_capacitor"
	req_tech = list("powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 150, MAT_GLASS = 150)
	build_path = /obj/item/weapon/stock_parts/capacitor/adv
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/super_capacitor
	name = "Super Capacitor"
	desc = "A stock part used in the construction of various devices."
	id = "super_capacitor"
	req_tech = list("powerstorage" = 4, "engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 200, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/capacitor/super
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/quadratic_capacitor
	name = "Quadratic Capacitor"
	desc = "A stock part used in the construction of various devices."
	id = "quadratic_capacitor"
	req_tech = list("powerstorage" = 5, "engineering" = 5, "materials" = 5, "bluespace" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 200, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/capacitor/quadratic
	category = list("Stock Parts")
	lathe_time_factor = 0.2

//Scanning modules
/datum/design/basic_scanning
	name = "Basic Scanning Module"
	desc = "A stock part used in the construction of various devices."
	id = "basic_scanning"
	req_tech = list("magnets" = 1)
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(MAT_METAL = 100, MAT_GLASS = 50)
	build_path = /obj/item/weapon/stock_parts/scanning_module
	category = list("Stock Parts","Machinery","initial")
	lathe_time_factor = 0.2

/datum/design/adv_scanning
	name = "Advanced Scanning Module"
	desc = "A stock part used in the construction of various devices."
	id = "adv_scanning"
	req_tech = list("magnets" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 150, MAT_GLASS = 100)
	build_path = /obj/item/weapon/stock_parts/scanning_module/adv
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/phasic_scanning
	name = "Phasic Scanning Module"
	desc = "A stock part used in the construction of various devices."
	id = "phasic_scanning"
	req_tech = list("magnets" = 4, "engineering" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 150, MAT_SILVER = 60, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/scanning_module/phasic
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/triphasic_scanning
	name = "Triphasic Scanning Module"
	desc = "A stock part used in the construction of various devices."
	id = "triphasic_scanning"
	req_tech = list("magnets" = 5, "materials" = 5, "engineering" = 5, "bluespace" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 200, MAT_DIAMOND = 60, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/scanning_module/triphasic
	category = list("Stock Parts")
	lathe_time_factor = 0.2

//Maipulators
/datum/design/micro_mani
	name = "Micro Manipulator"
	desc = "A stock part used in the construction of various devices."
	id = "micro_mani"
	req_tech = list("materials" = 1)
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(MAT_METAL = 100)
	build_path = /obj/item/weapon/stock_parts/manipulator
	category = list("Stock Parts","Machinery","initial")
	lathe_time_factor = 0.2

/datum/design/nano_mani
	name = "Nano Manipulator"
	desc = "A stock part used in the construction of various devices."
	id = "nano_mani"
	req_tech = list("materials" = 3, "programming" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 150)
	build_path = /obj/item/weapon/stock_parts/manipulator/nano
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/pico_mani
	name = "Pico Manipulator"
	desc = "A stock part used in the construction of various devices."
	id = "pico_mani"
	req_tech = list("materials" = 4, "programming" = 4, "engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200)
	build_path = /obj/item/weapon/stock_parts/manipulator/pico
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/femto_mani
	name = "Femto Manipulator"
	desc = "A stock part used in the construction of various devices."
	id = "femto_mani"
	req_tech = list("materials" = 6, "programming" = 5, "engineering" = 5, "bluespace" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_DIAMOND = 30, MAT_TITANIUM = 30, MAT_COOPER = 50)
	build_path = /obj/item/weapon/stock_parts/manipulator/femto
	category = list("Stock Parts")
	lathe_time_factor = 0.2

//Micro-lasers
/datum/design/basic_micro_laser
	name = "Basic Micro-Laser"
	desc = "A stock part used in the construction of various devices."
	id = "basic_micro_laser"
	req_tech = list("magnets" = 1)
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(MAT_METAL = 100, MAT_GLASS = 50)
	build_path = /obj/item/weapon/stock_parts/micro_laser
	category = list("Stock Parts","Machinery","initial")
	lathe_time_factor = 0.2

/datum/design/high_micro_laser
	name = "High-Power Micro-Laser"
	desc = "A stock part used in the construction of various devices."
	id = "high_micro_laser"
	req_tech = list("magnets" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 150, MAT_GLASS = 100)
	build_path = /obj/item/weapon/stock_parts/micro_laser/high
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/ultra_micro_laser
	name = "Ultra-High-Power Micro-Laser"
	desc = "A stock part used in the construction of various devices."
	id = "ultra_micro_laser"
	req_tech = list("magnets" = 4, "engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 150, MAT_URANIUM = 60, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/micro_laser/ultra
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/quadultra_micro_laser
	name = "Quad-Ultra Micro-Laser"
	desc = "A stock part used in the construction of various devices."
	id = "quadultra_micro_laser"
	req_tech = list("magnets" = 5, "materials" = 5, "engineering" = 5, "bluespace" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_GLASS = 200, MAT_URANIUM = 100, MAT_DIAMOND = 60, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/micro_laser/quadultra
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/basic_matter_bin
	name = "Basic Matter Bin"
	desc = "A stock part used in the construction of various devices."
	id = "basic_matter_bin"
	req_tech = list("materials" = 1)
	build_type = PROTOLATHE | AUTOLATHE
	materials = list(MAT_METAL = 100)
	build_path = /obj/item/weapon/stock_parts/matter_bin
	category = list("Stock Parts","Machinery","initial")
	lathe_time_factor = 0.2

/datum/design/adv_matter_bin
	name = "Advanced Matter Bin"
	desc = "A stock part used in the construction of various devices."
	id = "adv_matter_bin"
	req_tech = list("materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 150)
	build_path = /obj/item/weapon/stock_parts/matter_bin/adv
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/super_matter_bin
	name = "Super Matter Bin"
	desc = "A stock part used in the construction of various devices."
	id = "super_matter_bin"
	req_tech = list("materials" = 4, "engineering" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/matter_bin/super
	category = list("Stock Parts")
	lathe_time_factor = 0.2

/datum/design/bluespace_matter_bin
	name = "Bluespace Matter Bin"
	desc = "A stock part used in the construction of various devices."
	id = "bluespace_matter_bin"
	req_tech = list("materials" = 6, "engineering" = 5, "bluespace" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 250, MAT_DIAMOND = 200, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/matter_bin/bluespace
	category = list("Stock Parts")
	lathe_time_factor = 0.2

//T-Comms devices
/datum/design/subspace_ansible
	name = "Subspace Ansible"
	desc = "A compact module capable of sensing extradimensional activity."
	id = "s-ansible"
	req_tech = list("programming" = 2, "magnets" = 2, "materials" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_SILVER = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/ansible
	category = list("Stock Parts")

/datum/design/hyperwave_filter
	name = "Hyperwave Filter"
	desc = "A tiny device capable of filtering and converting super-intense radiowaves."
	id = "s-filter"
	req_tech = list("programming" = 3, "magnets" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_SILVER = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/filter
	category = list("Stock Parts")

/datum/design/subspace_amplifier
	name = "Subspace Amplifier"
	desc = "A compact micro-machine capable of amplifying weak subspace transmissions."
	id = "s-amplifier"
	req_tech = list("programming" = 3, "magnets" = 4, "materials" = 3, "bluespace" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_GOLD = 100, MAT_URANIUM = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/amplifier
	category = list("Stock Parts")

/datum/design/subspace_treatment
	name = "Subspace Treatment Disk"
	desc = "A compact micro-machine capable of stretching out hyper-compressed radio waves."
	id = "s-treatment"
	req_tech = list("programming" = 2, "magnets" = 3, "materials" = 2, "bluespace" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_SILVER = 200, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/treatment
	category = list("Stock Parts")

/datum/design/subspace_analyzer
	name = "Subspace Analyzer"
	desc = "A sophisticated analyzer capable of analyzing cryptic subspace wavelengths."
	id = "s-analyzer"
	req_tech = list("programming" = 3, "magnets" = 4, "materials" = 2, "bluespace" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/analyzer
	category = list("Stock Parts")

/datum/design/subspace_crystal
	name = "Ansible Crystal"
	desc = "A sophisticated analyzer capable of analyzing cryptic subspace wavelengths."
	id = "s-crystal"
	req_tech = list("magnets" = 2, "materials" = 2, "bluespace" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 800, MAT_SILVER = 100, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/crystal
	category = list("Stock Parts")

/datum/design/subspace_transmitter
	name = "Subspace Transmitter"
	desc = "A large piece of equipment used to open a window into the subspace dimension."
	id = "s-transmitter"
	req_tech = list("magnets" = 3, "materials" = 4, "bluespace" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_SILVER = 100, MAT_URANIUM = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/stock_parts/subspace/transmitter
	category = list("Stock Parts")

/datum/design/boardc
	name = "empty circuit board"
	desc = "A plastic board used to hold all other electrical components together."
	id = "boardc"
	req_tech = list("magnets" = 2, "materials" = 2, "programming" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_METAL = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/board
	category = list("Stock Parts")

/datum/design/bulb
	name = "bulb"
	desc = "And at last I see the light,<br>And it's like the fog has lifted,<br>And at last I see the light,<br>And it's like the sky is new,<br>And it's warm and real and bright,<br>And the world has somehow shifted,<br>All at once everything looks different."
	id = "bulb"
	req_tech = list("magnets" = 2, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/bulb
	category = list("Stock Parts")

/datum/design/buzzer
	name = "buzzer"
	desc = "I can almost hear it buzzing. Except it's not."
	id = "buzzer"
	req_tech = list("magnets" = 2, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/buzzer
	category = list("Stock Parts")

/datum/design/capacitor
	name = "capacitor"
	desc = "It looks like something I saw inside of the radio once.<br>It seems like it's the most basic electrical component."
	id = "capacitor"
	req_tech = list("magnets" = 3, "materials" = 2, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_METAL = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/capacitor
	category = list("Stock Parts")

/datum/design/diode
	name = "diode"
	desc = "It looks like something I saw in that useless broken television set once.<br>That thing is probably used in some electronic devices."
	id = "diode"
	req_tech = list("programming" = 3, "materials" = 2, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_METAL = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/diode
	category = list("Stock Parts")

/datum/design/frame
	name = "circuit board assembly"
	desc = "A printed circuit board - a complex electrical component."
	id = "frame"
	req_tech = list("programming" = 3, "materials" = 2, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_METAL = 100, MAT_COOPER = 100)
	build_path = /obj/item/crafting/frame
	category = list("Stock Parts")

/datum/design/fuse
	name = "fuse"
	desc = "A tiny glass tube with some wiring stuck inside of it.<br>I have no idea what it is."
	id = "fuse"
	req_tech = list("magnets" = 3, "materials" = 2, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 200, MAT_COOPER = 100)
	build_path = /obj/item/crafting/fuse
	category = list("Stock Parts")

/datum/design/igniter
	name = "igniter"
	desc = "A small electronic device able to ignite combustable substances."
	id = "igniter"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 50)
	build_path = /obj/item/crafting/igniter
	category = list("Stock Parts")

/datum/design/large_gear
	name = "large gear"
	desc = "A big part of a grand mechanism."
	id = "large_gear"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 300, MAT_COOPER = 50)
	build_path = /obj/item/crafting/large_gear
	category = list("Stock Parts")

/datum/design/lunchbox
	name = "lunchbox"
	desc = "This was a promotional item created by Vault-Tec before the Great War and used in the company's advertisements. With the right schematics, it can be used to make bottlecap mines."
	id = "lunchbox"
	req_tech = list("materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 300)
	build_path = /obj/item/crafting/lunchbox
	category = list("Stock Parts")

/datum/design/reloader
	name = "cartrige reloader"
	desc = "This device allows to hand-load your own gun rounds using certain raw materials."
	id = "reloader"
	req_tech = list("combat" = 3, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 400, MAT_COOPER = 100)
	build_path = /obj/item/crafting/reloader
	category = list("Stock Parts")

/datum/design/reloader_set
	name = "Reloader cartridges"
	desc = "Materials for reloader device."
	id = "reloader_set"
	req_tech = list("materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 100)
	build_path = /obj/item/crafting/reloader_set
	category = list("Stock Parts")

/datum/design/resistor
	name = "resistor"
	desc = "Tesla Warrior says, \"Stop right there, criminal electron!\"<br>Electron says, \"You'll never catch me!!!\"<br>*Zoom* *Zoom* *Pew* *Pew* *Pew*"
	id = "resistor"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 100)
	build_path = /obj/item/crafting/resistor
	category = list("Stock Parts")

/datum/design/sensor
	name = "proximity sensor"
	desc = "Used for scanning and alerting when someone enters a certain proximity."
	id = "sensor"
	req_tech = list("programming" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 100)
	build_path = /obj/item/crafting/sensor
	category = list("Stock Parts")

/datum/design/small_gear
	name = "small gear"
	desc = "A litle part of a big mechanism."
	id = "small_gear"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 100, MAT_COOPER = 20)
	build_path = /obj/item/crafting/small_gear
	category = list("Stock Parts")

/datum/design/switch
	name = "switch"
	desc = "A common switch, used to light up the flashlight or activate a bomb timer."
	id = "switch"
	req_tech = list("magnets" = 2, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 50)
	build_path = /obj/item/crafting/switch
	category = list("Stock Parts")

/datum/design/timer
	name = "timer"
	desc = "Used to time things. Works well with contraptions which has to count down. Tick tock."
	id = "timer"
	req_tech = list("magnets" = 2, "materials" = 2, "engineering" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_GLASS = 100, MAT_METAL = 100)
	build_path = /obj/item/crafting/timer
	category = list("Stock Parts")

/datum/design/transistor
	name = "transistor"
	desc = "Popov would love it, but Tesla got to see it.<br>The most useful electrical component."
	id = "transistor"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200, MAT_COOPER = 100)
	build_path = /obj/item/crafting/transistor
	category = list("Stock Parts")

/datum/design/reciever
	name = "modular receiver"
	desc = "A prototype modular receiver and trigger assembly for a firearm."
	id = "reciever"
	req_tech = list("magnets" = 3, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 400, MAT_COOPER = 100)
	build_path = /obj/item/weaponcrafting/reciever
	category = list("Stock Parts")

/datum/design/stock
	name = "rifle stock"
	desc = "A classic rifle stock that doubles as a grip, roughly carved out of metal."
	id = "stock"
	req_tech = list("materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 1000)
	build_path = /obj/item/weaponcrafting/stock
	category = list("Stock Parts")
