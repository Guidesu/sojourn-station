/*
		STAT_MEC = 6 For Engi and Mech
		STAT_BIO = 6 For Biomechanist
*/

/datum/category_item/setup_option/background/origin/opifex_mechanist
	name = "Mechanist"
	desc = "You are one of the many opifex trained in the ways of your craft by your scavenger fleet. Like your brothers you have a knack for adapting to new situations and using all things \
	mechanical. Sadly, separated from your fleet you do not have access to the many useful robots that make life so much easier. That said, you always keep your various tools stowed away in a \
	webbing smuggled on your person. As a rank and file you represent the best of the opifex ability and wear your tools with pride."

	restricted_to_species = list(FORM_OPIFEX)

	perks = list(/datum/perk/opifex_backup)
	racial_implants = (/obj/item/organ_module/active/simple/opifex_pouch)
//Mec = 5
	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_VIG = 0,
		STAT_BIO = 0,
		STAT_MEC = 11,
		STAT_COG = 0
	)

/datum/category_item/setup_option/background/origin/opifexbiomech
	name = "Biomechanist"
	desc = "While all opifex are trained in the workings of machines some are reserved for the biological aspect of their respective scavenger fleet. \
			This training is usually towards the goal of maintaining the bio-mechanical augmentations used by the opifex, from installing nano-gates to replacing lost limbs with synthetic copies. \
			The additional biological training, while helpful, does hamper the average opifexes ability to study machines, lessening their ability to quickly adapt to situations and new \
			technology. After all, to the average opifex a biological entity is far less complex and nuanced than even the most basic of robots. Out of habit you always keep your trusty \
			medical webbing stowed on your person with various useful chemicals and devices stored within."

	restricted_to_species = list(FORM_OPIFEX)

	perks = list(/datum/perk/opifex_backup_medical)
	racial_implants = (/obj/item/organ_module/active/simple/opifex_pouch)
//Mec = 5
	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_VIG = 0,
		STAT_BIO = 6,
		STAT_MEC = 5,
		STAT_COG = 0
	)

/datum/category_item/setup_option/background/origin/opifexcombattech
	name = "Combat Technician"
	desc = "Some opifex are assigned the tasks of dealing with the hostile entities aboard ships they loot, be it creatures living on space hulks, machines still defending lost ships, \
			or the crew of a recently boarded ship being mercilessly slaughtered so they can peacefully strip the shuttles tech. Combat technicians favor the use of range weaponry, often \
			times supported by combat drones with which they lead into conflict. Their skills towards repairing and salvaging technology isn't as good as the average opifex, but their concern \
			is only on making areas safe for the lesser technicians to do the grunt labors. You don't take chances though, always making sure to keep your tactical belt smuggled on your person with \
			a spare energy pistol, some manhack grenades, and other various combat tools."

	restricted_to_species = list(FORM_OPIFEX)

	perks = list(/datum/perk/opifex_backup_combat)
	racial_implants = (/obj/item/organ_module/active/simple/opifex_pouch)
//Vig = 5
	stat_modifiers = list(
		STAT_ROB = 0,
		STAT_TGH = 0,
		STAT_VIG = 5,
		STAT_BIO = 0,
		STAT_MEC = 6,
		STAT_COG = 0
	)
