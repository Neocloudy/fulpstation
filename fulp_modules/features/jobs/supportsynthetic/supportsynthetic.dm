
// *
// Support Synthetic
// A Command/Silicon hybrid role that is designed to fulfill every role with its access and traits.
// Notes and stuff:
// * Synths do not have a job spawn point, they will always come in through the arrivals shuttle
// *

#define JOB_SUPPORT_SYNTHETIC "Synthetic"
#define JOB_DISPLAY_ORDER_SUPPORTSYNTH 36

/datum/job/synthetic/support
	title = JOB_SUPPORT_SYNTHETIC
	description = "Use your abilities such as resilience to help \
		with jobs around the station."
	department_head = list(JOB_RESEARCH_DIRECTOR)
	faction = FACTION_STATION
	total_positions = 3
	spawn_positions = 3
	req_admin_notify = 1
	supervisors = "the Command staff"
	spawn_type = /mob/living/carbon/human/species/synthetic
	exp_requirements = 240
	exp_required_type = EXP_TYPE_SILICON
	exp_granted_type = EXP_TYPE_COMMAND
	config_tag = "SUPPORT_SYNTHETIC"
	outfit = /datum/outfit/job/synthetic/support
	paycheck = PAYCHECK_COMMAND
	paycheck_department = ACCOUNT_SCI
	display_order = JOB_DISPLAY_ORDER_SUPPORTSYNTH
	bounty_types = CIV_JOB_SCI
	departments_list = list(
		/datum/job_department/silicon,
		)
	family_heirlooms = list(/obj/item/storage/medkit/ancient/heirloom)
	mail_goodies = list(
		/obj/item/bodypart/arm/left/synth = 6,
		/obj/item/bodypart/arm/right/synth = 6,
		/obj/item/bodypart/leg/left/synth = 6,
		/obj/item/bodypart/leg/right/synth = 6
	)
	rpg_title = "Spawn"
	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_CAN_BE_INTERN

/datum/outfit/job/synthetic/support
	name = "Support Synthetic"
	jobtype = /datum/job/synthetic/support

	id = /obj/item/card/id/advanced/gold
	id_trim = /datum/id_trim/job/goldsynth
	uniform = /obj/item/clothing/under/rank/synthetic/support
	l_pocket = /obj/item/modular_computer/pda/heads/synthetic
	r_pocket = /obj/item/melee/baton/telescopic
	belt = /obj/item/storage/belt/utility/synth
	ears = /obj/item/radio/headset/heads/synthetic/support
	shoes = /obj/item/clothing/shoes/jackboots

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	box = /obj/item/storage/box/survival
