/*
	These are simple defaults for your project.
 */

world
	fps = 20		// 25 frames per second
	icon_size = 64	// 64x64 icon size by default

	view = 8		// show up to 8 tiles outward from center (13x13 view)
	turf = /turf/space
	map_format = ISOMETRIC_MAP
	mob = /mob/new_player
	hub = "SSting.SpaceCruiserAurora"
	tick_lag = 0.3

/world/New()

//	master_controller = new /datum/controller/game_controller()

	if(!air_master)
		air_master = new /datum/controller/air_system()
		air_master.setup()
	..()

	goodbay()
	init_z_pixel()

	//global_turf_init()
	sd_SetDarkIcon()

	start_processing()
	spawn(1)
		Master.Initialize(15, FALSE)
	Master.process()

	//spawn(-1) master_controller.setup()

	load_admins()

	return