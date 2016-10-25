
AddCSLuaFile()

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Day of Defeat: Source
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	DoD:S :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
--	M1911 Colt .45 ACP Pistol
---------------------------------------------
sound.Add( {
	name = "DODS.1911.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/single_1.wav"
} )

sound.Add( {
	name = "DODS.1911.SlideBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/SlideBack.wav"
} )

sound.Add( {
	name = "DODS.1911.SlideForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/SlideForward.wav"
} )

sound.Add( {
	name = "DODS.1911.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/MagIn.wav"
} )

sound.Add( {
	name = "DODS.1911.MagOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/MagOut.wav"
} )

sound.Add( {
	name = "DODS.1911.Reload" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/1911/Reload.wav"
} )

---------------------------------------------
--	M1 Garand Battle Rifle
---------------------------------------------
sound.Add( {
	name = "DODS.Garand.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/single_1.wav"
} )

sound.Add( {
	name = "DODS.Garand.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/boltforward.wav"
} )

sound.Add( {
	name = "DODS.Garand.ClipDing" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/clipding.wav"
} )

sound.Add( {
	name = "DODS.Garand.ClipIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/ClipIn1.wav"
} )

sound.Add( {
	name = "DODS.Garand.ClipIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/ClipIn2.wav"
} )

sound.Add( {
	name = "DODS.Garand.Reload" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 70 ,
	//pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/garand/reload.wav"
} )

---------------------------------------------
--	Browning Auto Rifle
---------------------------------------------
sound.Add( {
	name = "DODS.BAR.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/single_1.wav"
} )

sound.Add( {
	name = "DODS.BAR.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/boltback.wav"
} )

sound.Add( {
	name = "DODS.BAR.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/boltforward.wav"
} )

sound.Add( {
	name = "DODS.BAR.MagIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/magin1.wav"
} )

sound.Add( {
	name = "DODS.BAR.MagIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/magin2.wav"
} )

sound.Add( {
	name = "DODS.BAR.Switch" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/switch.wav"
} )

sound.Add( {
	name = "DODS.BAR.Reload" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	//pitch = { 95 , 100 } ,
	sound = "jessev92/dods/weapons/bar/reload.wav"
} )

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Resistance & Liberation
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	RNL :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
--	MG42
---------------------------------------------
sound.Add( {
	name = "RnL.MG42.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/mg42/mg42_fire_1.wav" , "jessev92/weapons/mg42/mg42_fire_2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/mg42/mg42_fire_1.wav" )
util.PrecacheSound( "jessev92/weapons/mg42/mg42_fire_2.wav" )

------------------------------------------------------------------------------------------
--	RNL :: Vehicles
------------------------------------------------------------------------------------------

---------------------------------------------
--	Wirbelwind
---------------------------------------------
sound.Add( {
	name = "RnL.Wirbelwind.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/vehicles/spg/wirbelwind_fire_01.wav" , "jessev92/vehicles/spg/wirbelwind_fire_02.wav" , "jessev92/vehicles/spg/wirbelwind_fire_03.wav" , "jessev92/vehicles/spg/wirbelwind_fire_04.wav" }
} )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_01.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_02.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_03.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_04.wav" )
