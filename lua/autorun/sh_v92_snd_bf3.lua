
AddCSLuaFile()

-------------------------------------------------------
--	Battlefield 3 Audio
--	Encoded by V92
--	Profile Link:	http://steamcommunity.com/id/JesseVanover/
--	Workshop Link:	http://steamcommunity.com/sharedfiles/filedetails/?id=655569086
-------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	CHARACTER
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	SPECIAL MOVES
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
--	BREACH DOOR KICK
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF3.SpecialMoves.BreachDoorKick" ,
	["channel"] = CHAN_WEAPON ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 80 , 120 } ,
	["sound"] = {
		"^)jessev92/bf3/character/specialmoves/breachdoorkick_1.wav" , 
		"^)jessev92/bf3/character/specialmoves/breachdoorkick_2.wav" , 
		"^)jessev92/bf3/character/specialmoves/breachdoorkick_3.wav" , 
		"^)jessev92/bf3/character/specialmoves/breachdoorkick_4.wav" ,
	},
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	EQUIPMENT
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
--	FREEFALL
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF3.Equipment.Freefall.Start" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/freefall_start.wav" ,
	},
} )

sound.Add( { ["name"] = "BF3.Equipment.Freefall.Loop" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/freefall_loop.wav" ,
	},
} )

sound.Add( { ["name"] = "BF3.Equipment.Freefall.Stop" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/freefall_end.wav" ,
	},
} )

-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------
--	PARACHUTE
-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------

sound.Add( { ["name"] = "BF3.Equipment.Parachute.Deploy" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/parachute_deploy.wav" ,
	},
} )

sound.Add( { ["name"] = "BF3.Equipment.Parachute.Ride" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/parachute_glide.wav" ,
	},
} )

sound.Add( { ["name"] = "BF3.Equipment.Parachute.Land" ,
	["channel"] = CHAN_STATIC ,
	["level"] = 140 ,
	["volume"] = 1.0 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"^)jessev92/bf3/character/equipment/parachute_land.wav" ,
	},
} )

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	VEHICLES
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	M270
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Weapons.M270.Fire
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Fire",
    ["level"] = 120,
    ["sound"] = {
		"^)jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_0.mp3",
		"^)jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_1.mp3",
		"^)jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_fire_2.mp3" )

sound.Add( -- BF3.Weapons.M270.Move.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Move.Start",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_start.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_start.mp3" )

sound.Add( -- BF3.Weapons.M270.Move.Loop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Move.Loop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_loop.wav",
	},
    ["volume"] = 1.0,
	["pitch"] = 100 ,
	//["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_loop.wav" )

sound.Add( -- BF3.Weapons.M270.Move.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Move.Stop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_stop.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_move_stop.mp3" )

sound.Add( -- BF3.Weapons.M270.Rotate.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Rotate.Start",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_start.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_start.mp3" )

sound.Add( -- BF3.Weapons.M270.Rotate.Loop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Rotate.Loop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_loop.wav",
	},
    ["volume"] = 1.0,
	["pitch"] = 100 ,
	//["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_loop.wav" )

sound.Add( -- BF3.Weapons.M270.Rotate.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.M270.Rotate.Stop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_stop.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/m270_rotate_stop.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	120mm
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Weapons.120mm.Fire
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.120mm.Fire",
    ["level"] = 140,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_fire_close_0.mp3",
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_fire_close_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_fire_close_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_fire_close_1.mp3" )

sound.Add( -- BF3.Weapons.120mm.Reload.T90
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.120mm.Reload.T90",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_t90_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_t90_0.mp3" )

sound.Add( -- BF3.Weapons.120mm.Reload.M1A2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.120mm.Reload.M1A2",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_m1a2_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_m1a2_0.mp3" )

sound.Add( -- BF3.Weapons.120mm.Reload.M1A2.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.120mm.Reload.M1A2.Stop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_m1a2_end_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_cannon_reload_m1a2_end_0.mp3" )

sound.Add( -- BF3.Weapons.120mm.ShellDrop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.120mm.ShellDrop",
    ["level"] = 70,
    ["sound"] = {
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_0.mp3",
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_1.mp3",
		"jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/vehicles/120mm_cannon/120mm_empty_shell_2.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	MISSILE LAUNCHERS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.Gadget.Phosphorus
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Gadget.Phosphorus",
    ["level"] = 100,
    ["sound"] = "jessev92/bf3/weapons/vehicles/missilelaunchers/Personal_Defence_White_PhosphorusFire_0.mp3",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/weapons/vehicles/missilelaunchers/Personal_Defence_White_PhosphorusFire_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	LARGE WEAPON RELOADS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Weapons.Large.Reload02.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload02.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/LargeWeaponReload_02_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

sound.Add( -- BF3.Weapons.Large.Reload02.Loop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload02.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/LargeWeaponReload_02_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 100 },

})

sound.Add( -- BF3.Weapons.Large.Reload02.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload02.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/LargeWeaponReload_02_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_start.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_loop.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_stop.wav" )

sound.Add( -- BF3.Weapons.Large.Reload03.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload03.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/largeweaponreload_03_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

sound.Add( -- BF3.Weapons.Large.Reload03.Loop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload03.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/largeweaponreload_03_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 100 },

})

sound.Add( -- BF3.Weapons.Large.Reload03.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Weapons.Large.Reload03.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/reloads/largeweaponreload_03_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },

})

util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_03_start.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_03_loop.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/reloads/largeweaponreload_03_stop.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	WARNINGS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.Warning.Damaged
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Warning.Damaged",
    ["level"] = 80,
    ["sound"] = "jessev92/bf3/vehicles/warnings/warning_damaged.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/warnings/warning_damaged.wav" )

