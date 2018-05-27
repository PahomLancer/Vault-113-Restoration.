/obj/tradingPost
	name = "Пост автоматической торговли"
	desc = "ПРОДАЖА: Держа предмет в руке, нажмите на торговый автомат. <br>ПОКУПКА: Выберите предмет из списка, кликните крышками по автомату для покупки."

	//icon = "icons/obj/vending.dmi"

	anchored = 1
	density = 1

	var/list/itemType
	var/list/items

/*
/obj/tradingPost/weapons
	stored_item_type = list(/obj/item/weapon/gun)
	item_not_acceptable_message = "You need to remove ammo from your weapon first."

	store_type = list(/obj/item/weapon/gun/ballistic, /obj/item/weapon/gun/energy)
*/