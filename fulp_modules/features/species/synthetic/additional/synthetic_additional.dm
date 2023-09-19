/proc/synth_name(gender)
	if(gender == MALE)
		return "[pick(GLOB.first_names_male)]-[pick(GLOB.first_names_male)]"
	else
		return "[pick(GLOB.first_names_female)]-[pick(GLOB.first_names_female)]"

/proc/random_unique_synth_name(gender, attempts_to_find_unique_name=10)
	for(var/i in 1 to attempts_to_find_unique_name)
		. = capitalize(lizard_name(gender))

		if(!findname(.))
			break
