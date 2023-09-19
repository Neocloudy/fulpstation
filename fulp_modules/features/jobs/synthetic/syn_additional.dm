
#define DEPARTMENT_BITFLAG_SYNTHETIC (1<<10)
#define DEPARTMENT_SYNTHETIC "Synthetic Lineup"
#define EXP_TYPE_SYNTHETIC "Synthetic"

/datum/job_department/synthetic
	department_name = DEPARTMENT_SYNTHETIC
	department_bitflags = DEPARTMENT_BITFLAG_SILICON
	department_head = /datum/job/captain
	department_experience_type = EXP_TYPE_SYNTHETIC
	display_order = 8
	label_class = "silicon"
	ui_color = "#c93e6c"
