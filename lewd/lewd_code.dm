/proc/cum_splatter(var/datum/reagent/blood/source, var/atom/target) // Like blood_splatter(), but much more questionable on a resume.
	var/obj/effect/decal/cleanable/cum/C = new(get_turf(target))
	C.blood_DNA = list()
	C.blood_DNA[source.data["blood_DNA"]] = (source && source.data && source.data["blood_type"]) ? source.data["blood_type"] : "O+"

/mob/var/lastmoan

/mob/proc/moan()

	if(!(prob(lust / lust_tolerance * 65)))
		return

	var/moan = rand(1, 7)
	if (moan == lastmoan)
		moan--
	lastmoan = moan

	visible_message("<font color=purple> <B>\The [src]</B> [pick("�����", "����� � �����������",)].</font>")
	playsound(get_turf(src), "honk/sound/interactions/moan_[gender == FEMALE ? "f" : "m"][moan].ogg", 70, 1, 0)//, pitch = get_age_pitch())

/mob/proc/cum(var/mob/partner, var/target_orifice)

	//if(rand(250))
	//	playsound(loc, "honk/sound/interactions/oof.ogg", 70, 1, -1)

	var/message
	if(has_penis())

		if(!istype(partner))
			target_orifice = null

		switch(target_orifice)
			if(CUM_TARGET_MOUTH)
				if(partner.has_mouth() && partner.mouth_is_free())
					message = pick("������ ����� � ��� [partner].","������� �� ������ [partner].","�������� ������� � ��� [partner].","��������� ��� [partner] �������.","������� ������ � ��� [partner], ���, ��� ������� ��� ���.","��������� � ����� [partner] ������ ������� �������")
					partner.reagents.add_reagent("cum", 10)
				else
					message = "������ �� ���� [partner]."
			if(CUM_TARGET_THROAT)
				if(partner.has_mouth() && partner.mouth_is_free())
					message = "������� ���� ���� ��� ����� ������ � ������ [partner] � ������."
					partner.reagents.add_reagent("cum", 15)
				else
					message = "������ �� ���� [partner]."
			if(CUM_TARGET_VAGINA)
				if(partner.is_nude() && partner.has_vagina())
					message = "������ �� ��������� [partner]."
					//partner.reagents.add_reagent("cum", 10)
				else
					message = "������ �� �������[partner]."
			if(CUM_TARGET_ANUS)
				if(partner.is_nude() && partner.has_anus())
					message = "������ � ������� [partner]."
					//partner.reagents.add_reagent("cum", 10)
				else
					message = "������ �� ������ [partner]."
			if(CUM_TARGET_HAND)
				if(partner.has_hand())
					message = "������ � ���� [partner]'s."
				else
					message = "������ �� [partner]."
			if(CUM_TARGET_BREASTS)
				if(partner.is_nude() && partner.has_vagina())
					message = "������ �� ����� [partner]."
				else
					message = "������ �� ��� � ����� [partner]."
			if(NUTS_TO_FACE)
				if(partner.has_mouth() && partner.mouth_is_free())
					message = "��������� ������� ���� ��������� ����� � \the [partner]'s ���, ������ ��� ���������� ����� ������,������ ������� �� ����� � ������."
			if(THIGH_SMOTHERING)
				if(src.has_penis())
					message = "����������  \the [partner] � ������, ����� ���� �������� ������������, ����������� ������� ���� �� ����� ����."
				else
					message = "������� ���� � ������� �� ������ \the [partner]'s � ������ �� ��"
			else
				message = "������� �� ���!"
		lust = 5
		lust_tolerance += 50

	else
		message = pick("���������� ����� � ����� ������", "�������� � �������.","��������, ������� �����","�����������, � ����� ����� �������������","���������� � �������� �������")
		lust -= pick(10, 15, 20, 25)

	if(gender == MALE)
		playsound(loc, "honk/sound/interactions/final_m[rand(1, 3)].ogg", 90, 1, 0)//, pitch = get_age_pitch())
	else if(gender == FEMALE)
		playsound(loc, "honk/sound/interactions/final_f[rand(1, 5)].ogg", 70, 1, 0)//, pitch = get_age_pitch())

	visible_message("<font color=purple><b>\The [src]</b> [message]</font>")

	multiorgasms += 1
	if(multiorgasms == 1)
		add_logs(partner, src, "came on")

	if(multiorgasms > (sexual_potency/3))
		refactory_period = 100 //sex cooldown
		druggy = 30
	else
		refactory_period = 100
		druggy = 6

