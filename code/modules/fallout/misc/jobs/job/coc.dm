//Children of the Cathedral or simple COC

/datum/job/childofcathedral
	title = "Child of the Cathedral"
	desc = "The Children of the Cathedral was the religious branch of the Unity, a widespread religious cult that the Master established as a cover for his activities and to spread his philosophy."
	flag = CHILDOFCATHEDRAL
	department_head = list("Master", "Preacher", "Mutants")
	department_flag = COC
	faction = "coc"
	status = "childofcathedral"
	total_positions = 8
	spawn_positions = 8
	supervisors = "Master"
	selection_color = "#ec9d9d"
	minimal_player_age = 10
	whitelist_on = 0

	allowed_packs = list("starter", "cigarettes")

	required_items = list()
	denied_items = list()

	outfit = /datum/outfit/job/childofcathedral

	access = list()
	minimal_access = list()

/datum/outfit/job/childofcathedral
	name = "Child of the Cathedral"
	uniform = /obj/item/clothing/under/f13/rag
	shoes = /obj/item/clothing/shoes/f13/rag
	suit = /obj/item/clothing/suit/hooded/child_of_cathedral_hoodie

/datum/job/preacher
	title = "Preacher"
	desc = "You a local leader of The Children of the Cathedral. The Children of the Cathedral was the religious branch of the Unity, a widespread religious cult that the Master established as a cover for his activities and to spread his philosophy."
	flag = PREACHER
	department_head = list("Master")
	department_flag = COC
	faction = "coc"
	status = "preacher"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Master"
	selection_color = "#ec9d9d"
	minimal_player_age = 30
	whitelist_on = 0

	allowed_packs = list("starter", "cigarettes")

	required_items = list()
	denied_items = list()

	outfit = /datum/outfit/job/preacher

	access = list()
	minimal_access = list()

/datum/outfit/job/preacher
	name = "Preacher"
	uniform = /obj/item/clothing/under/f13/rag
	shoes = /obj/item/clothing/shoes/f13/rag
	suit = /obj/item/clothing/suit/hooded/preacher_hoodie

/datum/job/supermutant
	title = "Supermutant"
	desc = "You a supermutant protector of The Children of the Cathedral. The Children of the Cathedral was the religious branch of the Unity, a widespread religious cult that the Master established as a cover for his activities and to spread his philosophy."
	flag = MUTANT
	department_head = list("Master", "Preacher")
	department_flag = COC
	faction = "coc"
	status = "supermutant"
	total_positions = 6
	spawn_positions = 6
	supervisors = "Master"
	selection_color = "#ec9d9d"
	minimal_player_age = 30
	whitelist_on = 0

	allowed_packs = list("starter", "cigarettes")

	required_items = list()
	denied_items = list()

	outfit = /datum/outfit/job/supermutant

	access = list()
	minimal_access = list()

/datum/outfit/job/supermutant
	name = "Supermutant"
	uniform = /obj/item/clothing/under/vault_supermutant
