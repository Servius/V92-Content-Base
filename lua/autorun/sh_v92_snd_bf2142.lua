
AddCSLuaFile()

-------------------------------------------------------
--	Battlefield 2142 Audio
--	Encoded by V92
--	Profile Link:	http://steamcommunity.com/id/JesseVanover/
--	Workshop Link:	http://steamcommunity.com/sharedfiles/filedetails/?id=655569086
-------------------------------------------------------

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
--	COMMON TANK
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	TANK
-------------------------------------------------------
-------------------------------------------------------

sound.Add( {	["name"] = "BF2142.Tank.Start" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2142/vehicles/tank/tank_start.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2142.Tank.Idle" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2142/vehicles/tank/Tank_Idle.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2142.Tank.Stop" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2142/vehicles/tank/Tank_Stop.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2142.Tank.Tracks" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2142/vehicles/tank/Tank_Tracks.wav" ,
	} ,
} )

sound.Add( {	["name"] = "BF2142.Tank.TurretRot" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = {
		"jessev92/bf2142/vehicles/tank/turret_turning.wav" ,
	} ,
} )

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--	SINGLE SOUNDS
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------
-------------------------------------------------------
--	PARACHUTE LAUNCHER
-------------------------------------------------------
-------------------------------------------------------

sound.Add({	["name"] = "BF2142.Parachute.Deploy",
	["channel"] = CHAN_STATIC,
	["volume"] = 1.0,
	["level"] = 100,
	["pitch"] = { 105, 110 },
	["sound"] = {"jessev92/bf2142/vehicles/parachute/parachute_open.wav"},
})
