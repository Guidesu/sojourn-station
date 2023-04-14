//TimSort interface
/proc/sortTim(list/L, cmp=/proc/cmp_numeric_asc, associative, fromIndex=1, toIndex=0)
	if(L && L.len >= 2)
		fromIndex = fromIndex % L.len
		toIndex = toIndex % (L.len+1)
		if(fromIndex <= 0)
			fromIndex += L.len
		if(toIndex <= 0)
			toIndex += L.len + 1

		var/datum/sortInstance/PI = GLOB.sortInstance
		if(!PI)
			PI = new

		PI.L = L
		PI.cmp = cmp
		PI.associative = associative

		PI.timSort(fromIndex, toIndex)
	return L
