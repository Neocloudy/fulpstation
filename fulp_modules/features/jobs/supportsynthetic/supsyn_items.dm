
// Items and defines for the Synthetic job.

/obj/item/modular_computer/pda/heads/synthetic
	name = "synthetic PDA"
	greyscale_config = /datum/greyscale_config/tablet/head
	greyscale_colors = "#67A364#a92323"
	inserted_item = /obj/item/pen/fountain

/obj/item/card/id/advanced/synthetic/support
	name = "\improper Support Synthetic ID"
	desc = "A blue ID card. It has all the access, <i>you in particular</i> likely shouldn't have it."
	icon_state = "card_centcom"
	assigned_icon_state = "assigned_centcom"
	wildcard_slots = WILDCARD_LIMIT_SILVER

/datum/id_trim/job/goldsynth
	assignment = "Synthetic"
	intern_alt_name = "Intern Synthetic"
	trim_state = "trim_janitor"
	department_color = COLOR_COMMAND_BLUE
	subdepartment_color = COLOR_COMMAND_BLUE
	department_state = "departmenthead"
	sechud_icon_state = SECHUD_CAPTAIN
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		)
	job = /datum/job/synthetic/support

/// Synthetics have all access
/datum/id_trim/job/goldsynth/New()
	extra_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_COMMON) + SSid_access.get_flag_access_list(ACCESS_FLAG_COMMAND))
	extra_wildcard_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_PRV_COMMAND) + SSid_access.get_flag_access_list(ACCESS_FLAG_CAPTAIN))
	minimal_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_COMMON) + SSid_access.get_flag_access_list(ACCESS_FLAG_COMMAND))
	minimal_wildcard_access |= (SSid_access.get_flag_access_list(ACCESS_FLAG_PRV_COMMAND) + SSid_access.get_flag_access_list(ACCESS_FLAG_CAPTAIN))

	return ..()

/datum/id_trim/job/syntheticsupport
	assignment = "Support Synthetic"
	trim_state = "trim_janitor"
	department_color = COLOR_CENTCOM_BLUE
	subdepartment_color = COLOR_SERVICE_LIME
	job = /datum/job/synthetic/support
/datum/id_trim/job/syntheticsupport/New()
	. = ..()
	access = SSid_access.get_region_access_list(list(REGION_ALL_STATION))

/obj/item/radio/headset/heads/synthetic/support
	name = "\proper support synth headset"
	desc = "The headset of the synthetic."
	icon_state = "com_headset"
	worn_icon_state = "com_headset"
	keyslot = /obj/item/encryptionkey/heads/captain

/obj/item/clothing/under/rank/synthetic/support
	icon = 'icons/obj/clothing/under/centcom.dmi'
	worn_icon = 'icons/mob/clothing/under/centcom.dmi'
	name = "\improper Synthetic turtleneck suit"
	desc = "A casual, yet refined green turtleneck, used by Support Synthetics. It's based off the CentCom Officer turtleneck."
	icon_state = "officer"
	inhand_icon_state = "dg_suit"
	alt_covers_chest = TRUE

/obj/item/clothing/gloves/color/synthetic
	name = "synthetic gloves"
	desc = "A pair of gloves. They are insulated and fire-resistant."
	siemens_coefficient = 0
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_TEMP_PROTECT
	icon_state = "green"
	greyscale_colors = "#346d3d"

/obj/item/storage/belt/utility/synth
	name = "\improper synthetic toolbelt" // based off chief engineer belt
	desc = "A modest toolbelt issued to Synthetics."
	icon_state = "utility_ce"
	inhand_icon_state = "utility_ce"
	worn_icon_state = "utility_ce"
	preload = TRUE

/obj/item/storage/belt/utility/synth/PopulateContents()
	SSwardrobe.provide_type(/obj/item/screwdriver/power, src)
	SSwardrobe.provide_type(/obj/item/crowbar/power, src)
	SSwardrobe.provide_type(/obj/item/weldingtool/experimental, src)//This can be changed if this is too much
	SSwardrobe.provide_type(/obj/item/multitool, src)
	SSwardrobe.provide_type(/obj/item/stack/cable_coil, src)
	SSwardrobe.provide_type(/obj/item/extinguisher/mini, src)
	SSwardrobe.provide_type(/obj/item/analyzer, src)

/obj/item/storage/belt/utility/synth/get_types_to_preload()
	var/list/to_preload = list()
	to_preload += /obj/item/screwdriver/power
	to_preload += /obj/item/crowbar/power
	to_preload += /obj/item/weldingtool/experimental
	to_preload += /obj/item/multitool
	to_preload += /obj/item/stack/cable_coil
	to_preload += /obj/item/extinguisher/mini
	to_preload += /obj/item/analyzer
	return to_preload
