AddCSLuaFile( )

---------------------------------------------
---------------------------------------------
--	Battlefield 2
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "AH1Z.Cannon.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/vehicles/aircraft/AH-1 Cobra_shoot.mp3" }
} )

util.PrecacheSound( "jessev92/weapons/smg1/fire1.wav" )

sound.Add( {
	name = "BF2.UH60.On" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/vehicles/aircraft/uh60_on.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aircraft/uh60_on.wav" )

sound.Add( {
	name = "BF2.UH60.Loop" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/vehicles/aircraft/uh60_loop.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aircraft/uh60_loop.wav" )

sound.Add( {
	name = "BF2.M249.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/M249_fire.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/M249_fire.wav" )

sound.Add( {
	name = "BF2.M134.Spin" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/M134_spin.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/M134_spin.wav" )

sound.Add( {
	name = "BF2.Type85.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/type85_fire.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/type85_fire.wav" )

sound.Add( {
	name = "BF2.Kord.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/KORD_fire_1p.mp3" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/kord_fire.mp3" )

sound.Add( {
	name = "BF2.M2HB.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/50cal_fire.mp3" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/50cal_fire.mp3" )

sound.Add( {
	name = "BF2.Artillery.Fall" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 1 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/Artillery_projectile_1.wav" , "jessev92/bf2/weapons/Artillery_projectile_2.wav" , "jessev92/bf2/weapons/Artillery_projectile_3.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_1.wav" )
util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_2.wav" )
util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_3.wav" )

sound.Add( {
	name = "BF2_Eryx_Reload" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 1 ,
	--pitch		= { 90, 110 }, 
	sound = { "jessev92/bf2/weapons/Eryx_Reload_1p.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Eryx_Reload_1p.wav" )

sound.Add( {
	name = "BF2_Rocket_Engine" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 1 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/Rocket_engine_start_idle.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Rocket_engine_start_idle.wav" )

sound.Add( {
	name = "BF2.TankTowerRot" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 1 ,
	--pitch		= { 90, 110 }, 
	sound = { "jessev92/bf2/tank/towerrotation.wav" }
} )

util.PrecacheSound( "jessev92/bf2/tank/towerrotation.wav" )

sound.Add( {
	name = "BF2.TankPipeRot" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 1 ,
	--pitch		= { 90, 110 }, 
	sound = { "jessev92/bf2/tank/piperotation.wav" }
} )

util.PrecacheSound( "jessev92/bf2/tank/piperotation.wav" )

sound.Add( {
	name = "BF2.M6.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf2/m6/autocannon_3p.wav" }
} )

util.PrecacheSound( "jessev92/bf2/m6/autocannon_3p.wav" )

sound.Add( {
	name = "BF2.M6.StIdSt" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf2/m6/startidlestop.wav" }
} )

util.PrecacheSound( "jessev92/bf2/m6/startidlestop.wav" )

sound.Add( {
	name = "BF2.M6.Reload" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf2/m6/missile_reload.wav" }
} )

util.PrecacheSound( "jessev92/bf2/m6/missile_reload.wav" )

sound.Add( {
	name = "BF2.Shell_Impact_Dirt" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/tank/tank_shell_01.wav" , "jessev92/bf2/tank/tank_shell_02.wav" , "jessev92/bf2/tank/tank_shell_03.wav" , "jessev92/bf2/tank/tank_shell_04.wav" }
} )

sound.Add( {
	name = "BF2.Shell_Impact_Metal" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/tank/tank_shell_metal_01.wav" , "jessev92/bf2/tank/tank_shell_metal_02.wav" , "jessev92/bf2/tank/tank_shell_metal_03.wav" , "jessev92/bf2/tank/tank_shell_metal_04.wav" }
} )

---------------------------------------------
---------------------------------------------
--	Battlefield 3
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "BF3.50cal" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_50cal_fire1.wav" , "jessev92/bf3/m1a2_50cal_fire2.wav" , "jessev92/bf3/m1a2_50cal_fire3.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_50cal_fire1.wav" )
util.PrecacheSound( "jessev92/bf3/m1a2_50cal_fire2.wav" )
util.PrecacheSound( "jessev92/bf3/m1a2_50cal_fire3.wav" )

sound.Add( {
	name = "BF3.CoaxLMG" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_coax_lmg.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_coax_lmg.wav" )

sound.Add( {
	name = "BF3.Zoom" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf3/m1a2_gadget_zoom2.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_gadget_zoom2.wav" )

sound.Add( {
	name = "BF3.M1A2Cannon" ,
	channel = CHAN_WEAPON ,
	volume = 0.5 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_cannon_fire.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_cannon_fire.wav" )

sound.Add( {
	name = "BF3.M1A2Reload" ,
	channel = CHAN_ITEM ,
	volume = 0.5 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf3/m1a2_cannon_reload.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_cannon_reload.wav" )

sound.Add( {
	name = "BF3.Foley.DoorBust" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 80 , 120 } ,
	sound = { "jessev92/bf3/foley/kick/door_1.wav" , "jessev92/bf3/foley/kick/door_2.wav" , "jessev92/bf3/foley/kick/door_3.wav" , "jessev92/bf3/foley/kick/door_4.wav" }
} )

---------------------------------------------
---------------------------------------------
--	Battlefield 2142
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "BF2142.TankTowerRot" ,
	channel = CHAN_BODY ,
	volume = 0.5 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf2142/vehicles/turret_turning.wav" }
} )

util.PrecacheSound( "jessev92/bf2142/vehicles/turret_turning.wav" )

sound.Add( {
	name = "BF2142.TankTracks" ,
	channel = CHAN_BODY ,
	volume = 0.5 ,
	level = 0.75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/bf2142/vehicles/tank_Tracks.wav" }
} )

util.PrecacheSound( "jessev92/bf2142/vehicles/tank_Tracks.wav" )