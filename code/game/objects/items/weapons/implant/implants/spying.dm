/obj/item/implanter/spying
	name = "implanter (S)"
	implant = /obj/item/implant/spying


/obj/item/implant/spying
	name = "spying implant"
	icon_state = "implant_uplink"
	is_legal = FALSE
	var/timer
	var/datum/mind/owner
	cruciform_resist = TRUE

	overlay_icon = "uplink"

/obj/item/implant/spying/attack_self(mob/user)
	if(owner == user.mind)
		return
	owner = user.mind
	to_chat(user, "You claim \the [src].")

/obj/item/implant/spying/on_install()
	timer = addtimer(CALLBACK(src, PROC_REF(report)), 1 MINUTES, TIMER_STOPPABLE)

/obj/item/implant/spying/on_uninstall()
	deltimer(timer)

/obj/item/implant/spying/proc/report()
	if(!wearer)
		return
	for(var/datum/antag_contract/implant/C in GLOB.various_antag_contracts)
		if(C.completed)
			continue
		C.check(src)
	cruciform_resist = FALSE
