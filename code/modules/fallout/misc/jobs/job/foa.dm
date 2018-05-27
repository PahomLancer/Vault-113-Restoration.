//Followers of the Apocalypse or simple FOA

/datum/job/follower
	title = "Follower"
	desc = "The Followers of the Apocalypse, or simply the Followers, are a faction based in New California and have established their presence in the Mojave Wasteland. Their goal is to tend to the inhabitants of the wasteland, as well as to ensure that the horrors of the Great War are never to be repeated."
	flag = AFOLLOWER
	department_head = list("Common sense")
	department_flag = FOA
	faction = "followers"
	status = "follower"
	total_positions = 4
	spawn_positions = 1
	supervisors = "common sense"
	selection_color = "#ec9d9d"
	minimal_player_age = 20
	whitelist_on = 0

	allowed_packs = list("starter", "cigarettes", "follower", "bard", "super_ten")

	required_items = list()
	denied_items = list()

	outfit = /datum/outfit/job/follower

	access = list()
	minimal_access = list()

/datum/outfit/job/follower
	name = "Follower"
	belt = /obj/item/weapon/storage/belt/medical
	gloves = /obj/item/clothing/gloves/color/latex
	uniform = /obj/item/clothing/under/f13/doctor
	shoes = /obj/item/clothing/shoes/laceup
	suit = /obj/item/clothing/suit/toggle/labcoat/f13/followers
	glasses = /obj/item/clothing/glasses/regular
	belt_contents = list(/obj/item/weapon/reagent_containers/f13stimpack = 4, \
	/obj/item/clothing/mask/surgical = 1)