/////////////////////////////////////////
/////////////////Weapons/////////////////
/////////////////////////////////////////

/datum/design/riot
	name = "riot helmet"
	desc = "It's a helmet specifically designed to protect against close range attacks."
	id = "riot"
	req_tech = list("combat" = 3, "materials" = 3, "prewar" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 10000)
	build_path = /obj/item/clothing/head/helmet/riot
	category = list("Armour")

/datum/design/combat_mk1
	name = "reinforced combat helmet mark I"
	desc = "A ballistic assembly, designed to protect the wearer from projectile and energy weapon impacts, bladed weapons, blunt trauma, and concussion."
	id = "combat_mk1"
	req_tech = list("combat" = 4, "materials" = 4, "prewar" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 10000, MAT_SILVER = 300, MAT_TITANIUM = 1000)
	build_path = /obj/item/clothing/head/helmet/f13/combat_mk1
	category = list("Armour")

/datum/design/combat_mk2
	name = "reinforced combat helmet mark II"
	desc = "A complex ballistic assembly, designed to protect the wearer from projectile and energy weapon impacts, bladed weapons, blunt trauma, and concussion."
	id = "combat_mk2"
	req_tech = list("combat" = 5, "materials" = 5, "prewar" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 15000, MAT_GLASS = 8000, MAT_SILVER = 1500, MAT_TITANIUM = 2000)
	build_path = /obj/item/clothing/head/helmet/f13/combat_mk2
	category = list("Armour")

/datum/design/tesla_helmet
	name = "Tesla helmet"
	desc = "Tesla helmet it's a prototype, that has good protection against lasers and energy weapons."
	id = "tesla_helmet"
	req_tech = list("combat" = 6, "materials" = 6, "prewar" = 5, "engineering" = 5, "powerstorage" = 5, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 5000, MAT_SILVER = 2500, MAT_TITANIUM = 2000, MAT_COOPER = 5000)
	build_path = /obj/item/clothing/head/helmet/f13/tesla_helmet
	category = list("Armour")

/datum/design/tesla_helmet
	name = "Tesla helmet"
	desc = "Tesla helmet it's a prototype, that has good protection against lasers and energy weapons."
	id = "tesla_helmet"
	req_tech = list("combat" = 6, "materials" = 6, "prewar" = 5, "engineering" = 5, "powerstorage" = 5, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 5000, MAT_SILVER = 2500, MAT_TITANIUM = 2000, MAT_COOPER = 5000)
	build_path = /obj/item/clothing/head/helmet/f13/tesla_helmet
	category = list("Armour")

/datum/design/tesla
	name = "reactive tesla armor"
	desc = "An experimental suit of armor with sensitive detectors hooked up to a huge capacitor grid, with emitters strutting out of it. Zap."
	id = "tesla"
	req_tech = list("combat" = 6, "materials" = 6, "prewar" = 5, "engineering" = 5, "powerstorage" = 5, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 3000, MAT_SILVER = 5000, MAT_TITANIUM = 4000, MAT_COOPER = 10000)
	build_path = /obj/item/clothing/suit/armor/reactive/tesla
	category = list("Armour")

/datum/design/stealth
	name = "reactive stealth armor"
	desc = "An experimental suit of armor that renders the wearer invisible on detection of imminent harm, and creates a decoy that runs away from the owner. You can't fight what you can't see."
	id = "stealth"
	req_tech = list("combat" = 6, "materials" = 6, "prewar" = 5, "engineering" = 5, "powerstorage" = 5, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 3000, MAT_SILVER = 5000, MAT_TITANIUM = 4000, MAT_COOPER = 10000)
	build_path = /obj/item/clothing/suit/armor/reactive/stealth
	category = list("Armour")

/datum/design/teleport
	name = "reactive teleport armor"
	desc = "An experimental suit of reactive teleport armor."
	id = "teleport"
	req_tech = list("combat" = 6, "materials" = 6, "prewar" = 5, "engineering" = 5, "powerstorage" = 5, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 3000, MAT_SILVER = 5000, MAT_TITANIUM = 4000, MAT_COOPER = 10000)
	build_path = /obj/item/clothing/suit/armor/reactive/teleport
	category = list("Armour")

/datum/design/bulletproof
	name = "bulletproof armor"
	desc = "A bulletproof vest that excels in protecting the wearer against traditional projectile weaponry and explosives to a minor extent."
	id = "bulletproof"
	req_tech = list("combat" = 3, "materials" = 3, "prewar" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 25000, MAT_GLASS = 10000)
	build_path = /obj/item/clothing/suit/armor/bulletproof
	category = list("Armour")

/datum/design/kit
	name = "makeshift armor kit"
	desc = "A bunch of armor parts that can be worn over the clothing to get the most basic protection against the dangers of wasteland.<br>This armor is unable to reflect laser beams and probably won't shield the wearer from a random bullet, but it's better than no any armor at all."
	id = "kit"
	req_tech = list("combat" = 2, "materials" = 2, "prewar" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 15000, MAT_GLASS = 5000)
	build_path = /obj/item/clothing/suit/armor/f13/kit
	category = list("Armour")

/datum/design/metal_chestplate_f2
	name = "Metal armor"
	desc = "Polished metal plates, crudely forming a suit of armor."
	id = "metal_chestplate_f2"
	req_tech = list("combat" = 4, "materials" = 3, "prewar" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 35000, MAT_GLASS = 5000)
	build_path = /obj/item/clothing/suit/armor/f13/metal_chestplate_f2
	category = list("Armour")

/datum/design/metal_chestplate2
	name = "Metal armor Mk II"
	desc = "Metal armor Mk II is superior version of the regular metal armor."
	id = "metal_chestplate2"
	req_tech = list("combat" = 4, "materials" = 4, "prewar" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_GLASS = 5000, MAT_SILVER = 2000, MAT_TITANIUM = 2000)
	build_path = /obj/item/clothing/suit/armor/f13/metal_chestplate2
	category = list("Armour")

/datum/design/combat_mk1b
	name = "reinforced combat armor mark I"
	desc = "An advanced and expensive pre-War model of combat armor made of complex alloys.<br>It was common for all types of troops before the implementation of reinforced combat armor mark II"
	id = "combat_mk1b"
	req_tech = list("combat" = 4, "materials" = 4, "prewar" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 30000, MAT_GLASS = 10000, MAT_SILVER = 600, MAT_TITANIUM = 4000)
	build_path = /obj/item/clothing/suit/armor/f13/combat_mk1
	category = list("Armour")

/datum/design/combat_mk2b
	name = "reinforced combat armor mark II"
	desc = "An improved version of pre-War reinforced combat armor - designed to replace it, this high tech suit was created as a lightweight, more protective set reserved for use by American shock troops and special forces."
	id = "combat_mk2b"
	req_tech = list("combat" = 5, "materials" = 5, "prewar" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 20000, MAT_GLASS = 8000, MAT_SILVER = 2000, MAT_TITANIUM = 8000)
	build_path = /obj/item/clothing/suit/armor/f13/combat_mk2
	category = list("Armour")