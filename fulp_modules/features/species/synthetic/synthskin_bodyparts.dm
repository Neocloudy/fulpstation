/**
* Synthskin limbs. These are human-looking limbs that have the damage overlays of robotic limbs.
* Based off of robot_bodyparts.dm
* Limbs are based off the human greyscale limbs but with special names to allow them to be named synthskin.
*/


#define ROBOTIC_LIGHT_BRUTE_MSG "marred"
#define ROBOTIC_MEDIUM_BRUTE_MSG "dented"
#define ROBOTIC_HEAVY_BRUTE_MSG "falling apart"

#define ROBOTIC_LIGHT_BURN_MSG "scorched"
#define ROBOTIC_MEDIUM_BURN_MSG "charred"
#define ROBOTIC_HEAVY_BURN_MSG "smoldering"

//For ye whom may venture here, split up arm / hand sprites are formatted as "l_hand" & "l_arm".
//The complete sprite (displayed when the limb is on the ground) should be named "borg_l_arm".
//Failure to follow this pattern will cause the hand's icons to be missing due to the way get_limb_icon() works to generate the mob's icons using the aux_zone var.

/obj/item/bodypart/arm/left/synth
	name = "synthskin left arm"
	desc = "A seemingly organic limb that looks like a completely pale human limb at first, but the stump at the top is a dead giveaway that it belonged to a <b>Synthetic</b>."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_l_arm"
	body_zone = BODY_ZONE_L_ARM
	body_part = ARM_LEFT
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)
	disabling_threshold_percentage = 0

/obj/item/bodypart/arm/right/synth
	name = "synthskin right arm"
	desc = "A seemingly organic limb that looks like a completely pale human limb at first, but the stump at the top is a dead giveaway that it belonged to a <b>Synthetic</b>."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_r_arm"
	body_zone = BODY_ZONE_R_ARM
	body_part = ARM_RIGHT
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1
	disabling_threshold_percentage = 0

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)

/obj/item/bodypart/leg/left/synth
	name = "synthskin left leg"
	desc = "A seemingly organic limb that looks like a completely pale human limb at first, but the stump at the top is a dead giveaway that it belonged to a <b>Synthetic</b>."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_l_leg"
	body_zone = BODY_ZONE_L_LEG
	body_part = LEG_LEFT
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1
	disabling_threshold_percentage = 0

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)

/obj/item/bodypart/leg/right/synth
	name = "synthskin right leg"
	desc = "A seemingly organic limb that looks like a completely pale human limb at first, but the stump at the top is a dead giveaway that it belonged to a <b>Synthetic</b>."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_r_leg"
	body_zone = BODY_ZONE_R_LEG
	body_part = LEG_RIGHT
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1
	disabling_threshold_percentage = 0

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)

/obj/item/bodypart/chest/synth
	name = "synthskin torso"
	desc = "A heavily reinforced case containing a mess of electrodes, with space for a standard synth heart."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_chest"
	body_zone = BODY_ZONE_CHEST
	body_part = CHEST
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)



/obj/item/bodypart/head/synth
	name = "synthskin head"
	desc = "A standard head. Looks human enough until you see the mess of electrodes for a neck stub."
	icon = 'fulp_modules/features/species/icons/mob/bodyparts.dmi'
	icon_greyscale = 'fulp_modules/features/species/icons/mob/bodyparts_greyscale.dmi'
	icon_state = "synthskin_head"
	body_zone = BODY_ZONE_HEAD
	body_part = HEAD
	limb_id = LIMB_ID_SYNTHSKIN
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ROBOTIC
	change_exempt_flags = BP_BLOCK_CHANGE_SPECIES
	dmg_overlay_type = "robotic"

	brute_reduction = 2
	burn_reduction = 1

	light_brute_msg = ROBOTIC_LIGHT_BRUTE_MSG
	medium_brute_msg = ROBOTIC_MEDIUM_BRUTE_MSG
	heavy_brute_msg = ROBOTIC_HEAVY_BRUTE_MSG

	light_burn_msg = ROBOTIC_LIGHT_BURN_MSG
	medium_burn_msg = ROBOTIC_MEDIUM_BURN_MSG
	heavy_burn_msg = ROBOTIC_HEAVY_BURN_MSG

	damage_examines = list(BRUTE = ROBOTIC_BRUTE_EXAMINE_TEXT, BURN = ROBOTIC_BURN_EXAMINE_TEXT, CLONE = DEFAULT_CLONE_EXAMINE_TEXT)


#undef ROBOTIC_LIGHT_BRUTE_MSG
#undef ROBOTIC_MEDIUM_BRUTE_MSG
#undef ROBOTIC_HEAVY_BRUTE_MSG

#undef ROBOTIC_LIGHT_BURN_MSG
#undef ROBOTIC_MEDIUM_BURN_MSG
#undef ROBOTIC_HEAVY_BURN_MSG
