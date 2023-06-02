/datum/mod_theme/synthetic
	name = "synthetic"
	desc = "A complex suit designed by NanoTrasen for Synthetics, it has utilities and protection for any situation."
	extended_desc = "Part of NanoTrasen's 2-year project to create the Synthetic and begin its service was fitting them with important utilities and protection \
		for their service. The Synthetic MODsuit is a complex unit designed for utility and protection for active Synthetics. \
		The suit has features and protection for every situation that a Synthetic will come running into as part of its duties. \
		The plating has an easy to notice cyan and blue color scheme with shock, fire and acid-proof lining, fitted with protective materials \
		to allow for high protection and an actuator for minimum slowdown. \
		Make the corporation proud, they put a lot of effort into you!"
	default_skin = "debug"
	armor_type = /datum/armor/mod_theme_synth
	resistance_flags = FIRE_PROOF|ACID_PROOF
	atom_flags = PREVENT_CONTENTS_EXPLOSION_1
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	complexity_max = DEFAULT_MAX_COMPLEXITY + 12
	siemens_coefficient = 0
	slowdown_inactive = 1
	slowdown_active = 0.25
	allowed_suit_storage = list(
		/obj/item/gun,
	)
	skins = list(
		"debug" = list(
			HELMET_FLAGS = list(
				UNSEALED_LAYER = null,
				UNSEALED_CLOTHING = SNUG_FIT|THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE|BLOCK_GAS_SMOKE_EFFECT|HEADINTERNALS,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR|HIDEEARS|HIDEHAIR|HIDESNOUT,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE,
				UNSEALED_COVER = HEADCOVERSMOUTH,
				SEALED_COVER = HEADCOVERSEYES|PEPPERPROOF,
			),
			CHESTPLATE_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				SEALED_INVISIBILITY = HIDEJUMPSUIT,
			),
			GAUNTLETS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
			BOOTS_FLAGS = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
		),
	)

/datum/armor/mod_theme_synth
	melee = 35
	bullet = 35
	laser = 35
	energy = 35
	bomb = 100
	bio = 100
	fire = 100
	acid = 100

/obj/item/mod/module/storage/large_capacity/synth
	icon_state = "storage_large"
	max_combined_w_class = 32
	max_items = 18

/obj/item/mod/control/pre_equipped/synth
	theme = /datum/mod_theme/synthetic
	applied_core = /obj/item/mod/core/standard
	applied_cell = /obj/item/stock_parts/cell/bluespace
	applied_modules = list(
		/obj/item/mod/module/storage/large_capacity/synth,
		/obj/item/mod/module/welding,
		/obj/item/mod/module/flashlight,
		/obj/item/mod/module/rad_protection,
		/obj/item/mod/module/magboot,
		/obj/item/mod/module/visor/medhud,
		/obj/item/mod/module/visor/meson,
		/obj/item/mod/module/health_analyzer,
		/obj/item/mod/module/criminalcapture/patienttransport,
		/obj/item/mod/module/defibrillator,
		/obj/item/mod/module/surgical_processor,
		/obj/item/mod/module/reagent_scanner,
		/obj/item/mod/module/jetpack/advanced,
	)
	default_pins = list(
		/obj/item/mod/module/jetpack/advanced,
		/obj/item/mod/module/defibrillator,
		/obj/item/mod/module/surgical_processor,
		/obj/item/mod/module/visor/medhud,
		/obj/item/mod/module/visor/meson,
		/obj/item/mod/module/flashlight,
	)