sound.Add( -- BF3.Vehicles.Warning.Disabled
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Warning.Disabled",
    ["level"] = 80,
    ["sound"] = "jessev92/bf3/vehicles/warnings/warning_disabled.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/warnings/warning_disabled.wav" )

sound.Add( -- BF3.Vehicles.Warning.MissileInbound
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Warning.MissileInbound",
    ["level"] = 80,
    ["sound"] = "jessev92/bf3/vehicles/warnings/warning_missile_inbound.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/warnings/warning_missile_inbound.wav" )

sound.Add( -- BF3.Vehicles.Warning.MissileLocked
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Warning.MissileLocked",
    ["level"] = 80,
    ["sound"] = "jessev92/bf3/vehicles/warnings/warning_missile_locked.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/warnings/warning_missile_locked.wav" )

sound.Add( -- BF3.Vehicles.Warning.MissileTracking
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Warning.MissileTracking",
    ["level"] = 80,
    ["sound"] = "jessev92/bf3/vehicles/warnings/warning_missile_tracking.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/warnings/warning_missile_tracking.wav" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	PLANES
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
--	Test_Jet
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.Jet.External.Engine.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.External.Engine.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/jet/external_engine_start.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_engine_start.wav" )

sound.Add( -- BF3.Vehicles.Jet.External.Engine.Stop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.External.Engine.Stop",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/jet/external_engine_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_engine_stop.wav" )

sound.Add( -- BF3.Vehicles.Jet.External.Engine.RPM.Low
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.External.Engine.RPM.Low",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/external_fly_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 90
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_fly_close.wav" )

sound.Add( -- BF3.Vehicles.Jet.External.Engine.RPM.Mid
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.External.Engine.RPM.Mid",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/external_fly_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_fly_close.wav" )

sound.Add( -- BF3.Vehicles.Jet.External.Engine.RPM.High
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.External.Engine.RPM.High",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/external_fly_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 110
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_fly_close.wav" )

sound.Add( -- BF3.Vehicles.Jet.Internal.Engine.RPM.Low
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Internal.Engine.RPM.Low",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/internal_engine_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = 90
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/internal_engine_loop.wav" )

sound.Add( -- BF3.Vehicles.Jet.Internal.Engine.RPM.Mid
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Internal.Engine.RPM.Mid",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/internal_engine_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/internal_engine_loop.wav" )

sound.Add( -- BF3.Vehicles.Jet.Internal.Engine.RPM.High
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Internal.Engine.RPM.High",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/jet/internal_engine_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = 110
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/internal_engine_loop.wav" )

sound.Add( -- BF3.Vehicles.Jet.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/jet/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/cockpit.wav" )

sound.Add( -- BF3.Vehicles.Jet.Turbine.Front
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Turbine.Front",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/jet/external_turbine_front.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_turbine_front.wav" )

sound.Add( -- BF3.Vehicles.Jet.Turbine.Rear
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Turbine.Rear",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/jet/external_turbine_rear.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/external_turbine_rear.wav" )

sound.Add( -- BF3.Vehicles.Jet.Breathing.Normal
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Breathing.Normal",
    ["level"] = 90,--far
    ["sound"] = "jessev92/bf3/vehicles/jet/internal_breathing_normal.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/internal_breathing_normal.wav" )

sound.Add( -- BF3.Vehicles.Jet.Breathing.Forced
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Jet.Breathing.Forced",
    ["level"] = 90,--far
    ["sound"] = "jessev92/bf3/vehicles/jet/internal_breathing_forced.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/jet/internal_breathing_forced.wav" )

-------------------------------------------------------
--	A-10
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.A10.Engine.RPM.Low
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.A10.Engine.RPM.Low",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/a10/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 90
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/engine_far.wav" )

sound.Add( -- BF3.Vehicles.A10.Engine.RPM.Mid
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.A10.Engine.RPM.Mid",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/a10/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/engine_far.wav" )

sound.Add( -- BF3.Vehicles.A10.Engine.RPM.High
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.A10.Engine.RPM.High",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/a10/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 110
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/engine_far.wav" )

-------------------------------------------------------

sound.Add( -- BF3.Vehicles.A10.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.A10.Engine.Near",
    ["level"] = 135,
    ["sound"] = "jessev92/bf3/vehicles/a10/engine_near.wav",
    ["volume"] = 1.0,
	["pitch"] = 90
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/engine_near.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Int.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Int.Start",
    ["level"] = 160,
    ["sound"] = { "jessev92/bf3/vehicles/a10/gau8_int_start.wav" },
    ["volume"] = 1.0,
	--["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_int_start.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Int.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Int.Loop",
    ["level"] = 160,
    ["sound"] = { "jessev92/bf3/vehicles/a10/gau8_int_loop.wav" },
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_int_loop.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Int.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Int.Stop",
    ["level"] = 160,
    ["sound"] = { "jessev92/bf3/vehicles/a10/gau8_int_stop.wav" },
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_int_stop.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Ext.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Ext.Start",
    ["level"] = 160,
    ["sound"] = { 
		"jessev92/bf3/vehicles/a10/gau8_ext_start_1.wav" , 
		"jessev92/bf3/vehicles/a10/gau8_ext_start_2.wav" 
	},
	["volume"] = 1.0,
	--["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_start_1.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_start_2.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Ext.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Ext.Loop",
    ["level"] = 160,
    ["sound"] = { 
		"jessev92/bf3/vehicles/a10/gau8_ext_loop_1.wav" , 
		"jessev92/bf3/vehicles/a10/gau8_ext_loop_2.wav" 
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_loop_1.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_loop_2.wav" )

sound.Add( -- BF3.Vehicles.A10.GAU8.Ext.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.A10.GAU8.Ext.Stop",
    ["level"] = 160,
    ["sound"] = { 
		"jessev92/bf3/vehicles/a10/gau8_ext_stop_1.wav" , 
		"jessev92/bf3/vehicles/a10/gau8_ext_stop_2.wav" 
	},
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_stop_1.wav" )
util.PrecacheSound( "jessev92/bf3/vehicles/a10/gau8_ext_stop_2.wav" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	HELICOPTERS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	AH-6J
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.AH6.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/ah6/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/cockpit.wav" )

sound.Add( -- BF3.Vehicles.AH6.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Engine.Near",
    ["level"] = 105,
    ["sound"] = "jessev92/bf3/vehicles/ah6/engine_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/engine_close.wav" )

sound.Add( -- BF3.Vehicles.AH6.Engine.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Engine.Far",
    ["level"] = 120,
    ["sound"] = "jessev92/bf3/vehicles/ah6/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/engine_far.wav" )

sound.Add( -- BF3.Vehicles.AH6.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/ah6/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.AH6.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah6/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.AH6.Turbine
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Turbine",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah6/turbine.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/turbine.wav" )

sound.Add( -- BF3.Vehicles.AH6.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH6.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/vehicles/air/sh/heli_start_1.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/vehicles/air/sh/heli_start_1.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Close.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Close.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_close_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_close_start.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Close.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Close.Loop",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_close_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_close_loop.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Close.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Close.Stop",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_close_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_close_stop.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Distant.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Distant.Start",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_distant_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_distant_start.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Distant.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Distant.Loop",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_distant_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_distant_loop.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Distant.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Distant.Stop",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_distant_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_distant_stop.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Far.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Far.Loop",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_far_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_far_start.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Far.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Far.Loop",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_far_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_far_loop.wav" )

sound.Add( -- BF3.Vehicles.AH6.M134.Far.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Vehicles.AH6.M134.Far.Stop",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/vehicles/ah6/m134_dual_far_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah6/m134_dual_far_stop.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	AH-1Z Viper
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.AH1Z.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/ah1z/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/cockpit.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Engine.Near",
    ["level"] = 105,
    ["sound"] = "jessev92/bf3/vehicles/ah1z/engine_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/engine_close.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Engine.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Engine.Far",
    ["level"] = 120,
    ["sound"] = "jessev92/bf3/vehicles/ah1z/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/engine_far.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/ah1z/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah1z/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Turbine
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Turbine",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah1z/turbine.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah1z/turbine.wav" )

sound.Add( -- BF3.Vehicles.AH1Z.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH1Z.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/vehicles/air/sh/heli_start_2.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/vehicles/air/sh/heli_start_2.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	AH-64D
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.AH64.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/ah64/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/cockpit.wav" )

sound.Add( -- BF3.Vehicles.AH64.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Engine.Near",
    ["level"] = 105,
    ["sound"] = "jessev92/bf3/vehicles/ah64/engine_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/engine_close.wav" )

sound.Add( -- BF3.Vehicles.AH64.Engine.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Engine.Far",
    ["level"] = 120,
    ["sound"] = "jessev92/bf3/vehicles/ah64/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/engine_far.wav" )

sound.Add( -- BF3.Vehicles.AH64.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/ah64/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.AH64.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah64/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.AH64.Turbine
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Turbine",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/ah64/turbine.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah64/turbine.wav" )

sound.Add( -- BF3.Vehicles.AH64.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH64.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/vehicles/air/sh/heli_start_3.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/vehicles/air/sh/heli_start_3.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	AH-60
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.AH60.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.AH60.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/ah60/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/ah60/rotor_close.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	WZ-11
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.WZ11.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.WZ11.Engine.Near",
    ["level"] = 105,
    ["sound"] = "jessev92/bf3/vehicles/wz11/engine_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/wz11/engine_close.wav" )

sound.Add( -- BF3.Vehicles.WZ11.Engine.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.WZ11.Engine.Far",
    ["level"] = 120,
    ["sound"] = "jessev92/bf3/vehicles/wz11/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/wz11/engine_far.wav" )

sound.Add( -- BF3.Vehicles.WZ11.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.WZ11.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/wz11/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/wz11/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.WZ11.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.WZ11.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/wz11/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/wz11/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.WZ11.Turbine
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.WZ11.Turbine",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/wz11/turbine.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/wz11/turbine.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	V-22 Osprey
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.V22.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.V22.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/mv22/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mv22/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.V22.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.V22.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/mv22/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mv22/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.V22.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.V22.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/mv22/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mv22/cockpit.wav" )

sound.Add( -- BF3.Vehicles.V22.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.V22.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/vehicles/mv22/start.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mv22/start.wav" )

-------------------------------------------------------
-------------------------------------------------------
--	Mi-28 Havoc
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Vehicles.Mi28.Cockpit
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Cockpit",
    ["level"] = 75,
    ["sound"] = "jessev92/bf3/vehicles/mi28/cockpit.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/cockpit.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Engine.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Engine.Near",
    ["level"] = 105,
    ["sound"] = "jessev92/bf3/vehicles/mi28/engine_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/engine_close.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Engine.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Engine.Far",
    ["level"] = 120,
    ["sound"] = "jessev92/bf3/vehicles/mi28/engine_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/engine_far.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Rotor.Near
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Rotor.Near",
    ["level"] = 116,
    ["sound"] = "jessev92/bf3/vehicles/mi28/rotor_close.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/rotor_close.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Rotor.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Rotor.Far",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/mi28/rotor_far.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/rotor_far.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Turbine
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Turbine",
    ["level"] = 120,--far
    ["sound"] = "jessev92/bf3/vehicles/mi28/turbine.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/bf3/vehicles/mi28/turbine.wav" )

sound.Add( -- BF3.Vehicles.Mi28.Start
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Vehicles.Mi28.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/vehicles/air/sh/heli_start_4.wav",
    ["volume"] = 1.0,
	["pitch"] = 100
})

util.PrecacheSound( "jessev92/vehicles/air/sh/heli_start_4.wav" )

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	GAME SOUNDS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	FIRES
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.GameSounds.Fire
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.GameSounds.Fire",
    ["level"] = 85,
    ["sound"] = 	{
		"jessev92/bf3/gamesounds/fires/fire_burn_1.wav",
		"jessev92/bf3/gamesounds/fires/fire_burn_2.wav",
		"jessev92/bf3/gamesounds/fires/fire_burn_3.wav",
		"jessev92/bf3/gamesounds/fires/fire_burn_4.wav",
		},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/gamesounds/fires/fire_burn_1.wav" )
util.PrecacheSound( "jessev92/bf3/gamesounds/fires/fire_burn_2.wav" )
util.PrecacheSound( "jessev92/bf3/gamesounds/fires/fire_burn_3.wav" )
util.PrecacheSound( "jessev92/bf3/gamesounds/fires/fire_burn_4.wav" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	M-COM
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.GameSounds.MCOM.Alarm
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.GameSounds.MCOM.Alarm",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/gamesounds/gamemode/rush_alarm.mp3",
		},
    ["volume"] = 1.0,
	["pitch"] = 100,
	--["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/gamesounds/gamemode/rush_alarm.mp3" )

sound.Add( -- BF3.GameSounds.MCOM.Alarm.Loop
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.GameSounds.MCOM.Alarm.Loop",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/gamesounds/gamemode/rush_alarm_loop.wav",
		},
    ["volume"] = 1.0,
	["pitch"] = 100,
	--["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/gamesounds/gamemode/rush_alarm_loop.wav" )

sound.Add( -- BF3.GameSounds.MCOM.Alarm.LeadOut
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.GameSounds.MCOM.Alarm.LeadOut",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/gamesounds/gamemode/rush_alarm_leadout.wav",
		},
    ["volume"] = 1.0,
	["pitch"] = 100,
	--["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/gamesounds/gamemode/rush_alarm_leadout.wav" )

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
--	BULLET CRAFT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--	SHELL CASINGS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	.50 Cal / 12.7mm
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.ShellCasings.50BMG.Int.Wood
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.50BMG.Int.Wood",
    ["level"] = 55,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_5.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_0_5.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.50BMG.Int
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.50BMG.Int",
    ["level"] = 55,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_2_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_2_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_3_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_3_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_2_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_3_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_indoor_3_1.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.50BMG.Ext
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.50BMG.Ext",
    ["level"] = 50,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_5.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_6.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_7.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_8.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_9.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_50cal_outdoor_9.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SHOTGUN SHELL
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.ShellCasings.Shotgun.Int.Wood
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.Shotgun.Int.Wood",
    ["level"] = 55,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_2_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_2_0.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.Shotgun.Int
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.Shotgun.Int",
    ["level"] = 55,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_4.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_indoor_0_4.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.Shotgun.Ext
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.Shotgun.Ext",
    ["level"] = 50,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_5.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_6.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_7.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_shotgun_outdoor_0_7.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	7.62mm
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.ShellCasings.762.Int
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.762.Int",
    ["level"] = 55,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_3_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_3_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_4_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_4_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_5_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_5_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_6_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_6_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_7_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_7_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_8_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_8_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_12_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_12_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_13_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_13_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_14_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_14_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_17_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_17_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_22_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_22_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_23_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_23_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_24_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_24_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_25_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_3_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_3_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_4_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_4_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_5_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_5_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_6_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_6_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_7_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_7_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_8_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_8_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_9_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_10_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_11_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_12_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_12_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_13_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_13_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_14_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_14_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_15_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_16_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_17_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_17_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_18_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_19_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_20_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_21_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_22_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_22_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_23_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_23_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_24_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_24_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_indoor_25_0.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.762.Ext
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.762.Ext",
    ["level"] = 50,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_5.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_6.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_5.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_4.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_5.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_3.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_0_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_3_3.mp3" )

sound.Add( -- BF3.BulletCraft.ShellCasings.762.Ext.Tarmac
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.ShellCasings.762.Ext.Tarmac",
    ["level"] = 50,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_3.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_0.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_1.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_2.mp3",
		"jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_8_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_0_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_3_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_4_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_5_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_6_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_7_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/shellcasings/shellcasings_762_outdoor_tarmac_8_0.mp3" )

-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
--	FLY-BYS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.Bullet.FlyBy.SonicBoom
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.FlyBy.SonicBoom",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_1.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_2.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_3.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_4.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_5.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_6.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_7.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_8.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_9.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_10.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_11.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_12.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_13.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_14.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_15.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_16.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_17.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_18.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_19.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_20.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_21.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_22.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_23.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_24.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_25.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_26.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_27.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_28.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_29.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_30.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_31.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_32.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_33.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_34.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_35.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_36.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_37.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_38.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_38.mp3" )

sound.Add( -- BF3.Bullet.FlyBy.SonicBoom.Suppressed
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.FlyBy.SonicBoom.Suppressed",
    ["level"] = 80,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_1.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_2.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_3.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_4.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_5.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_6.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_7.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_8.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_9.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_10.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_11.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_12.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_13.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_14.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_15.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_16.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_17.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_18.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_19.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_20.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_21.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_22.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_23.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_24.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_25.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_26.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_27.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_28.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_29.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_30.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_31.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_32.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_33.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_34.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_35.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_36.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_37.mp3",
		"jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_38.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 90, 110 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/flybys/Bullet_Sonic_Boom_38.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	REFLECTION
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	AT / MISSILES
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.AT
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.AT",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_big_at_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_big_at_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	DESERT
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Desert.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Desert.Close",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_desert_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_desert_1.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_desert_2.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_desert_3.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_desert_4.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_desert_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_desert_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_desert_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_desert_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_desert_4.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Desert.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Desert.Far",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_desert_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_far_desert_1.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_far_desert_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_desert_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_desert_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_desert_2.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	FOREST
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Forest.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Forest.Close",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_Forest_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_Forest_0.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Forest.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Forest.Far",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_Forest_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_Forest_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	EXPLOSION
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Explosion.Forest.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Explosion.Forest.Close",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_forest_explosion_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_forest_explosion_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	INDOOR GARAGE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Garage.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Garage.Close",
    ["level"] = 80,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_garage_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_garage_0.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Garage.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Garage.Far",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	INDOOR GARAGE HUGE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Garage.Huge.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Garage.Huge.Close",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_garage_huge_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_garage_huge_0.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Garage.Huge.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Garage.Huge.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	INDOOR SMALL
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Small.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Small.Close",
    ["level"] = 75,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_small_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_indoor_small_0.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Indoor.Small.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Indoor.Small.Far",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_indoor_garage_huge_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	OPEN FIELD
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.OpenField.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.OpenField.Close",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_1.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_openfield_2.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	URBAN
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Urban.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Urban.Close",
    ["level"] = 80,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_urban_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_urban_1.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_close_urban_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_urban_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_urban_2.mp3" )

sound.Add( -- BF3.BulletCraft.Reflection.Urban.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Urban.Far",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_far_urban_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_far_urban_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_far_urban_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	URBAN ALLEY
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Urban.Alley.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Urban.Alley.Close",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_close_urban_alley_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_close_urban_alley_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SNIPER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Reflection.Sniper
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Reflection.Sniper",
    ["level"] = 140,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_0.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_1.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_2.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_3.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_4.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_5.mp3",
		"jessev92/bf3/weapons/shared/reflections/reflection_sniper_6.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/reflection_sniper_6.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	CORE BASS DISTANT
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_1",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_20.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_21.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_22.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_23.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_lmg_1_24.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/reflections/corebassdistant_lmg_1_24.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_2",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_13.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_2_13.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_3
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_3",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_15.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_3_15.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_4
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_4",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_20.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_21.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_22.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_23.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_24.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_25.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_4_25.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_5
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_5",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_20.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_21.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_22.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_23.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_24.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_5_24.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_6
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_6",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_6_20.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_7
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_7",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_17.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_18.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_19.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_7_20.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_8
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_8",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_18.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_19.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_20.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_21.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_22.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_23.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_24.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_12.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_13.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_14.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_15.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_16.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_17.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_18.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_19.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_20.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_21.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_22.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_23.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_8_24.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_9
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_9",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_17.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_18.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_12.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_13.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_14.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_15.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_16.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_17.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_9_18.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_10
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_10",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_16.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_17.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_12.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_13.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_14.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_15.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_16.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_10_17.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_11
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_11",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_12.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_13.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_11_14.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_12
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_12",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_12_12.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.LMG_13
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.LMG_13",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_13.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_14.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_15.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_16.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_1.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_2.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_3.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_4.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_5.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_6.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_7.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_8.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_9.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_10.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_11.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_12.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_13.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_14.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_15.6mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassdistant_LMG_13_16.6mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.OneShot_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.OneShot",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_4.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_5.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_6.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_7.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_8.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_9.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_10.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_11.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_12.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_13.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_OneShot_13.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Distant.Missile_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Distant.Missile_1",
    ["level"] = 100,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_0.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_1.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_2.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_3.mp3",
		"jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_4.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_oneshot/corebassdistant_Missile_1_4.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	CORE BASS CLOSE
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_1",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_lmg_1_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_1_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_2_25.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_2_25.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_3
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_3",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_3_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_3_20.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_4
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_4",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_4_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_4_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_5
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_5",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_5_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_5_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_7
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_7",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_7_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_7_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_8
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_8",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_8_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_8_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_9
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_9",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_9_25.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_9_25.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_10
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_10",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_25.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_26.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_27.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_28.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_10_29.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_25.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_26.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_27.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_28.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_10_29.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_11
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_11",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_20.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_21.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_22.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_23.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_24.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_11_25.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_20.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_21.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_22.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_23.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_24.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_11_25.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_12
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_12",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_19.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_12_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_19.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_12_20.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.LMG_16
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.LMG_16",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_2.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_3.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_4.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_5.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_6.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_7.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_8.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_9.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_10.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_11.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_12.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_13.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_14.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_15.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_16.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_17.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_18.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_lmg/corebassclose_LMG_16_19.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_18.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassdistant_lmg/corebassclose_lmg_16_19.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.GL
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.GL",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_gl_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_gl_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_gl_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_gl_2.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.OneShot_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.OneShot_1",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_1_1.mp3",
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_1_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_1_2.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.OneShot_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.OneShot_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_2_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_2_1.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.OneShot_3
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.OneShot_3",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_3_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_3_1.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.OneShot_4
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.OneShot_4",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_4_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_4_1.mp3" )

sound.Add( -- BF3.BulletCraft.CoreBass.Close.OneShot_5
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.CoreBass.Close.OneShot_5",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_5_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/corebassclose_oneshot/corebassclose_oneshot_5_1.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	HIGH-FIDELITY
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.BulletCraft.HiFi.Pistol_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.Pistol_1",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_pistol_1_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_pistol_1_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.Pistol_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.Pistol_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_pistol_2_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_pistol_2_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.Revolver
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.Revolver",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_revolver_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_revolver_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.Shotgun
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.Shotgun",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_shotgun_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_shotgun_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_shotgun_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_shotgun_2.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M14
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M14",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_m14_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_m14_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M82
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M82",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_m82_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_m82_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.BoltAction
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.BoltAction",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_boltaction_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_boltaction_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.OneShot_3
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.OneShot_3",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_3_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_3_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.OneShot_4
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.OneShot_4",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_4_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_4_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.OneShot_6
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.OneShot_6",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_6_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_6_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.OneShot_8
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.OneShot_8",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_8_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_oneshot/hifi_oneshot_8_1.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.AK47_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.AK47_1",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_1_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.AK47_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.AK47_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_ak47_2_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.G3
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.G3",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_g3_1_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.Glock
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.Glock",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_5.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_glock_5.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M2HB
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M2HB",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m2hb_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M4
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M4",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m4_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M240_1
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M240_1",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_1_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M240_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M240_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m240_2_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.M249_2
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.M249_2",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_m249_2_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.MP5
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.MP5",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_MP5_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.P90
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.P90",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_p90_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.PKM
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.PKM",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_pkm_14.mp3" )

sound.Add( -- BF3.BulletCraft.HiFi.UMP
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.HiFi.UMP",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_1.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_2.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_3.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_4.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_5.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_6.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_7.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_8.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_9.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_10.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_11.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_12.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_13.mp3",
		"jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_14.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/hifi_lmg/hifi_lmg_UMP_14.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	HANDLING & SWITCHES
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( {	--	BF3.Weapons.TriggerClick
	["name"] = "BF3.Weapons.TriggerClick" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/trigger_click.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/trigger_click.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.US.Semi
	["name"] = "BF3.Weapons.FireMode.US.Semi" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_1.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_1.wav" )

sound.Add( {	--	"BF3.Weapons.FireMode.US.Semi
	["name"] = "BF3.Weapons.FireMode.US.Burst" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_2.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_2.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.US.Auto
	["name"] = "BF3.Weapons.FireMode.US.Auto" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_3.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_3.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.US.Safety
	["name"] = "BF3.Weapons.FireMode.US.Safety" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_4.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_4.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.RU.Semi
	["name"] = "BF3.Weapons.FireMode.RU.Semi" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_1.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_1.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.RU.Burst
	["name"] = "BF3.Weapons.FireMode.RU.Burst" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 85 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_1.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_us_1.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.RU.Auto
	["name"] = "BF3.Weapons.FireMode.RU.Auto" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_2.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_2.wav" )

sound.Add( {	--	BF3.Weapons.FireMode.RU.Safety
	["name"] = "BF3.Weapons.FireMode.RU.Safety" ,
	["channel"] = CHAN_ITEM ,
	["level"] = 60 ,
	["volume"] = 1.0 ,
	["pitch"] = 100 ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_3.wav" }
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/fire_mode_switch_ru_3.wav" )

sound.Add( {	--	BF3.Weapons.GenericDeploy
	["name"] = "BF3.Weapons.GenericDeploy" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1.0 ,
	["pitch"] = { 95, 105 } ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/generic_deploy_1.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_2.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_3.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_4.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_5.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_6.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_7.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/generic_deploy_8.wav" , 
	}
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_1.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_2.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_3.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_4.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_5.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_6.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_7.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/generic_deploy_8.wav" )

sound.Add( {	--	BF3.Weapons.Ironsights
	["name"] = "BF3.Weapons.Ironsights" ,
	["channel"] = CHAN_BODY ,
	["level"] = 75 ,
	["volume"] = 1.0 ,
	["pitch"] = { 95, 105 } ,
	["sound"] = { "^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_1.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_2.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_3.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_4.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_5.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_6.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_7.wav" , 
		"^)jessev92/bf3/weapons/shared/handling/zoom_ironsights_8.wav" , 
	}
} )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_1.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_2.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_3.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_4.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_5.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_6.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_7.wav" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/handling/zoom_ironsights_8.wav" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	LOW-FREQUENCY EFFECTS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3.BulletCraft.LFE
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.LFE",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/lfe/lfe.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/lfe/lfe.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	NOISE LAYERS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	FOREST
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Forest.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Forest.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_11.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_forest_11.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Forest.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Forest.Distant",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_forest_12.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Forest.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Forest.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_forest_12.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	INDOOR GARAGE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Garage.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Garage.Close",
    ["level"] = 75,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_15.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_16.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_17.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_garage_17.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Garage.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Garage.Distant",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_15.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_16.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_garage_16.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Garage.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Garage.Far",
    ["level"] = 115,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_8.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_garage_8.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	INDOOR SMALL
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Small.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Small.Close",
    ["level"] = 80,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_indoor_small_8.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Small.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Small.Distant",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_indoor_small_12.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Indoor.Small.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Indoor.Small.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_15.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_16.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_17.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_18.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_15.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_16.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_17.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_indoor_small_18.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	OPEN FIELD
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.OpenField.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.OpenField.Close",
    ["level"] = 65,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_15.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_openfield_15.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.OpenField.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.OpenField.Distant",
    ["level"] = 85,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_openfield_12.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.OpenField.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.OpenField.Far",
    ["level"] = 105,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_15.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_openfield_15.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	URBAN
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Urban.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_12.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Urban.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Distant",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_12.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Urban.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_12.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_12.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	URBAN ALLEY
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Urban.Alley.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Alley.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_11.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Urban_Alley_11.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Urban.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Alley.Distant",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_7.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_Urban_Alley_7.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.Urban.Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Urban.Alley.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_15.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_far_Urban_Alley_15.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	M134 MINIGUN
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.Weapons.M134.Close.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Close.Start",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.mp3" )

sound.Add( -- BF3.Weapons.M134.Close.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Close.Stop",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.mp3" )

sound.Add( -- BF3.Weapons.M134.Close.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Close.Stop",
    ["level"] = 90,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.mp3" )

sound.Add( -- BF3.Weapons.M134.Far.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Far.Start",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.mp3" )

sound.Add( -- BF3.Weapons.M134.Far.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Far.Loop",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.mp3" )

sound.Add( -- BF3.Weapons.M134.Far.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Far.Stop",
    ["level"] = 110,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.mp3" )

sound.Add( -- BF3.Weapons.M134.Distant.Start
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Distant.Start",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_start.mp3" )

sound.Add( -- BF3.Weapons.M134.Distant.Loop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Distant.Loop",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_loop.mp3" )

sound.Add( -- BF3.Weapons.M134.Distant.Stop
{
    ["channel"] = CHAN_WEAPON,
    ["name"] = "BF3.Weapons.M134.Distant.Stop",
    ["level"] = 140,
    ["sound"] = "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.wav",
    ["volume"] = 1.0,
	["pitch"] = { 98, 102 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_minigun_stop.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	25mm
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.25mm.VehicleInt
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.25mm.VehicleInt",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_vehicleinterior_25mm_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_vehicleinterior_25mm_0.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.25mm.Far.Urban
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.25mm.Far.Urban",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	120mm
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.120mm.VehicleInt
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.GL.120mm.VehicleInt",
    ["level"] = 75,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_vehicleinterior_120mm_0.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_vehicleinterior_120mm_0.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	GRENADE LAUNCHER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.GL.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.GL.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_gl_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_gl_1.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.GL.Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.GL.Distant.OpenField",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_openfield_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_openfield_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_openfield_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_openfield_1.mp3" )

sound.Add( -- BF3.BulletCraft.Noise.GL.Urban
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.GL.Distant.Urban",
    ["level"] = 95,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_0.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_0.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_distant_gl_urban_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	RIFLE
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Rifle.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Rifle.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_rifle_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_rifle_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SHOTGUN
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Shotgun.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Shotgun.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_shotgun_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_shotgun_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SUPPRESSED
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Suppressed.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Suppressed.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_1.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_2.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_3.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_4.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_5.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_6.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_7.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_8.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_9.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_10.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_11.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_12.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_13.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_14.mp3",
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_15.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_1.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_2.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_3.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_4.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_5.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_6.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_7.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_8.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_9.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_10.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_11.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_12.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_13.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_14.mp3" )
util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_silenced_15.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SUPPRESSED SNIPER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Suppressed_Sniper.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Suppressed_Sniper.Close",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Suppressed_Sniper_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Suppressed_Sniper_1.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	SNIPER
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3.BulletCraft.Noise.Sniper.Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.BulletCraft.Noise.Sniper.Close",
    ["level"] = 80,
    ["sound"] = 	{
		"jessev92/bf3/weapons/shared/noise_layers/noise_close_Sniper_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 97 , 103 },
})

util.PrecacheSound( "jessev92/bf3/weapons/shared/noise_layers/noise_close_Sniper_1.mp3" )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	IMPACTS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

sound.Add( -- BF3 Bullet Impact Brick
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Brick",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_32.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_brick_32.mp3" )

sound.Add( -- BF3 Bullet Impact Ceramic
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Ceramic",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ceramic_24.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Ceramic_24.mp3" )

sound.Add( -- BF3 Bullet Impact Debris
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Debris",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_32.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_33.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_34.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_35.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_36.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_37.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Debris_38.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/bullet_impact_Debris_38.mp3" )

sound.Add( -- BF3 Bullet Impact Ice
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Ice",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Ice_20.mp3" )

sound.Add( -- BF3 Bullet Impact Marble
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Marble",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_32.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Marble_32.mp3" )

sound.Add( -- BF3 Bullet Impact Metal Hard Bright
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Metal.HardBright",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_32.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_33.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_34.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_35.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_36.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_37.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_38.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_39.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_40.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_41.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_42.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_43.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_44.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_45.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_46.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_47.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_48.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_49.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_50.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_51.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_52.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_53.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_54.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_55.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_56.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_38.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_39.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_40.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_41.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_42.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_43.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_44.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_45.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_46.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_47.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_48.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_49.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_50.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_51.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_52.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_53.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_54.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_55.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Hard_Bright_56.mp3" )

sound.Add( -- BF3 Bullet Impact Metal Long
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Metal.Long",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_32.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_33.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_34.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_35.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_36.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_37.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_38.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Metal_Long_38.mp3" )

sound.Add( -- BF3 Bullet Impact Snow
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Snow",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_20.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Snow_20.mp3" )

sound.Add( -- BF3 Bullet Impact Wood
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Wood",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_1.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_2.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_3.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_4.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_5.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_6.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_7.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_8.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_9.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_10.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_11.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_12.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_13.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_14.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_15.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_16.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_17.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_18.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_19.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_20.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_21.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_22.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_23.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_24.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_25.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_26.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_27.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_28.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_29.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_30.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_31.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_32.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_33.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_34.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_35.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_36.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_37.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_38.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_39.mp3",
		"jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_40.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_2.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_3.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_4.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_5.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_6.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_7.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_8.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_9.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_10.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_11.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_12.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_13.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_14.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_15.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_16.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_17.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_18.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_19.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_20.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_21.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_22.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_23.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_24.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_25.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_26.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_27.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_28.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_29.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_30.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_31.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_32.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_33.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_34.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_35.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_36.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_37.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_38.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_39.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/impacts/Bullet_Impact_Wood_40.mp3" )

sound.Add( -- BF3 Bullet Impact Vehicle Armour Interior
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Bullet.Impact.Vehicle.Interior",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/bulletcraft/vehicle/Vehicle_Interior_Armor_Impact_1.mp3",
		"jessev92/bf3/bulletcraft/vehicle/Vehicle_Interior_Armor_Impact_2.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/bulletcraft/vehicle/Vehicle_Interior_Armor_Impact_1.mp3" )
util.PrecacheSound( "jessev92/bf3/bulletcraft/vehicle/Vehicle_Interior_Armor_Impact_2.mp3" )

-------------------------------------------------------
-------------------------------------------------------
--	EXPLOSIONS
-------------------------------------------------------
-------------------------------------------------------

sound.Add( -- BF3 Explosion Nose
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Nose",
    ["level"] = 70,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_nose.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_nose.mp3" )

sound.Add( -- BF3 Explosion Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Close",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_close_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_close_1.mp3" )

sound.Add( -- BF3 Explosion Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Far",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_far_1.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_far_2.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_far_3.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_far_1.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_far_2.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_far_3.mp3" )

sound.Add( -- BF3 Explosion Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Distant",
    ["level"] = 130,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3" )

sound.Add( -- BF3 Explosion Bass Close
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Close.Bass",
    ["level"] = 90,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_bass_close_1.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_bass_close_2.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_bass_close_3.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_bass_close_1.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_bass_close_2.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_bass_close_3.mp3" )

sound.Add( -- BF3 Explosion Bass Far
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Far.Bass",
    ["level"] = 110,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_2.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_3.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_4.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_5.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_2.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_3.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_4.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_5.mp3" )

sound.Add( -- BF3 Explosion Bass Distant
{
    ["channel"] = CHAN_STATIC,
    ["name"] = "BF3.Explosion.Distant.Bass",
    ["level"] = 130,
    ["sound"] = 	{
		"jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_2.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_3.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_4.mp3",
		"jessev92/bf3/explosions/modularmodel/explosion_distant_5.mp3",
	},
    ["volume"] = 1.0,
	["pitch"] = { 95, 105 },
})

util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_1.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_2.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_3.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_4.mp3" )
util.PrecacheSound( "jessev92/bf3/explosions/modularmodel/explosion_distant_5.mp3" )
