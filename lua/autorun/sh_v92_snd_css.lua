
AddCSLuaFile()

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Counter-Strike: Source
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	CS:S :: Player
------------------------------------------------------------------------------------------
sound.Add( {
	name = "CSS.Player.Headshot" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 180 ,
	sound = { "player/headshot1.wav" , "player/headshot2.wav" } ,
} )
util.PrecacheSound( "player/headshot1.wav" )
util.PrecacheSound( "player/headshot2.wav" )

------------------------------------------------------------------------------------------
--	CS:S :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
---------------------------------------------
--	M4A1
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "CSS.M4A1.DetachSuppressor" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	sound = { "jessev92/css/weapons/m4a1/suppressor_off.wav" } ,
} )
util.PrecacheSound( "jessev92/css/weapons/m4a1/suppressor_off.wav" )

sound.Add( {
	name = "CSS.M4A1.AttachSuppressor" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	sound = { "jessev92/css/weapons/m4a1/suppressor_on.wav" } ,
} )
util.PrecacheSound( "jessev92/css/weapons/m4a1/suppressor_on.wav" )

---------------------------------------------
---------------------------------------------
--	USP
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "CSS.USP.DetachSuppressor" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	sound = { "jessev92/css/weapons/usp/suppressor_off.wav" } ,
} )
util.PrecacheSound( "jessev92/css/weapons/usp/suppressor_off.wav" )

sound.Add( {
	name = "CSS.USP.AttachSuppressor" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	sound = { "jessev92/css/weapons/usp/suppressor_on.wav" } ,
} )
util.PrecacheSound( "jessev92/css/weapons/usp/suppressor_on.wav" )
