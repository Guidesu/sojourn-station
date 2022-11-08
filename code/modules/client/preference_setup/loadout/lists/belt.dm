/datum/gear/belt
	display_name = "general belt"
	path = /obj/item/storage/belt
	slot = slot_belt
	sort_category = "Utility belts"
	cost = 4

/datum/gear/belt/tool
	display_name = "tool belt"
	path = /obj/item/storage/belt/utility
	cost = 2

/datum/gear/belt/mkbelt
	display_name = "handmade tool belt"
	path = /obj/item/storage/belt/utility/handmade
	cost = 2

/datum/gear/belt/nt_belt
	display_name = "Absolutism utility belt"
	path = /obj/item/storage/belt/utility/neotheology
	allowed_roles = list("Prime","Vector")
	cost = 2

/datum/gear/belt/nt_belt
	display_name = "Absolutism tactical belt"
	path = /obj/item/storage/belt/security/neotheology
	allowed_roles = list("Prime","Vector")
	cost = 3


/datum/gear/belt/mkbelt
	display_name = "Medical belt, Selection EMT / Doctor"
	path = /obj/item/storage/belt/medical
	allowed_roles = list("Soteria Doctor","Soteria Biolab Officer","Soteria Lifeline Technician")
	cost = 1
	flags = GEAR_HAS_TYPE_SELECTION



