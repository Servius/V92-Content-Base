
AddCSLuaFile()

-------------------------------------------------------
--	Battlefield 2 Audio
--	Encoded by V92
--	Profile Link:	http://steamcommunity.com/id/JesseVanover/
--	Workshop Link:	http://steamcommunity.com/sharedfiles/filedetails/?id=655569086
-------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	VOICE OVERS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	UNITED STATES MARINE CORPS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	GRUNT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF2.VO.USGrunt_Spot_Mines",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/bf2/vo/usmc/grunt/nofilter/PLAYER_SPOTTED_TM_enemyminespotted.wav" ,
		"jessev92/bf2/vo/usmc/grunt/nofilter/PLAYER_SPOTTED_TM_enemyminespotted_alt.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.VO.USGrunt_MedicHere",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_healhere.wav" ,
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_healhere_alt.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.VO.USGrunt_NoMedic",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_outofmedic.wav" ,
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_outofmedic_alt.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.VO.USGrunt_AmmoHere",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 98, 103 },
	["sound"] = { 
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_ammohere.wav" ,
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_ammohere_alt.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.VO.USGrunt_NoAmmo",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 98, 103 },
	["sound"] = { 
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_outofammo.wav" ,
		"jessev92/bf2/vo/usmc/grunt/nofilter/AUTO_MOODGP_TM_outofammo_alt.wav" ,
	} ,
} )

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	COMMON
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	COMMON
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	REPAIR, REARM, HEAL
-------------------------------------------------------
-------------------------------------------------------

sound.Add({	["name"] = "BF2.Common.Repair",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/repair.wav"},
})

sound.Add({	["name"] = "BF2.Common.Repair.Loop",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/repair_loop.wav"},
})

sound.Add({	["name"] = "BF2.Common.Resupply",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/resupply.wav"},
})

sound.Add({	["name"] = "BF2.Common.Resupply.Loop",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/resupply_loop.wav"},
})

sound.Add({	["name"] = "BF2.Common.Heal",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/heal.wav"},
})

sound.Add({	["name"] = "BF2.Common.Heal.Loop",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 100 },
	["sound"] = {"jessev92/bf2/common/heal_loop.wav"},
})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	WEAPONS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	ARMAMENT
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	BOMBS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Bomb.Release" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/bomb/bomb_release.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2.Bomb.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/bomb/bomb_reload.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2.Bomb.Release_Loop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/bomb/bomb_release_loop.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	COAXIAL
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.CoAx.Browning" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/browning_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.CoAx.Browning_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/browning_3p.wav" ,		
	},
} )

sound.Add( {	["name"] = "BF2.CoAx.China" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/china_1p.wav" ,		
	},
} )

sound.Add( {	["name"] = "BF2.CoAx.China_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/china_3p.wav" ,		
	},
} )

sound.Add( {	["name"] = "BF2.CoAx.MEC" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/mec_1p.wav" ,
	},
} )

sound.Add( {	["name"] = "BF2.CoAx.MEC_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/coax/mec_3p.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	FIRING PORT WEAPONS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.FiringPort.M16" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/firingport/m16_firingport_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.FiringPort.M16_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/firingport/m16_firingport_3p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.FiringPort.AK" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/firingport/ak_firingport_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.FiringPort.AK_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/firingport/ak_firingport_3p.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	FLARES
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Flare.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/flare/flare_launcher_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Flare.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/flare/flare_reload.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Flare.Empty" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/flare/out_of_flares.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	MISSILES
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Missile.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/missile_Reload_vehicle.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Rocket.Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/missiles/rocket_start.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2.Rocket.Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/missiles/Rocket_Idle.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2.Rocket.Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/missiles/Rocket_Stop.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	SMOKE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Smoke.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/Smoke/Smoke_fire.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Smoke.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/armament/Smoke/Smoke_reload.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	HANDHELD
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	Ammunition Bag
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF2.AmmoBag.Draw",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/draw1.wav" ,
		"jessev92/weapons/univ/draw2.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.AmmoBag.Holster",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/holster1.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	Medical Bag
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF2.MedicBag.Draw",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/draw1.wav" ,
		"jessev92/weapons/univ/draw2.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.MedicBag.Holster",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/holster1.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	M15 Anti-Vehicle Mine
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF2.M15Mine.Draw",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/weapons/univ/draw1.wav" ,
		"jessev92/weapons/univ/draw2.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.M15Mine.Holster",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/holster1.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	M18 Anti-Personnel 'Claymore' Mine
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF2.M18Mine.Draw",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/weapons/univ/draw1.wav" ,
		"jessev92/weapons/univ/draw2.wav" ,
	} ,
} )

