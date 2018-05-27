/*
 	Miauw's big Say() rewrite.
	This file has the basic go level speech procs.
	And the base of the send_speech() proc, which is the core of saycode.
*/
var/list/freqtospan = list(
	"1351" = "sciradio",
	"1355" = "medradio",
	"1357" = "engradio",
	"1347" = "suppradio",
	"1349" = "servradio",
	"1359" = "secradio",
	"1353" = "comradio",
	"1447" = "aiprivradio",
	"1213" = "syndradio",
	"1337" = "centcomradio"
	)

/go/proc/say(message)
	if(!can_speak())
		return
	if(message == "" || !message)
		return
	var/list/spans = get_spans()
	send_speech(message, 7, src, , spans)

/go/proc/Hear(message, go/speaker, message_langs, raw_message, radio_freq, list/spans)
	return

/go/proc/can_speak()
	return 1

/go/proc/send_speech(message, range = 7, obj/source = src, bubble_type, list/spans)
	var/rendered = compose_message(src, languages_spoken, message, , spans)
	for(var/go/AM in get_hearers_in_view(range, src))
		AM.Hear(rendered, src, languages_spoken, message, , spans)

//To get robot span classes, stuff like that.
/go/proc/get_spans()
	return list()

/go/proc/compose_message(go/speaker, message_langs, raw_message, radio_freq, list/spans)
	//This proc uses text() because it is faster than appending strings. Thanks BYOND.
	//Basic span
	var/spanpart1 = "<span class='[radio_freq ? get_radio_span(radio_freq) : "game say"]'>"
	//Start name span.
	var/spanpart2 = "<span class='name'>"
	//Radio freq/name display
	var/freqpart = radio_freq ? "\[[get_radio_name(radio_freq)]\] " : ""
	//Speaker name
	var/namepart =  "[speaker.GetVoice()][speaker.get_alt_name()]"
	//End name span.
	var/endspanpart = "</span>"
	//Message
	var/messagepart = " <span class='message'>[lang_treat(speaker, message_langs, raw_message, spans)]</span></span>"

	return "[spanpart1][spanpart2][freqpart][compose_track_href(speaker, namepart)][namepart][compose_job(speaker, message_langs, raw_message, radio_freq)][endspanpart][messagepart]"

/go/proc/compose_track_href(go/speaker, message_langs, raw_message, radio_freq)
	return ""

/go/proc/compose_job(go/speaker, message_langs, raw_message, radio_freq)
	return ""

/go/proc/say_quote(input, list/spans=list())
	if(!input)
		return "says, \"...\""	//not the best solution, but it will stop a large number of runtimes. The cause is somewhere in the Tcomms code
	var/ending = copytext(input, length(input))
	if(copytext(input, length(input) - 1) == "!!")
		spans |= SPAN_YELL
		return "[verb_yell], \"[attach_spans(input, spans)]\""
	input = attach_spans(input, spans)
	if(ending == "?")
		return "[verb_ask], \"[input]\""
	if(ending == "!")
		return "[verb_exclaim], \"[input]\""

	return "[verb_say], \"[input]\""

/go/proc/lang_treat(go/speaker, message_langs, raw_message, list/spans)
	if(languages_understood & message_langs)
		var/go/AM = speaker.GetSource()
		if(AM) //Basically means "if the speaker is virtual"
			if(AM.verb_say != speaker.verb_say || AM.verb_ask != speaker.verb_ask || AM.verb_exclaim != speaker.verb_exclaim || AM.verb_yell != speaker.verb_yell) //If the saymod was changed
				return speaker.say_quote(raw_message, spans)
			return AM.say_quote(raw_message, spans)
		else
			return speaker.say_quote(raw_message, spans)
	else if((message_langs & HUMAN) || (message_langs & RATVAR)) //it's human or ratvar language
		var/go/AM = speaker.GetSource()
		if(message_langs & HUMAN)
			raw_message = stars(raw_message)
		if(message_langs & RATVAR)
			raw_message = text2ratvar(raw_message)
		if(AM)
			return AM.say_quote(raw_message, spans)
		else
			return speaker.say_quote(raw_message, spans)
	else if(message_langs & MONKEY)
		return "chimpers."
	else if(message_langs & ALIEN)
		return "hisses."
	else if(message_langs & ROBOT)
		return "beeps rapidly."
	else if(message_langs & DRONE)
		return "chitters."
	else if(message_langs & SWARMER)
		return "hums."
	else
		return "makes a strange sound."

/proc/get_radio_span(freq)
	var/datum/f13_faction/faction = get_faction_datum(get_faction_by_freq(freq))
	if(faction)
		return faction.id
	var/returntext = freqtospan["[freq]"]
	if(returntext)
		return returntext
	return "radio"

/proc/get_radio_name(freq)
	var/datum/f13_faction/faction = get_faction_datum(get_faction_by_freq(freq))
	if(faction)
		return faction.name
	var/returntext = radiochannelsreverse["[freq]"]
	if(returntext)
		return returntext
	return "[copytext("[freq]", 1, 4)].[copytext("[freq]", 4, 5)]"

/proc/attach_spans(input, list/spans)
	return "[message_spans_start(spans)][input]</span>"

/proc/message_spans_start(list/spans)
	var/output = "<span class='"
	for(var/S in spans)
		output = "[output][S] "
	output = "[output]'>"
	return output

/proc/say_test(text)
	var/ending = copytext(text, length(text))
	if (ending == "?")
		return "1"
	else if (ending == "!")
		return "2"
	return "0"

/go/proc/GetVoice()
	return name

/go/proc/IsVocal()
	return 1

/go/proc/get_alt_name()

//HACKY VIRTUALSPEAKER STUFF BEYOND THIS POINT
//these exist mostly to deal with the AIs hrefs and job stuff.

/go/proc/GetJob() //Get a job, you lazy butte

/go/proc/GetSource()

/go/proc/GetRadio()

//VIRTUALSPEAKERS
/go/virtualspeaker
	var/job
	var/go/source
	var/obj/item/device/radio/radio

/go/virtualspeaker/GetJob()
	return job

/go/virtualspeaker/GetSource()
	return source

/go/virtualspeaker/GetRadio()
	return radio

/go/virtualspeaker/Destroy()
	..()
	return QDEL_HINT_PUTINPOOL
