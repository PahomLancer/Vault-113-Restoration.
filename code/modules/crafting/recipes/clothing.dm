/datum/crafting_recipe/cloth
	name = "Cloth"
	result = /obj/item/stack/sheet/cloth
	reqs = list(/obj/item/clothing = 1)
	time = 30
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/headscarf
	name = "Headscarf"
	result = /obj/item/clothing/head/f13/headscarf
	reqs = list(/obj/item/stack/sheet/cloth = 4)
	time = 50
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/rag_shoes
	name = "Cloth Shoes"
	result = /obj/item/clothing/shoes/f13/rag
	reqs = list(/obj/item/stack/sheet/cloth = 2,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/preacher_hoodie
	name = "Preacher Hoodie"
	result = /obj/item/clothing/suit/hooded/preacher_hoodie
	reqs = list(/obj/item/stack/sheet/cloth = 5,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 15

/datum/crafting_recipe/child_of_cathedral_hoodie
	name = "Child of Cathedral Hoodie"
	result = /obj/item/clothing/suit/hooded/child_of_cathedral_hoodie
	reqs = list(/obj/item/stack/sheet/cloth = 5,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 15

/datum/crafting_recipe/shoes
	name = "Leather Shoes"
	result = /obj/item/clothing/shoes/f13/tan
	reqs = list(/obj/item/stack/sheet/animalhide = 2,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/superleather
	name = "Supermutant Leather Boots"
	result = /obj/item/clothing/shoes/f13/superleather
	reqs = list(/obj/item/stack/sheet/animalhide = 3,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 15

/datum/crafting_recipe/superleather2
	name = "Supermutant Leather Light Boots"
	result = /obj/item/clothing/shoes/f13/sm_leather_boots
	reqs = list(/obj/item/stack/sheet/animalhide = 3,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 15

/datum/crafting_recipe/supersandals
	name = "Supermutant Sandals"
	result = /obj/item/clothing/shoes/f13/supersandals
	reqs = list(/obj/item/stack/sheet/mineral/wood = 3,
				/obj/item/crafting/wonderglue = 1)
	time = 150
	category = CAT_CLOTHING
	default = 1
	XP = 10

/datum/crafting_recipe/tribalclothing
	name = "Tribal Clothing"
	result = /obj/item/clothing/under/f13/tribal
	reqs = list(/obj/item/stack/sheet/animalhide/gecko = 2,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 100
	category = CAT_CLOTHING
	default = 1
	XP = 15

/datum/crafting_recipe/ragclothing
	name = "Rag Clothing"
	result = /obj/item/clothing/under/f13/rag
	reqs = list(/obj/item/stack/sheet/cloth = 5,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 100
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/ragclothing
	name = "Pants"
	result = /obj/item/clothing/under/pants/f13/cloth
	reqs = list(/obj/item/stack/sheet/cloth = 3,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 50
	category = CAT_CLOTHING
	default = 1
	XP = 5

/datum/crafting_recipe/satchel
	name = "Satchel"
	result = /obj/item/weapon/storage/backpack/satchel
	time = 150
	reqs = list(/obj/item/stack/sheet/animalhide = 2,
				/obj/item/crafting/duct_tape = 1,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	category = CAT_CLOTHING
	default = 1
	XP = 10

/datum/crafting_recipe/vault_supermutant
	name = "Vault Supermutant Jumpsuit"
	result = /obj/item/clothing/under/vault_supermutant
	time = 20
	reqs = list(/obj/item/clothing/under/f13/vault = 1)
	category = CAT_CLOTHING
	default = 1
	XP = 10

/datum/crafting_recipe/sm_black_pants
	name = "Supermutants Pants"
	result = /obj/item/clothing/under/sm_black_pants
	reqs = list(/obj/item/stack/sheet/cloth = 5,
				/obj/item/crafting/wonderglue = 1)
	tools = list(/obj/item/weapon/wirecutters)
	time = 50
	category = CAT_CLOTHING
	default = 1
	XP = 15