/mob/var/last_partner
/mob/var/last_orifice

/mob/proc/is_fucking(var/mob/partner, var/orifice)
	if(partner == last_partner && orifice == last_orifice)
		return 1
	return 0

/mob/proc/set_is_fucking(var/mob/partner, var/orifice)
	last_partner = partner
	last_orifice = orifice

/mob/proc/do_oral(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(partner.is_fucking(src, CUM_TARGET_MOUTH))
		if(prob(partner.sexual_potency))
			message = "����������� � [partner]."
			lust_increase += 5
		else
			if(partner.has_vagina())
				message = "����� ����� [partner]."
			else if(partner.has_penis())
				message = "���������� [partner]."
			else
				message = "���������� [partner]."
	else
		if(partner.has_vagina())
			message = "������ ���� ���� � �����  [partner]'s "
		else if(partner.has_penis())
			message = "���� ���� [partner] � ���."
		else
			message = "�������� ������ ���� [partner]."
		partner.set_is_fucking(src, CUM_TARGET_MOUTH)

	playsound(get_turf(src), "honk/sound/interactions/bj[rand(1, 11)].ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_MOUTH, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_facefuck(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_MOUTH))
		if(has_vagina())
			message = "������ ����� ������� �� ���� [partner]."
		else if(has_penis())
			message = pick("����� ������� [partner] � ���.","������ ��������� ������ [partner] � ����.")
	else
		if(has_vagina())
			message = "������ [partner] ����� � ���� ������."
		else if(has_penis())
			if(is_fucking(partner, CUM_TARGET_THROAT))
				message = "������ ���� ���� �� ������ [partner]"
			else
				message = "����������� ���� ���� ��� ������ � ��� [partner]"
		else
			message = "������ ������������ �� ���� [partner]."
		set_is_fucking(partner , CUM_TARGET_MOUTH)

	playsound(loc, "honk/sound/interactions/oral[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_MOUTH, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_throatfuck(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_THROAT))
		message = "[pick(list("��������� ������� [partner] � ������.", "chokes \the [partner] on their dick."))]</span>"
		if(rand(3))
			partner.emote("chokes on \The [src]")
			partner.losebreath = 5
	else if(is_fucking(partner, CUM_TARGET_MOUTH))
		message = "��� ���� ������, ������ ��� � ������ [partner]."

	else
		message = "����� ���������� ���� ���� � ������ [partner]"
		set_is_fucking(partner , CUM_TARGET_THROAT)

	playsound(loc, "honk/sound/interactions/oral[rand(1, 2)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_THROAT, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_anal(var/mob/partner)
	var/message
	var/lust_increase = 10
	if(is_fucking(partner, CUM_TARGET_ANUS))
		message = pick("������� [partner] � �������.","����� ����������� [partner] � ����","��������� ���� � �������� ������ [partner] �� ����� ����.")
	else
		message = "����������� ��������� �������� ��������� [partner]."
		set_is_fucking(partner, CUM_TARGET_ANUS)

	playsound(loc, "honk/sound/interactions/bang[rand(1, 7)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_ANUS, partner)
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_vaginal(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_VAGINA))
		message = "��������� � ������ [partner]."
	else
		message = "������ ��������� ����������� ������ [partner]"
		set_is_fucking(partner, CUM_TARGET_VAGINA)

	playsound(loc, "honk/sound/interactions/champ[rand(1, 2)].ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_VAGINA, partner)
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_mount(var/mob/partner)
	var/message
	var/lust_increase = 10
	if(partner.is_fucking(src, CUM_TARGET_VAGINA))
		message = "������ �� ����� [partner]."
	else
		message = "���������� ���� ������ �� ���� [partner]."
		partner.set_is_fucking(src, CUM_TARGET_VAGINA)
	playsound(loc, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_VAGINA, src)
	handle_post_sex(lust_increase, null, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_mountass(var/mob/partner)
	var/message
	var/lust_increase = 10
	if(partner.is_fucking(src, CUM_TARGET_ANUS))
		message = "������ �� ����� [partner]."
	else
		message = "�������� ���� ��� �� ���� [partner]."
		partner.set_is_fucking(src, CUM_TARGET_ANUS)
	playsound(loc, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_ANUS, src)
	handle_post_sex(lust_increase, null, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_fingering(var/mob/partner)
	visible_message("<b>\The [src]<b> [pick(list("fingers \the [partner].", "fingers \the [partner]'s pussy.", "fingers \the [partner] hard."))]</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(partner, src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_fingerass(var/mob/partner)
	visible_message("<b>\The [src]<b> [pick(list("fingers \the [partner].", "fingers \the [partner]'s asshole.", "fingers \the [partner] hard."))]</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(partner, src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_rimjob(var/mob/partner)
	visible_message("<b>[src]<b> ���������� ������� [partner].</span>")
	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	partner.handle_post_sex(10, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_handjob(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(partner.is_fucking(src, CUM_TARGET_HAND))
		message = "[pick(list("������ [partner].", "�������� ����� � �������� ����� [partner].", "����������� ���� [partner] �������."))]"
	else
		message = "����� ����������� ���� [partner] �����."
		partner.set_is_fucking(src, CUM_TARGET_HAND)

	playsound(src, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, CUM_TARGET_HAND, src)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_breastfuck(var/mob/partner)
	var/message
	var/lust_increase = 10

	if(is_fucking(partner, CUM_TARGET_BREASTS))
		message = "[pick(list("������� [partner] ����� ������.", "������� [partner] ����� �����."))]"
	else
		message = "���� ����� [partner] � ����������� ��� ���� ����."
		set_is_fucking(partner , CUM_TARGET_BREASTS)


	playsound(loc, "honk/sound/interactions/bang[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_BREASTS, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_mountface(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(is_fucking(partner, GRINDING_FACE_WITH_ANUS))
		message = "[pick(list("������ ����� �������� �� ���� [partner] .", "�������� ������� ���� [partner] � �������."))]</span>"
	else
		message = "[pick(list("����������� ������ ����� ������ [partner] � ���������� � � ���� �������..", "������ ���� ������� ����� �� ���� [partner] ."))]</span>"
		set_is_fucking(partner , GRINDING_FACE_WITH_ANUS)

	playsound(loc, "honk/sound/interactions/squelch[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_lickfeet(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(partner.get_item_by_slot(slot_shoes) != null) {
		message = "���������� [partner.get_item_by_slot(slot_shoes)] [partner]."
	} else {
		message = "����� ����� [partner]."
	}

	playsound(loc, "honk/sound/interactions/champ_fingering.ogg", 50, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/*Grinding YOUR feet in TARGET's face*/
/mob/proc/do_grindface(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(is_fucking(partner, GRINDING_FACE_WITH_FEET)) {
		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("grinds their [get_shoes()] into [partner] face.", "presses their footwear down hard on [partner] face.", "rubs off the dirt from their [get_shoes()] onto [partner]'s face."))]</span>"
		} else {

			message = "[pick(list("grinds their barefeet into [partner] face.", "���������� ��� � ��� [partner] ������ ������ ������.", "�������� ��������� ����� ����� ��� �� ����� [partner]"))]</span>"
		}
	} else if(is_fucking(partner, GRINDING_MOUTH_WITH_FEET)) {
		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("����������� [get_shoes()] �� ��� � ������ �� �� ���� [partner].", "�������� ��������� �� [get_shoes()] �� ��� [partner] ������� �� �� ����."))]</span>"
		} else {

			message = "[pick(list("����������� ����� ���� ��� ��� [partner] � ������ �� �� ����.", "retracts their barefeet from [partner]'s mouth and grinds them into their face instead."))]</span>"
		}
		set_is_fucking(partner , GRINDING_FACE_WITH_FEET)
	} else {

		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("�������� [get_shoes()] �������� �� ���� [partner].", "�������� ���� [get_shoes()] �� ���� [partner] � ����������� ���.", "����� ����� [get_shoes()] �� ���� [partner]."))]</span>"
		} else {

			message = "[pick(list("������ ���� �������� ���� �� ���� [partner].", "�������� ���� ��������� ������ �� ���� [partner], � ��� ��� ���.", "���������� ���� �� ���� [partner]."))]</span>"
		}
		set_is_fucking(partner , GRINDING_FACE_WITH_FEET)
	}

	playsound(loc, "honk/sound/interactions/foot_dry[rand(1, 4)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

	/*Grinding YOUR feet in TARGET's mouth*/
/mob/proc/do_grindmouth(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(is_fucking(partner, GRINDING_MOUTH_WITH_FEET)) {
		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("����� ������ ���� [get_shoes()] ������ � ��� [partner].", "harshly forces another inch of their [get_shoes()] into [partner]'s mouth.", "��������� ���� [get_shoes()] � ����� ��� [partner]."))]</span>"
		} else {

			message = "[pick(list("������� �������� ��� ������ ��� [partner].", "���������� ���� ����� ���� ������ � ��� [partner], ������ ���.", "����� ��������� ������ �� ����� [partner]."))]</span>"
		}
	} else if(is_fucking(partner, GRINDING_FACE_WITH_FEET)) {
		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("decides to force their [get_shoes()] deep into [partner]'s mouth.", "������ ������ ����� [get_shoes()] � ����� [partner]'s ����������� �� �����."))]</span>"
		} else {

			message = "[pick(list("��������� ��� [partner] �������� ��� � ������ �� ������.", "����� ����� �� ��� ��� �������, ������ ���� � ��� [partner]."))]</span>"
		}
		set_is_fucking(partner , GRINDING_MOUTH_WITH_FEET)
	} else {

		if(src.get_item_by_slot(slot_shoes) != null) {

			message = "[pick(list("����� ������� ��������� ������������ ���� [get_shoes()] � ��� [partner].", "grinds the tip of their [get_shoes()] against [partner]'s mouth before pushing themselves in."))]</span>"
		} else {

			message = "[pick(list("���� ���� ������� ����� ���� �� ���� [partner]'s ������ ��� ������� �� � �����.", "������� ���� ����� ���� � ��� [partner].", "���������� ��� � ��� [partner] �����, � ����� ������� ��� ���� ������."))]</span>"
		}
		set_is_fucking(partner , GRINDING_MOUTH_WITH_FEET)
	}

	playsound(loc, "honk/sound/interactions/foot_wet[rand(1, 3)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	partner.handle_post_sex(lust_increase, null, src)
	partner.dir = get_dir(src, partner)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_nuts(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(is_fucking(partner, NUTS_TO_FACE))
		message = pick(list("grabs the back of [partner]'s head and pulls it into their crotch.", "jams their nutsack right into [partner]'s face.", "roughly grinds their fat nutsack into [partner]'s mouth.", "pulls out their saliva-covered nuts from [partner]'s violated mouth and then wipes off the slime onto their face."))
	else
		message = pick(list("wedges a digit into the side of [partner]'s jaw and pries it open before using their other hand to shove their whole nutsack inside!", "stands with their groin inches away from [partner]'s face, then thrusting their hips forward and smothering [partner]'s whole face with their heavy ballsack."))
		set_is_fucking(partner , NUTS_TO_FACE)

	playsound(loc, "honk/sound/interactions/nuts[rand(1, 4)].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, CUM_TARGET_MOUTH, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/do_thighs(var/mob/partner)
	var/message
	var/lust_increase = 1

	if(is_fucking(partner, THIGH_SMOTHERING))
		if(has_vagina())
			message = pick(list("presses their weight down onto \the [partner]'s face, blocking their vision completely.", "rides \the [partner]'s face, grinding their wet pussy all over it."))
		else if(has_penis())
			message = pick(list("presses their weight down onto \the [partner]'s face, blocking their vision completely.", "forces their dick and nutsack into \the [partner]'s face as they're stuck locked inbetween their thighs.", "slips their cock into \the [partner]'s helpless mouth, keeping their groin pressed hard into their face."))
		else
			message = "rubs their groin up and down \the [partner]'s face."
	else
		if(has_vagina())
			message = pick(list("clambers over \the [partner]'s face and pins them down with their meaty thighs, their moist slit rubbing all over \the [partner]'s mouth and nose.", "locks their legs around \the [partner]'s head before pulling it into their taint."))
		else if(has_penis())
			message = pick(list("clambers over \the [partner]'s face and pins them down with their thick thighs, then slowly inching closer and covering their eyes and nose with their leaking erection.", "locks their legs around \the [partner]'s head before pulling it into their fat package, smothering them."))
		else
			message = "deviously locks their legs around \the [partner]'s head and smothers it in their thick meaty thighs."
		set_is_fucking(partner , THIGH_SMOTHERING)

	if(rand(3))
		partner.losebreath = 5
	var file = pick(list("bj10", "bj3", "foot_wet1", "foot_dry3"))
	playsound(loc, "honk/sound/interactions/[file].ogg", 70, 1, -1)
	visible_message("<b>\The [src]</b> [message]")
	handle_post_sex(lust_increase, THIGH_SMOTHERING, partner)
	partner.dir = get_dir(partner,src)
	do_fucking_animation(get_dir(src, partner))

/mob/proc/get_shoes()

	var/obj/A = get_item_by_slot(slot_shoes)
	if(findtext (A.name,"the")) {
		return copytext(A.name, 3, (lentext(A.name)) + 1)
	} else {
		return A.name
	}

/mob/proc/handle_post_sex(var/amount, var/orifice, var/mob/partner)

	sleep(5)

	if(stat != CONSCIOUS)
		return
	if(amount)
		lust += amount
	if (lust >= lust_tolerance)
		cum(partner, orifice)
	else
		moan()

/obj/item/weapon/dildo
	name = "dildo"
	desc = "Hmmm, deal throw."
	icon = 'honk/icons/obj/items/dildo.dmi'
	icon_state = "dildo"
	item_state = "c_tube"
	throwforce = 0
	force = 10
	w_class = 1
	throw_speed = 3
	throw_range = 15
	attack_verb = list("slammed", "bashed", "whipped")

	var/hole = CUM_TARGET_VAGINA
	var/pleasure = 5

/obj/item/weapon/dildo/attack(mob/living/carbon/human/M, mob/living/carbon/human/user)
	var/message = ""
	if(istype(M, /mob/living/carbon/human) && user.zone_selected == "groin" && M.is_nude())
		if (hole == CUM_TARGET_VAGINA && M.has_vagina())
			message = (user == M) ?  "fucks their own pussy with \the [src]" : pick(list("fucks [M] right in the pussy with \the [src]", "jams \the [src] right into [M]"))
		else if (hole == CUM_TARGET_ANUS && M.has_anus())
			message = (user == M) ? "fucks their own ass with \the [src]" : "fucks [M]'s asshole with \the [src]"
	if(message)
		user.visible_message("<font color=purple>[user] [message].</font>")
		M.handle_post_sex(pleasure, null, user)
		playsound(loc, "honk/sound/interactions/bang[rand(4, 6)].ogg", 70, 1, -1)
	else
		return ..()

/obj/item/weapon/dildo/attack_self(mob/user as mob)
	if(hole == CUM_TARGET_VAGINA)
		hole = CUM_TARGET_ANUS
	else
		hole = CUM_TARGET_VAGINA
	user << "<span class='warning'>Hmmm. Maybe we should put it in \a [hole]?</span>"