// Synthetic
// An android but externally looks like a human and with many advantages

// Synth Defines
// Stats
#define SUPSYNTH_STAMINA = 240
#define SUPSYNTH_SPEEDMOD = 2
#define SUPSYNTH_HEALTH = 150
#define SUPSYN_CRIT = -50
#define SUPSYN_HARDCRIT = -75

/datum/species/synthetic
	name = "Synthetic"
	id = SPECIES_SYNTHETIC
	species_traits = list(
		NO_DNA_COPY,
		NOTRANSSTING,
		NOZOMBIE,
		NO_UNDERWEAR,
	)
	inherent_traits = list(
		TRAIT_CAN_USE_FLIGHT_POTION,
		TRAIT_GENELESS,
		TRAIT_LIMBATTACHMENT,
		TRAIT_NOBREATH,
		TRAIT_NOCLONELOSS,
		TRAIT_NOHUNGER,
		TRAIT_NOMETABOLISM,
		TRAIT_PIERCEIMMUNE,
		TRAIT_IGNOREDAMAGESLOWDOWN,
		TRAIT_RADIMMUNE,
		TRAIT_RESISTCOLD,
		TRAIT_RESISTHEAT,
		TRAIT_RESISTLOWPRESSURE,
		TRAIT_RESISTHIGHPRESSURE,
		TRAIT_TOXIMMUNE,
		TRAIT_NOBLOOD,
		TRAIT_NOCRITDAMAGE,
		TRAIT_NOGUNS,
		TRAIT_NOFLASH,
		TRAIT_NOHARDCRIT,
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_MINDSHIELD,
		TRAIT_QUICKER_CARRY,
		TRAIT_SECURITY_HUD,
		TRAIT_SHOCKIMMUNE,
		TRAIT_XENO_IMMUNE,
	)

	inherent_biotypes = MOB_ROBOTIC|MOB_HUMANOID
	meat = null
	mutanttongue = /obj/item/organ/internal/tongue/robot
	mutantstomach = null
	mutantheart = null // Having normal organs makes no real difference in gameplay, also the actual synthetic mob is not generally spawned.
	mutantliver = null
	mutantlungs = null
	species_language_holder = /datum/language_holder/synthetic
	wing_types = list(/obj/item/organ/external/wings/functional/robotic)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/synth,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/synth,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/synth,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/synth,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/synth,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/synth,
	)
	examine_limb_id = SPECIES_HUMAN


/*
/datum/species/synthetic/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_synth_name(gender)

	var/randname = synth_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname
*/
/**
 * PREFS STUFF
 */

/datum/species/synthetic/get_species_description()
	return "These are the result of a 2-year project to create a more powerful android, dubbed Synthetics. These Synthetics \
		fulfill support roles aboard NT stations."

/datum/species/synthetic/get_species_lore()
	return list(
		"Based off Nanotrasen Androids while being more powerful and resilient, \
		these units are pale, human-looking androids - named Synthetics - commonly seen serving onboard NanoTrasen stations. \
		Their most common use is typically on stations performing medical service thanks to their incredible medical knowledge, \
		aswell as exploring space around NanoTrasen stations, \
		but also have seen slightly less frequent use in damage control or engineering operations, security and many other uses thanks to their resistance to \
		elements, damage and inhuman skills in all fields.",
	)

/datum/species/synthetic/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		//Positive
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "shield-alt",
			SPECIES_PERK_NAME = "Resilient",
			SPECIES_PERK_DESC = "Synthetics by default have 150 maximum health and some resistance on their limbs. \
			You're also immune to almost everything that would hurt a human- stuns, brute and burn still hurt.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "bolt",
			SPECIES_PERK_NAME = "Lenient Critical Condition",
			SPECIES_PERK_DESC = "Synthetics won't enter soft critical until -50, and hard critical until -75. You also \
			won't take any suffocation damage while in crit.",
		),
	)

	return to_add

/mob/living/carbon/human/species/synthetic // Spawned by the Support Synthetic job.
	race = /datum/species/synthetic
	max_stamina = 180
	mob_surgery_speed_mod = 3
	crit_threshold = -30
	hardcrit_threshold = -75 // leaving this here for now
	maxHealth = 150
	health = 150

/datum/species/synthetic/modern // A modern synthetic that sacrifices some luxuries to aid them in SPEED and other stuff. Used by the Medical and Deputy synthetics.
	name = "Modern Synthetic"
	id = SPECIES_SYNTHETIC_MODERN
	inherent_traits = list(
		TRAIT_LIMBATTACHMENT,
		TRAIT_NOBREATH,
		TRAIT_NOCLONELOSS,
		TRAIT_NOHUNGER,
		TRAIT_NOMETABOLISM,
		TRAIT_PIERCEIMMUNE,
		TRAIT_IGNOREDAMAGESLOWDOWN,
		TRAIT_RADIMMUNE,
		TRAIT_RESISTCOLD,
		TRAIT_RESISTHEAT,
		TRAIT_RESISTLOWPRESSURE,
		TRAIT_RESISTHIGHPRESSURE,
		TRAIT_TOXIMMUNE,
		TRAIT_NOBLOOD,
		TRAIT_NOCRITDAMAGE,
		TRAIT_NOGUNS,
		TRAIT_NOHARDCRIT,
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_MINDSHIELD,
		TRAIT_QUICKER_CARRY,
		TRAIT_MEDICAL_HUD,
		TRAIT_XENO_IMMUNE,
	)

	speedmod = -0.2 // faster than humans at the cost of health

/mob/living/carbon/human/species/synthetic/modern // Spawned by the Support Synthetic job.
	race = /datum/species/synthetic/modern
	mob_surgery_speed_mod = 500
	crit_threshold = -30
	hardcrit_threshold = -75 // leaving this here for now
	maxHealth = 125
	health = 125 // modern synthetics sacrifice health for speed and skills
