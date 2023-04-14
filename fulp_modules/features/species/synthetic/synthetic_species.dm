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
	name = "Second Generation Android"
	id = SPECIES_SYNTHETIC
	species_traits = list(
		NO_DNA_COPY,
		NOTRANSSTING,
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
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_MINDSHIELD,
		TRAIT_QUICKER_CARRY,
		TRAIT_NOGUNS,
		TRAIT_MEDICAL_HUD,
		TRAIT_DIAGNOSTIC_HUD,
		TRAIT_SECURITY_HUD,
		TRAIT_SIGN_LANG,
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
	speedmod = -0.3
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

/datum/species/lizard/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_lizard_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname

/**
 * PREFS STUFF
 */

/datum/species/synthetic/get_species_description()
	return "Externally indistinguishable from human beings, these synthetics \
		fulfill support roles aboard NT stations."

/datum/species/synthetic/get_species_lore()
	return list(
		"Based off Nanotrasen Androids, these second generation units are externally indistinguishable while undamaged from a human and are more resilient. \
		Such units are employed for support jobs around stations due to their resistance to the elements and damage.",
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
			won't take any suffocation damage while in crit, leaving you helpless if you enter hardcrit until you succumb or are repaired \
			or killed.",
		),
	)

	return to_add

/// Adds traits for the Support Synthetic spawn. These can't be removed normally, but that's not required when it's mostly impossible
/// to change the species of a synth.
/datum/species/synthetic/on_species_gain(mob/living/carbon/C, datum/species/old_species, pref_load)
	. = ..()
	ADD_TRAIT(C, TRAIT_ADVANCEDTOOLUSER, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_GENELESS, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_LIMBATTACHMENT, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOBREATH, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOCLONELOSS, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOHUNGER, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOMETABOLISM, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_PIERCEIMMUNE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_IGNOREDAMAGESLOWDOWN, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_RADIMMUNE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_RESISTCOLD, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_RESISTHEAT, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_RESISTLOWPRESSURE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_RESISTHIGHPRESSURE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_TOXIMMUNE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOBLOOD, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_MINDSHIELD, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_NOGUNS, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_STRONG_GRABBER, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_QUICK_BUILD, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_QUICKER_CARRY, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_SHOCKIMMUNE, ROUNDSTART_TRAIT)
	ADD_TRAIT(C, TRAIT_XENO_IMMUNE, ROUNDSTART_TRAIT)
	return ..()

/mob/living/carbon/human/species/synthetic // The actual synth mob, spawned by the support synthetic job
	race = /datum/species/synthetic
	max_stamina = 240
	mob_surgery_speed_mod = 3
	crit_threshold = -50
	hardcrit_threshold = -75 // these can be changed if it's too lenient
	maxHealth = 150
	health = 150
