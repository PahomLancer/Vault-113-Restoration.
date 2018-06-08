///////////////////////////////////
//////////AI Module Disks//////////
///////////////////////////////////

/datum/design/board/aicore
	name = "AI Design (AI Core)"
	desc = "Allows for the construction of circuit boards used to build new AI cores."
	id = "aicore"
	req_tech = list("programming" = 3)
	build_path = /obj/item/weapon/circuitboard/aicore
	category = list("AI Modules")
	build_type = IMPRINTER


/datum/design/board/safeguard_module
	name = "Module Design (Safeguard)"
	desc = "Allows for the construction of a Safeguard AI Module."
	id = "safeguard_module"
	req_tech = list("programming" = 3, "materials" = 3)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/supplied/safeguard
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/onehuman_module
	name = "Module Design (OneHuman)"
	desc = "Allows for the construction of a OneHuman AI Module."
	id = "onehuman_module"
	req_tech = list("programming" = 5, "materials" = 4)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/zeroth/oneHuman
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/protectstation_module
	name = "Module Design (ProtectStation)"
	desc = "Allows for the construction of a ProtectStation AI Module."
	id = "protectstation_module"
	req_tech = list("programming" = 5, "materials" = 4)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/supplied/protectStation
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/quarantine_module
	name = "Module Design (Quarantine)"
	desc = "Allows for the construction of a Quarantine AI Module."
	id = "quarantine_module"
	req_tech = list("programming" = 3, "biotech" = 2, "materials" = 4)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/supplied/quarantine
	category = list("AI Modules")
	build_type = IMPRINTER

/*
/datum/design/board/oxygen_module
	name = "Module Design (OxygenIsToxicToHumans)"
	desc = "Allows for the construction of a Safeguard AI Module."
	id = "oxygen_module"
	req_tech = list("programming" = 4, "biotech" = 2, "materials" = 4)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/supplied/oxygen
	category = list("AI Modules")
*/
/datum/design/board/freeform_module
	name = "Module Design (Freeform)"
	desc = "Allows for the construction of a Freeform AI Module."
	id = "freeform_module"
	req_tech = list("programming" = 5, "materials" = 4)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/supplied/freeform
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/reset_module
	name = "Module Design (Reset)"
	desc = "Allows for the construction of a Reset AI Module."
	id = "reset_module"
	req_tech = list("programming" = 4, "materials" = 6)
	materials = list(MAT_GLASS = 1000, MAT_GOLD = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/reset
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/purge_module
	name = "Module Design (Purge)"
	desc = "Allows for the construction of a Purge AI Module."
	id = "purge_module"
	req_tech = list("programming" = 5, "materials" = 6)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/reset/purge
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/freeformcore_module
	name = "AI Core Module (Freeform)"
	desc = "Allows for the construction of a Freeform AI Core Module."
	id = "freeformcore_module"
	req_tech = list("programming" = 6, "materials" = 6)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/freeformcore
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/asimov
	name = "Core Module Design (Asimov)"
	desc = "Allows for the construction of a Asimov AI Core Module."
	id = "asimov_module"
	req_tech = list("programming" = 3, "materials" = 5)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/full/asimov
	category = list("AI Modules")

/datum/design/board/paladin_module
	name = "Core Module Design (P.A.L.A.D.I.N.)"
	desc = "Allows for the construction of a P.A.L.A.D.I.N. AI Core Module."
	id = "paladin_module"
	req_tech = list("programming" = 5, "materials" = 5)
	build_type = IMPRINTER
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/full/paladin
	category = list("AI Modules")

/datum/design/board/tyrant_module
	name = "Core Module Design (T.Y.R.A.N.T.)"
	desc = "Allows for the construction of a T.Y.R.A.N.T. AI Module."
	id = "tyrant_module"
	req_tech = list("programming" = 5, "prewar" = 2, "materials" = 5)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/full/tyrant
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/corporate_module
	name = "Core Module Design (Corporate)"
	desc = "Allows for the construction of a Corporate AI Core Module."
	id = "corporate_module"
	req_tech = list("programming" = 5, "materials" = 5)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/full/corp
	category = list("AI Modules")
	build_type = IMPRINTER

/datum/design/board/custom_module
	name = "Core Module Design (Custom)"
	desc = "Allows for the construction of a Custom AI Core Module."
	id = "custom_module"
	req_tech = list("programming" = 5, "materials" = 5)
	materials = list(MAT_GLASS = 1000, MAT_DIAMOND = 100, MAT_COOPER = 100)
	build_path = /obj/item/weapon/aiModule/core/full/custom
	category = list("AI Modules")
	build_type = IMPRINTER
