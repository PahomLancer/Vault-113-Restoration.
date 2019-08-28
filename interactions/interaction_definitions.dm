/datum/interaction/bow
	command = "bow"
	description = "Поклониться."
	max_distance = 25
	simple_message = "USER кланяется TARGET."

/datum/interaction/smile
	command = "smile"
	description = "Улыбнуться."
	simple_message = "USER улыбается глядя на TARGET."
	require_user_mouth = 1
	max_distance = 25

/datum/interaction/wave
	command = "wave"
	description = "Помахать."
	simple_message = "USER машет TARGET."
	require_user_hands = 1
	max_distance = 25

/datum/interaction/handshake
	command = "handshake"
	description = "Поздороваться."
	simple_message = "USER shakes the hand of TARGET."
	require_user_hands = 1
	needs_physical_contact = 1

/datum/interaction/pat
	command = "pat"
	description = "Похлопать по плечу."
	simple_message = "USER хлопает TARGET по плечу."
	require_user_hands = 1
	needs_physical_contact = 1

/datum/interaction/kiss
	command = "kiss"
	description = "Поцеловать."
	require_user_mouth = 1
	simple_message = "USER целует TARGET."
	write_log_user = "kissed"
	write_log_target = "was kissed by"
	needs_physical_contact = 1

datum/interaction/kiss/evaluate_user(var/mob/user, var/silent=1)
	if(..())
		if(!user.has_lips())
			if(!silent) user << "<span class='warning'>У вас нет губ!</span>"
			return 0
		return 1
	return 0

/datum/interaction/hug
	command = "hug"
	description = "Обнять."
	require_user_mouth = 1
	simple_message = "USER обнимает TARGET."
	interaction_sound = 'honk/sound/interactions/hug.ogg'
	needs_physical_contact = 1

/datum/interaction/cheer
	command = "cheer"
	description = "Подбодрить."
	require_user_mouth = 1
	simple_message = "USER подбадривает TARGET!"

/datum/interaction/highfive
	command = "highfive"
	description = "Дать пять."
	require_user_mouth = 1
	simple_message = "USER даёт пятюню TARGET!"
	interaction_sound = 'honk/sound/interactions/slap.ogg'
	needs_physical_contact = 1

/datum/interaction/headpat
	command = "headpat"
	description = "Похлопать по голове."
	require_user_hands = 1
	simple_message = "USER хлопает TARGET по голове!"
	needs_physical_contact = 1

/datum/interaction/salute
	command = "salute"
	description = "Отдать честь!"
	require_user_hands = 1
	simple_message = "USER салютует TARGET!"
	max_distance = 25

/datum/interaction/fistbump
	command = "fistbump"
	description = "Брофист!"
	require_user_hands = 1
	simple_message = "USER сделал брофист с TARGET! О да!"
	needs_physical_contact = 1

/datum/interaction/pinkypromise
	command = "pinkypromise"
	description = "Пинки-клятва!"
	require_user_hands = 1
	simple_message = "<b>USER</b> says, ''Руку на сердце, без лишних фраз! Пирожок мне прямо в глаз!''"
	needs_physical_contact = 1

/datum/interaction/bird
	command = "bird"
	description = "Показать средний палец!"
	require_user_hands = 1
	simple_message = "USER показывает средний палец TARGET!"
	max_distance = 25

/datum/interaction/holdhand
	command = "holdhand"
	description = "Подержать за руку."
	require_user_hands = 1
	simple_message = "USER держит TARGET за руку."
	max_distance = 25
	needs_physical_contact = 1
	max_distance = 25

/*/datum/interaction/rockpaperscissors
	command = "handplay"
	description = "Камень-ножницы-Бумага!"
	require_user_hands = 1
	simple_message = pick("USER поиграл в Камень-Ножницы-Бумага с TARGET, выпал Камень!","USER поиграл в Камень-Ножницы-Бумага с TARGET, выпала бумага!", "USER поиграл в Камень-Ножницы-Бумага с TARGET, выпали Ножницы!")
	needs_physical_contact = 1 */