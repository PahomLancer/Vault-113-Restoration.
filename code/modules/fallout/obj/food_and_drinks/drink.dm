//Fallout 13 general drinks directory

/obj/item/weapon/reagent_containers/food/drinks/bottle/sunset //Howdy, pardner!
	name = "Sunset Sarsaparilla"
	desc = "A traditional radiation-free carbonated beverage of a root-beer-type.<br>Tastes like sunshine!"
	icon_state = "sunset"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("sunset" = 30)
	price = 50

/obj/item/weapon/reagent_containers/food/drinks/bottle/nukacola //It's actually a coffee...
	name = "Nuka-Cola"
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state."
	icon_state = "cola_full"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/advanced/nuka.dmi'
	list_reagents = list("nuka" = 30)

/obj/item/weapon/reagent_containers/food/drinks/bottle/nukacola/on_reagent_change()
	if((reagents.total_volume < 15) && (reagents.total_volume > 0))
		if(icon_state != "cola_half")
			icon_state = "cola_half"

	if(reagents.total_volume == 0)
		icon_state = "cola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/oldnukacola //It's actually a coffee...
	name = "Nuka-Cola"
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state."
	icon_state = "nukacola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 30)

/obj/item/weapon/reagent_containers/food/drinks/bottle/oldnukacola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "nukacola")
			icon_state = "nukacola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/fusioncola //It's actually a coffee...
	name = "Fusion Cola"
	desc = "Phil, the Nuka-Cola dude, had the thankless job of riding around the Wasteland with his bike and refilling all of the Nuka-Cola machines that littered it. It was a tradition passed down (rather stupidly) from generation to generation. Phil was not impressed and doesn't like Nuka-Cola that much. It is rumored that he had something called Fusion Nuka-Cola, a unique, unknown taste which was created by fusing together some Nuka-Cola dregs into a concentrated essence."
	icon_state = "fusioncola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 25, "tricordrazine" = 5)

/obj/item/weapon/reagent_containers/food/drinks/bottle/fusioncola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "fusioncola")
			icon_state = "fusioncola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/cherrycola //It's actually a coffee...
	name = "Cherry Nuka-Cola"
	desc = "Cherry Nuka-Cola is a variation of regular Nuka-Cola. After it was introduced, it turned out that nobody liked the taste. This resulted in a marketing disaster for the company, which quickly attempted to save the brand by introducing the Classic Nuka-Cola, tasting exactly like the original, but in a new bottle. The story of its introduction, rejection, and replacement by Classic Nuka-Cola mimics that of New Coke."
	icon_state = "cherrycola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 25, "tricordrazine" = 2, "silver_sulfadiazine" = 3)

/obj/item/weapon/reagent_containers/food/drinks/bottle/cherrycola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "cherrycola")
			icon_state = "cherrycola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/yellowcola //It's actually a coffee...
	name = "Yellow Nuka-Cola"
	desc = "Yellow Nuka-Cola is a variation of regular Nuka-Cola, both yellow in color and with an interesting smell. In Chicago, during the Brotherhood of Steel's reign, there were reports of this strange yellow Nuka-Cola. However, it was quickly identified as a substance designed by a mad naked man who made water. Considering this, and the fact that it's poisonous to anyone naive enough to actually drink it, it is apparent that the so-called cola is in fact a generous helping of urine."
	icon_state = "yellowcola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("radium" = 25, "water" = 5)

/obj/item/weapon/reagent_containers/food/drinks/bottle/yellowcola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "yellowcola")
			icon_state = "yellowcola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/victorycola //It's actually a coffee...
	name = "Nuka-Cola Victory"
	desc = "Nuka-Cola Victory is another flavor of Nuka-Cola. It is colored orange, giving it a distinct look, much like Nuka-Cola Quantum."
	icon_state = "victorycola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 20, "tricordrazine" = 5, "adminordrazine" = 5)

/obj/item/weapon/reagent_containers/food/drinks/bottle/victorycola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "victorycola")
			icon_state = "victorycola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/quantumcola //It's actually a coffee...
	name = "Nuka-Cola Quantum"
	desc = "In 2077, a new version called Nuka-Cola Quantum was introduced. According to the advertisements, it had twice the calories, twice the carbohydrates, twice the caffeine and twice the taste. To make it stand out more on the shelves and to give it an extra kick, the Quantum included a mild radioactive strontium isotope (and an eighteenth fruit flavor - pomegranate). The effect was a drink that not only boosted your energy, but also glowed with a bright blue light. While no ill effects were recorded by the Food and Drug Administration, the isotope also caused the drinker's urine to glow for almost a week."
	icon_state = "quantumcola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 10, "tricordrazine" = 8, "adminordrazine" = 8, "radium" = 4)
	light_range = 1

/obj/item/weapon/reagent_containers/food/drinks/bottle/quantumcola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "quantumcola")
			icon_state = "quantumcola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/quartzcola //It's actually a coffee...
	name = "Nuka-Cola Quartz"
	desc = "Nuka-Cola Quartz is a flavor of Nuka-Cola. In a similar sort of situation to Nuka-Cola Quantum. It is a clear drink with a white tint and glow. This version of the soft drink also gives the drinker low-light vision, much like the effects given after taking Cateye. The Nuka-Cola Corporation had a trademark battle with Vim! Pop Incorporated over the Quartz trademark, since Vim was also selling a drink known as Vim Quartz. Nuka-Cola won the battle."
	icon_state = "quartzcola"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("nuka" = 10, "tricordrazine" = 2, "adminordrazine" = 2, "ethanol" = 16)
	light_range = 1

/obj/item/weapon/reagent_containers/food/drinks/bottle/quartzcola/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "quartzcola")
			icon_state = "quartzcola"

	if(reagents.total_volume == 0)
		if(icon_state != "nukacola_empty")
			icon_state = "nukacola_empty"

	..()


