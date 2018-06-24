//Followers of the Apocalypse or simple FOB

/datum/job/overseer
	title = "Overseer"
	desc = "Head of the Vault."
	flag = VAULT_OVERSEER
	department_head = list("Vault")
	department_flag = FOB
	faction = "vault"
	status = "overseer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Vault-tec"
	selection_color = "#005A20"
	minimal_player_age = 31
	whitelist_on = 1

	allowed_packs = list("starter", "cigarettes")

	required_items = list(
	/obj/item/clothing/glasses/sunglasses,
	/obj/item/weapon/lighter/engraved
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	outfit = /datum/outfit/job/overseer

	access = list()
	minimal_access = list()

/datum/outfit/job/overseer
	name = "Overseer"

	id = /obj/item/weapon/card/id/captains_spare
	glasses = /obj/item/clothing/glasses/sunglasses
	r_pocket = /obj/item/device/pda/captain
	uniform = /obj/item/clothing/under/f13/vault/v13
	shoes = /obj/item/clothing/shoes/sneakers/brown

/datum/job/dweller
	title = "Dweller"
	flag = VAULT_RESIDENT/*ASSISTANT*/
	department_head = list("Overseer")
	department_flag = FOB
	faction = "vault"
	status = "dweller"
	total_positions = 20
	spawn_positions = 20
	supervisors = "overseer"
	selection_color = "#005A20"

	allowed_packs = list("starter", "cigarettes")

	required_items = list(
	/obj/item/clothing/glasses/sunglasses,
	/obj/item/weapon/lighter/engraved
	)
	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/headscarf,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/dweller

/datum/outfit/job/dweller
	name = "Dweller"

	uniform = /obj/item/clothing/under/f13/vault/v13
	id = /obj/item/weapon/card/id
	r_pocket = /obj/item/device/pda
	shoes = /obj/item/clothing/shoes/sneakers/brown

