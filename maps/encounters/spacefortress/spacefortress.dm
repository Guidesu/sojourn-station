#include "spacefortress.dmm"

//MINING-1 // CLUSTER
/obj/effect/overmap/sector/fortress
	name = "unknown spatial phenomenon"
	desc = "An abandoned space fortress, carved inside an asteroid. Might be a hundred years old."
	generic_waypoints = list(
		"nav_fortress_1",
		"nav_fortress_2"
	)
	known = 1

	name_stages = list("abandoned fortress", "unknown object", "unknown spatial phenomenon")
	icon_stages = list("os_fortress", "object", "poi")

/obj/effect/shuttle_landmark/fortress/nav1
	name = "Abandoned Fortress Navpoint #1"
	landmark_tag = "nav_fortress_1"
	base_turf = /turf/space

/obj/effect/shuttle_landmark/fortress/nav2
	name = "Abandoned Fortress Navpoint #2"
	landmark_tag = "nav_fortress_2"
	base_turf = /turf/space