sound.Add( { ["name"] = "BF2.M18Mine.Holster",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0 ,
	["level"] = 85 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = { 
		"jessev92/weapons/univ/holster1.wav" ,
	} ,
} )

-------------------------------------------------------
-------------------------------------------------------
--	PARACHUTE LAUNCHER
-------------------------------------------------------
-------------------------------------------------------

sound.Add({	["name"] = "BF2.Parachute.Deploy",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 105, 110 },
	["sound"] = {"jessev92/bf2/weapons/handheld/parachute/parachute_deploy.wav"},
})

sound.Add({	["name"] = "BF2.Parachute.Ride",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 105, 110 },
	["sound"] = {"jessev92/bf2/weapons/handheld/parachute/parachute_ride_loop.wav"},
})

-------------------------------------------------------
-------------------------------------------------------
--	ERYX
-------------------------------------------------------
-------------------------------------------------------

sound.Add({	["name"] = "BF2.Eryx.Reload",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 95,
	["pitch"] = { 98, 102 },
	["sound"] = {"jessev92/bf2/weapons/handheld/eryx/eryx_reload_1p.wav"},
})

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	IMPACTS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	TANK SHELL IMPACT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Impact.TankShell" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/impacts/tank_shell_01.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_02.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_03.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_04.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_05.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2.Impact.TankShell_Metal" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 95 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/impacts/tank_shell_metal_01.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_metal_02.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_metal_03.wav" ,
		"jessev92/bf2/weapons/impacts/tank_shell_metal_04.wav" ,
	} ,
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	STATIONARY
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	CIWS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.CIWS.Cockpit" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/ciws/wasp_defence_amb.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	ARTILLERY
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.LW155.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/lw155/lw155_artillery_fire.wav" ,
	},
} )

sound.Add( {	["name"] = "BF2.D30.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/d30/d30_artillery_fire.wav" ,
	},
} )

