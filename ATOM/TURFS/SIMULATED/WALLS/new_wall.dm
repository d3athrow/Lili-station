/turf/simulated/wall/newicon
	var/w = "w" //walltype

	merge()
		var/turf/N = get_step(src, NORTH)
		var/turf/S = get_step(src, SOUTH)
		var/turf/W = get_step(src, WEST)
		var/turf/E = get_step(src, EAST)

		if(S && E && W)
			if(istype(S, /turf/simulated/wall/newicon) && istype(W, /turf/simulated/wall/newicon) && istype(E, /turf/simulated/wall/newicon))
				icon_state = "[w]_ews"
				return

		if(N && E && S)
			if(istype(E, /turf/simulated/wall/newicon) && istype(N, /turf/simulated/wall/newicon) && istype(S, /turf/simulated/wall/newicon))
				icon_state = "[w]_nse"
				return

		if(W && N && S)
			if(istype(W, /turf/simulated/wall/newicon) && istype(N, /turf/simulated/wall/newicon) && istype(S, /turf/simulated/wall/newicon))
				icon_state = "[w]_nsw"
				return

		if(N && E && W)
			if(istype(W, /turf/simulated/wall/newicon) && istype(N, /turf/simulated/wall/newicon) && istype(E, /turf/simulated/wall/newicon))
				icon_state = "[w]_ewn"
				return

		if(N && E)
			if(istype(E, /turf/simulated/wall/newicon) && istype(N, /turf/simulated/wall/newicon))
				icon_state = "[w]_ne"
				return

		if(E && S)
			if(istype(E, /turf/simulated/wall/newicon) && istype(S, /turf/simulated/wall/newicon))
				icon_state = "[w]_se"
				return

		if(W && N)
			if(istype(W, /turf/simulated/wall/newicon) && istype(N, /turf/simulated/wall/newicon))
				icon_state = "[w]_wn"
				return

		if(S && W)
			if(istype(W, /turf/simulated/wall/newicon) && istype(S, /turf/simulated/wall/newicon))
				icon_state = "[w]_sw"
				return

		if(E)
			if(istype(E, /turf/simulated/wall/newicon))
				icon_state = "[w]_ew"
				return

		if(W)
			if(istype(W, /turf/simulated/wall/newicon))
				icon_state = "[w]_ew"
				return

		if(N)
			if(istype(N, /turf/simulated/wall/newicon))
				icon_state = "[w]_ns"
				return

		for(S)
			if(istype(S, /turf/simulated/wall/newicon))
				icon_state = "[w]_ns"
				return

	window
		w = "window"
		icon_state = "window"
		opacity = 0

		merge()
			var/turf/N = get_step(src, NORTH)
			var/turf/S = get_step(src, SOUTH)
			var/turf/W = get_step(src, WEST)
			var/turf/E = get_step(src, EAST)


			if(N && S)
				if(istype(N, /turf/simulated/wall/newicon/window) && istype(S, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_fullns"
					return

			if(E && W)
				if(istype(E, /turf/simulated/wall/newicon/window) && istype(W, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_fullwe"
					return

			if(E)
				if(istype(E, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_w2"
					return

			if(W)
				if(istype(W, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_e2"
					return

			if(S)
				if(istype(S, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_n2"
					return

			if(N)
				if(istype(N, /turf/simulated/wall/newicon/window))
					icon_state = "[w]_s2"
					return

			if(E && W)
				if(istype(E, /turf/simulated/wall/newicon) && istype(W, /turf/simulated/wall/newicon))
					icon_state = "[w]_ew"
					return

			if(N && S)
				if(istype(N, /turf/simulated/wall/newicon) && istype(S, /turf/simulated/wall/newicon))
					icon_state = "[w]_ns"
					return

			if(E)
				if(istype(E, /turf/simulated/wall/newicon))
					icon_state = "[w]_ew"
					return

			if(W)
				if(istype(W, /turf/simulated/wall/newicon))
					icon_state = "[w]_ew"
					return

			if(N)
				if(istype(N, /turf/simulated/wall/newicon))
					icon_state = "[w]_ns"
					return

			if(S)
				if(istype(S, /turf/simulated/wall/newicon))
					icon_state = "[w]_ns"
					return
