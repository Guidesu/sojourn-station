// Similar to the psionic tumor, this organ give people abilities.
/obj/item/organ/internal/natural_fleshy_core
	name = "fleshy mutated core"
	max_damage = 80
	desc = "An organ or naturally given for abhumans and humans that had parents with it or carefully genetically built for someone who wished gene modding or extra genetic make-up. It is right where the aorta goes to the brain and provides unique abilities depending on where said person is from, how they were raised, and how their genes were cultivated."
	organ_efficiency = list(BP_MUTATED_CORE = 300)
	parent_organ_base = BP_CHEST // It's literally a part of you
	icon_state = "nanogate" //TODO: Replace this with a proper sprite.
	force = 1
	w_class = ITEM_SIZE_SMALL
	specific_organ_size = 1
	throwforce = 1
	throw_speed = 3
	throw_range = 5
	origin_tech = list(TECH_BIO = 20)
	matter = list(MATERIAL_BIOMATTER = 40)
	attack_verb = list("attacked", "slapped", "whacked")
	price_tag = 12000
	var/mutator_points = 15
	var/mutator_cost
	var/list/perk_list = list() //List of activated perks for later removal
	min_broken_damage = 10

	owner_verbs = list(
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_antenna,
		// Creation and upgrade of the bot

		/obj/item/organ/internal/natural_fleshy_core/proc/create_nanobot,

		// Upgrades of the user.
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_stats,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_regen,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_muscle,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_armor,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_chem,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_food_storage,
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_metal_drinker,
		// Rig Upgrades
		/obj/item/organ/internal/natural_fleshy_core/proc/nanite_rig

		)

// organ uses a slightly more potent eletrical signals to power the brain.
/obj/item/organ/internal/natural_fleshy_core/emp_act(severity)
	..()
	switch (severity)
		if(1)
			owner.apply_effect(1, AGONY)
		if(2)
			owner.apply_effect(2, AGONY)
		if(3)
			owner.apply_effect(3, AGONY)

// If the organ goes below is theshold it dies. And does bad effects.
/obj/item/organ/internal/natural_fleshy_core/die()
	if(status & ORGAN_BROKEN)
		var/obj/item/organ/internal/targeted_organ
		to_chat(owner, SPAN_DANGER("You are in absolute agony as you get totally disorientated!"))
		var/list/listed_organs  = list("brain",OP_EYES,"heart")
		targeted_organ = owner.random_organ_by_process(pick(listed_organs))
		targeted_organ.damage += rand (1,3)
		owner.apply_effect(15, AGONY)
		addtimer(CALLBACK(src, .proc/die), 1 MINUTES, TIMER_STOPPABLE)
