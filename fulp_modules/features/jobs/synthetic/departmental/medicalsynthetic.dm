
// *
// Medical Synthetic
// A Medical/Silicon hybrid. Uses the Synthetic species but now with less health and more speed.
// Notes and stuff:
// * Synths do not have a job spawn point, they will always come in through the arrivals shuttle
// *

#define JOB_SYNTHETIC_MEDICAL "Medical Synthetic"
#define JOB_DISPLAY_ORDER_MEDSYNTH 37

/datum/job/synthetic/medical
	title = JOB_SYNTHETIC_MEDICAL
	description = "Use your skills to help out as an additional medic."
	department_head = list(JOB_CHIEF_MEDICAL_OFFICER)
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 3
	req_admin_notify = 1
	supervisors = "the Command and Medical staff"
	spawn_type = /mob/living/carbon/human/species/synthetic/modern
	exp_requirements = 240
	exp_required_type = EXP_TYPE_MEDICAL
	exp_granted_type = EXP_TYPE_MEDICAL
	config_tag = "MEDICAL_SYNTHETIC"
	outfit = /datum/outfit/job/synthetic/medical
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_MEDSYNTH
	bounty_types = CIV_JOB_SCI
	departments_list = list(
		/datum/job_department/medical,
		)
	family_heirlooms = list(/obj/item/storage/medkit/ancient/heirloom)
	mail_goodies = list(
		/obj/item/bodypart/arm/left/synth = 6,
		/obj/item/bodypart/arm/right/synth = 6,
		/obj/item/bodypart/leg/left/synth = 6,
		/obj/item/bodypart/leg/right/synth = 6
	)
	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_CAN_BE_INTERN

/datum/outfit/job/synthetic/medical
	name = "Medical Synthetic"
	jobtype = /datum/job/synthetic/medical

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/synthetic/medical
	uniform = /obj/item/clothing/under/rank/medical/scrubs/blue
	back = /obj/item/mod/control/pre_equipped/medical
	backpack_contents = list(
		/obj/item/melee/baton/telescopic = 1,
		/obj/item/modular_computer/pda/heads/synthetic = 1,
		/obj/item/storage/medkit/surgery = 1,
		)
	belt = /obj/item/storage/belt/medical/paramedic
	ears = /obj/item/radio/headset/heads/synthetic/medical
	shoes = /obj/item/clothing/shoes/jackboots

	backpack = null
	satchel = null
	duffelbag = null

	box = /obj/item/storage/box/survival

// Let's set everything on equip
/datum/outfit/job/synthetic/medical/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	H.set_species(/datum/species/synthetic/modern)
	H.mob_surgery_speed_mod = 500 // test surgery
	H.crit_threshold = -30
	H.maxHealth = 125
	H.health = 125
