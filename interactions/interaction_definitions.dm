/datum/interaction/bow
	command = "bow"
	description = "�����������."
	max_distance = 25
	simple_message = "USER ��������� TARGET."

/datum/interaction/smile
	command = "smile"
	description = "����������."
	simple_message = "USER ��������� ����� �� TARGET."
	require_user_mouth = 1
	max_distance = 25

/datum/interaction/wave
	command = "wave"
	description = "��������."
	simple_message = "USER ����� TARGET."
	require_user_hands = 1
	max_distance = 25

/datum/interaction/handshake
	command = "handshake"
	description = "�������������."
	simple_message = "USER shakes the hand of TARGET."
	require_user_hands = 1
	needs_physical_contact = 1

/datum/interaction/pat
	command = "pat"
	description = "��������� �� �����."
	simple_message = "USER ������� TARGET �� �����."
	require_user_hands = 1
	needs_physical_contact = 1

/datum/interaction/kiss
	command = "kiss"
	description = "����������."
	require_user_mouth = 1
	simple_message = "USER ������ TARGET."
	write_log_user = "kissed"
	write_log_target = "was kissed by"
	needs_physical_contact = 1

datum/interaction/kiss/evaluate_user(var/mob/user, var/silent=1)
	if(..())
		if(!user.has_lips())
			if(!silent) user << "<span class='warning'>� ��� ��� ���!</span>"
			return 0
		return 1
	return 0

/datum/interaction/hug
	command = "hug"
	description = "������."
	require_user_mouth = 1
	simple_message = "USER �������� TARGET."
	interaction_sound = 'honk/sound/interactions/hug.ogg'
	needs_physical_contact = 1

/datum/interaction/cheer
	command = "cheer"
	description = "����������."
	require_user_mouth = 1
	simple_message = "USER ������������ TARGET!"

/datum/interaction/highfive
	command = "highfive"
	description = "���� ����."
	require_user_mouth = 1
	simple_message = "USER ��� ������ TARGET!"
	interaction_sound = 'honk/sound/interactions/slap.ogg'
	needs_physical_contact = 1

/datum/interaction/headpat
	command = "headpat"
	description = "��������� �� ������."
	require_user_hands = 1
	simple_message = "USER ������� TARGET �� ������!"
	needs_physical_contact = 1

/datum/interaction/salute
	command = "salute"
	description = "������ �����!"
	require_user_hands = 1
	simple_message = "USER �������� TARGET!"
	max_distance = 25

/datum/interaction/fistbump
	command = "fistbump"
	description = "�������!"
	require_user_hands = 1
	simple_message = "USER ������ ������� � TARGET! � ��!"
	needs_physical_contact = 1

/datum/interaction/pinkypromise
	command = "pinkypromise"
	description = "�����-������!"
	require_user_hands = 1
	simple_message = "<b>USER</b> says, ''���� �� ������, ��� ������ ����! ������� ��� ����� � ����!''"
	needs_physical_contact = 1

/datum/interaction/bird
	command = "bird"
	description = "�������� ������� �����!"
	require_user_hands = 1
	simple_message = "USER ���������� ������� ����� TARGET!"
	max_distance = 25

/datum/interaction/holdhand
	command = "holdhand"
	description = "��������� �� ����."
	require_user_hands = 1
	simple_message = "USER ������ TARGET �� ����."
	max_distance = 25
	needs_physical_contact = 1
	max_distance = 25

/*/datum/interaction/rockpaperscissors
	command = "handplay"
	description = "������-�������-������!"
	require_user_hands = 1
	simple_message = pick("USER ������� � ������-�������-������ � TARGET, ����� ������!","USER ������� � ������-�������-������ � TARGET, ������ ������!", "USER ������� � ������-�������-������ � TARGET, ������ �������!")
	needs_physical_contact = 1 */