/obj/item/weapon/reagent_containers/food/drinks/bottle/vim //It's actually a coffee...
	name = "VIM"
	desc = "Vim! Pop Incorporated was founded in 1931, initially being sold as a health tonic. It wasn't as popular as Nuka-Cola, however in Maine it was more widely consumed than its rival. Vim was even referred to as a state tradition and about to become the official state drink of Maine; however, during the process of making this official, legal situations forced the company to back off its marketing."
	icon_state = "vim"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("vim" = 30)

/obj/item/weapon/reagent_containers/food/drinks/bottle/vim/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "vim")
			icon_state = "vim"

	if(reagents.total_volume == 0)
		if(icon_state != "vim_empty")
			icon_state = "vim_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimquartz //It's actually a coffee...
	name = "Vim Quartz"
	desc = "Vim Quartz is one of the four known Vim flavors. The soft drink comes in a transparent glass bottle and is tinted a light yellow color which, like Nuka-Cola Quantum, glows in the dark. Quartz has a lighter label than the standard Vim flavor, sporting a white background with a purple, white and red logo. Considering its ingredients (bubblegum and carrot), it likely has a light, sweet flavor."
	icon_state = "vimquartz"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("vim" = 10, "tricordrazine" = 2, "adminordrazine" = 2, "ethanol" = 16)
	light_range = 1

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimquartz/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "vimquartz")
			icon_state = "vimquartz"

	if(reagents.total_volume == 0)
		if(icon_state != "vim_empty")
			icon_state = "vim_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimnuclear //It's actually a coffee...
	name = "Vim Captain's Blend"
	desc = "Vim Captain's Blend, test formula 10784, was in its testing state before the Great War. It hadn't yet been released on the market, though it was noted as being remarkably popular among focus groups. The #1 word used to describe the taste was 'fishy.' The company higher-ups were confused as to the popularity of the taste and were hesitant to put it out for a full release. The inspiration for the drink's odd flavor came from the request to put the 'taste of Maine in a bottle.' In fact, even the CEO hadn't been made aware of the ingredients causing the popular fishy taste."
	icon_state = "vimnuclear"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("vim" = 10, "tricordrazine" = 5, "adminordrazine" = 5, "ethanol" = 10)
	light_range = 1

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimnuclear/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "vimnuclear")
			icon_state = "vimnuclear"

	if(reagents.total_volume == 0)
		if(icon_state != "vim_empty")
			icon_state = "vim_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimdreams //It's actually a coffee...
	name = "Vim Refresh"
	desc = "Vim Refresh looks the same as regular Vim but with a light green color and a lime wedge design on the label. Rarer than Vim, it can be found in Vim machines."
	icon_state = "vimdreams"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("vim" = 17, "tricordrazine" = 3, "ethanol" = 10)

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimdreams/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "vimdreams")
			icon_state = "vimdreams"

	if(reagents.total_volume == 0)
		if(icon_state != "vim_empty")
			icon_state = "vim_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimdark //It's actually a coffee...
	name = "Vim Dark"
	desc = "Vim Dark looks the same as regular Vim but with a black color and a cofee wedge design on the label. Rarer than Vim, it can be found in Vim machines."
	icon_state = "vimdark"
	item_state = "beer"
	materials = list(MAT_GLASS=500)
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	list_reagents = list("vim" = 17, "tricordrazine" = 3, "coffee" = 10)

/obj/item/weapon/reagent_containers/food/drinks/bottle/vimdark/on_reagent_change()
	if(reagents.total_volume > 0)
		if(icon_state != "vimdark")
			icon_state = "vimdark"

	if(reagents.total_volume == 0)
		if(icon_state != "vim_empty")
			icon_state = "vim_empty"

	..()

/obj/item/weapon/reagent_containers/food/drinks/bottle/nukacola/radioactive //Whoa, oh, oh, oh, oh, whoa, oh, oh, oh, I'm radioactive, radioactive!
	desc = "The most popular flavored soft drink in the United States before the Great War.<br>It was preserved in a fairly pristine state.<br>The bottle is slightly glowing."
	list_reagents = list("nuka" = 25, "radium" = 5)

/obj/item/weapon/reagent_containers/food/drinks/flask
	name = "metal flask"
	desc = "A metallic liquid container. Never leave home without one."
	icon_state = "flask"
	icon = 'icons/fallout/objects/food&drinks/drinks.dmi'
	materials = list(MAT_METAL=500)
	volume = 60
	list_reagents = list("water" = 50)
	self_weight = 0.3

/obj/item/weapon/reagent_containers/food/drinks/flask/survival
	name = "metal flask"
	desc = "A metallic liquid container. Essential for survival out in the wastes."
	list_reagents = list("water" = 40, "silver_sulfadiazine" = 10)

/obj/item/weapon/reagent_containers/food/drinks/flask/vault13
	name = "Vault 13 flask"
	desc = "Take a sip from your trusty Vault 13 canteen."
	icon_state = "flask13"
	list_reagents = list("water" = 30, "silver_sulfadiazine" = 10, "charcoal" = 20)

/obj/item/weapon/reagent_containers/food/drinks/flask/vault113
	name = "Vault 113 flask"
	desc = "See this large yellow number? It means it's a Vault 113 canteen. Never forget."
	icon_state = "flask113"
	list_reagents = list("water" = 30, "radium" = 10)

/obj/item/weapon/reagent_containers/food/drinks/flask/ss13
	name = "metal flask"
	desc = "A strange metal flask with some meaningless letters engraved on the side."
	icon_state = "flaskss13"
	list_reagents = list("tricordrazine" = 40, "adminordrazine" = 10)