sound.Add( {	["name"] = "BF2.Artillery.Fall" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/lw155/artillery_projectile_01.wav" ,	
		"jessev92/bf2/weapons/stationary/lw155/artillery_projectile_02.wav" ,	
		"jessev92/bf2/weapons/stationary/lw155/artillery_projectile_03.wav" ,
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	IGLA
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Igla.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 130 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/igla/igla_fire.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Igla.TurretRot.Yaw" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/igla/seat.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Igla.TurretRot.Pitch" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/igla/turret.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	KORD
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Kord.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/kord/kord_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Kord.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/kord/kord_fire_3p.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	M2HB
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M2HB.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/m2hb/m2hb_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M2HB.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/m2hb/m2hb_fire_3p.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	M134
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M134.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/m134/minigun_fire.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M134.Spool" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/m134/minigun_start_idle_stop.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	STINGER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Stinger.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 130 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/stinger/stinger_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Stinger.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 130 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/stinger/stinger_fire_3p.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	TOW
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.TOW.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 130 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/tow/tow_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.TOW.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 130 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/tow/tow_fire_3p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.TOW.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/tow/reload_missile.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	Type 85
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Type85.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/Type85/Type85_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Type85.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 120 ,
	["pitch"] = { 95 , 105 } ,
	["sound"] = {
		"jessev92/bf2/weapons/stationary/Type85/Type85_fire_3p.wav" ,	
	},
} )

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	VEHICLES
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	COMMON
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	TRAVERSE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Tank.TurretRot" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/genericturretmovement.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	WEAPON TOGGLE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Vehicle.TriggerClick" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/vehicle_weapon_trigger_click.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.WeaponToggle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/weapon_toggle_vehicle.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	GROWLER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Vehicle.Growler.Lock" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/growler_lock.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.Growler.Track" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/growler_track.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	HEAT SEEKER WARNING
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Vehicle.Heatseeker.Lock" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/heatseeker_lock_warning.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.Heatseeker.Track" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/heatseeker_track_warning.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	GEAR SHIFT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.Vehicle.GearShift1" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/gear_shift_01.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.GearShift2" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/gear_shift_02.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.GearShift3" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/gear_shift_03.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.GearShift4" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/common/gear_shift_04.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	HMMWV
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	COCKPIT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.HMMWV.Cockpit" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/cockpit.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	ENGINE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.HMMWV.Engine_Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/engine_start.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.HMMWV.Engine_Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/engine_stop.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.HMMWV.Engine_Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/engine_idle.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.HMMWV.Engine_Slow" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/Engine_Slow.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.HMMWV.Engine_Fast" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/hmmwv/Engine_Fast.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	M6 BRADLEY LINEBACKER
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	COCKPIT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M6.Cockpit" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/cockpit.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	WEAPONS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M6.Cannon.Fire" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/M6_autocannon_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M6.Cannon.Fire_1p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/M6_autocannon_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M6.Cannon.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 140 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/M6_autocannon_3p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M6.Missile_Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/missile_Reload_vehicle.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	M6 ENGINE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M6.Engine_Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/engine_start.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M6.Engine_Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/engine_stop.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M6.Engine_Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/m6_linebacker/engine_idle.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	M1A2 ABRAMS MAIN BATTLE TANK
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	M1A2 ABRAMS COCKPIT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M1A2.Cockpit" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/cockpit.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	M1A2 ABRAMS WEAPONS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M1A2.Cannon.Fire_1p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/m1a2_fire_1p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M1A2.Cannon.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 140 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/m1a2_fire_3p.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M1A2.Cannon.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/m1a2_reload.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	M1A2 ABRAMS ENGINE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.M1A2.Engine_Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/engine_start.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M1A2.Engine_Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/engine_stop.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M1A2.Engine_Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/engine_idle.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.M1A2.Tracks" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/tracks.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	T-90 MAIN BATTLE TANK
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	T-90 COCKPIT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.T90.Cockpit" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/cockpit.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	T-90 WEAPONS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.T90.Cannon.Fire_1p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/T90_1p_fire.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.T90.Cannon.Fire_3p" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 140 ,
	["pitch"] = { 90 , 110 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/T90_3p_fire.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.T90.Cannon.Reload" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/T90_reload.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	T-90 ENGINE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.T90.Engine_Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/engine_start.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.T90.Engine_Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/engine_stop.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.T90.Engine_Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 110 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/T90/engine_idle.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.T90.Tracks" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 95 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/M1A2_abrams/tracks.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	DUMP TRUCK
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	DUMP TRUCK AIR RELEASE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.DumpTruck.Air" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 75 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/truck1/DieselEngine_puff_01.wav" ,	
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	SEMI-TRUCK
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	SEMI-TRUCK HORN
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.SemiTruck.Horn" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 140 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/semi/truck_horn.wav" ,	
	},
} )

-------------------------------------------------------
-------------------------------------------------------
--	SEMI-TRUCK GEAR SHIFT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2.SemiTruck.GearShift1" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/semi/gear_1.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.SemiTruck.GearShift2" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/semi/gear_2.wav" ,		
	},
} )

sound.Add( {	["name"] = "BF2.SemiTruck.GearShift3" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/semi/gear_3.wav" ,	
	},
} )

sound.Add( {	["name"] = "BF2.Vehicle.GearShift4" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 65 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2/vehicles/land/semi/gear_4.wav" ,	
	},
} )
