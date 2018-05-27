/turf/open/floor/f13/teleport
	var/id = null
	var/turf/open/floor/target = null

/turf/open/floor/f13/teleport/Entered(atom/movable/AM)
	if(target)
		var/x_offset = 0
		var/y_offset = 0

		switch(AM.dir)
			if(1)
				y_offset = 1
			if(2)
				y_offset = -1
			if(4)
				x_offset = 1
			if(8)
				x_offset = -1

		var/turf/open/teleportPosition = locate(target.x + x_offset, target.y + y_offset, target.z)
		AM.forceMove(teleportPosition)

	..()

/turf/open/floor/f13/teleport/initialize()
	spawn(120)
		for(var/turf/open/floor/f13/teleport/L in world)
			if(L.id == id)
				if(L != src)
					target = L