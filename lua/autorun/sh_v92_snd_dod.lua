
AddCSLuaFile()

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Day of Defeat: Source
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	DoD:S :: Player
------------------------------------------------------------------------------------------

sound.Add( {
	name = "DODS.Player.ReloadRustle" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/player/reload_rustle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/player/reload_rustle.wav" )

------------------------------------------------------------------------------------------
--	DoD:S :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
--	"30Cal"
--	M1919A4 Browning Machine Gun
--	.30-06
---------------------------------------------

sound.Add( {
	name = "DODS.30Cal.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_shoot.wav" )

sound.Add( {
	name = "DODS.30Cal.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_boltback.wav" )

sound.Add( {
	name = "DODS.30Cal.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_boltforward.wav" )

sound.Add( {
	name = "DODS.30Cal.BulletChain1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_bulletchain1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_bulletchain1.wav" )

sound.Add( {
	name = "DODS.30Cal.BulletChain2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_bulletchain2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_bulletchain2.wav" )

sound.Add( {
	name = "DODS.30Cal.CoverUp" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 98 , 102 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_coverup.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_coverup.wav" )

sound.Add( {
	name = "DODS.30Cal.CoverDown" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 98 , 102 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_coverdown.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_coverdown.wav" )

sound.Add( {
	name = "DODS.30Cal.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.30Cal.WorldReload" ,
	channel = CHAN_ITEM ,
	volume = 0.77 ,
	level = 65 ,
	pitch = { 90 , 110 } ,
	sound = "^)jessev92/dods/weapons/30Cal/30Cal_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/30Cal/30Cal_worldreload.wav" )

---------------------------------------------
--	"BAR"
--	M1918A2 Browning Auto Rifle
--	.30-06
---------------------------------------------

sound.Add( {
	name = "DODS.BAR.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_shoot.wav" )

sound.Add( {
	name = "DODS.BAR.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_boltback.wav" )

sound.Add( {
	name = "DODS.BAR.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_boltforward.wav" )

sound.Add( {
	name = "DODS.BAR.ClipIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_ClipIn1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_ClipIn1.wav" )

sound.Add( {
	name = "DODS.BAR.ClipIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_ClipIn2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_ClipIn2.wav" )

sound.Add( {
	name = "DODS.BAR.Switch" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_selectorswitch.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_selectorswitch.wav" )

sound.Add( {
	name = "DODS.BAR.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )

sound.Add( {
	name = "DODS.BAR.WorldReload" ,
	channel = CHAN_ITEM ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/bar/bar_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/bar/bar_worldreload.wav" )

---------------------------------------------
--	"Bazooka"
--	M1A1 Bazooka
--	M6A1 HEAT Rockets
---------------------------------------------

sound.Add( {
	name = "DODS.Bazooka.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket1.wav"
} )

sound.Add( {
	name = "DODS.Bazooka.ClipIn" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/rocket/rocket_clipin.wav" )

sound.Add( {
	name = "DODS.Bazooka.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.Bazooka.WorldReload" ,
	channel = CHAN_ITEM ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/rocket/rocket_worldreload.wav" )

---------------------------------------------
--	"Carbine"
--	M1 Carbine
--	.30 Carbine
---------------------------------------------

sound.Add( {
	name = "DODS.Carbine.Shoot" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_shoot.wav" )

sound.Add( {
	name = "DODS.Carbine.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_boltback.wav" )

sound.Add( {
	name = "DODS.Carbine.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_boltforward.wav" )

sound.Add( {
	name = "DODS.Carbine.ClipIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_clipin1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_clipin1.wav" )

sound.Add( {
	name = "DODS.Carbine.ClipIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_clipin2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_clipin2.wav" )

sound.Add( {
	name = "DODS.Carbine.ClipOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_clipout.wav" )

sound.Add( {
	name = "DODS.Carbine.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.Carbine.WorldReload" ,
	channel = CHAN_ITEM ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/m1carbine/m1carbine_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/m1carbine/m1carbine_worldreload.wav" )

---------------------------------------------
--	"Colt"
--	M1911
--	.45 ACP
---------------------------------------------
sound.Add( {
	name = "DODS.Colt.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_shoot.wav" )

sound.Add( {
	name = "DODS.Colt.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_boltback.wav" )

sound.Add( {
	name = "DODS.Colt.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_boltforward.wav" )

sound.Add( {
	name = "DODS.Colt.ClipIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_clipin.wav" )

sound.Add( {
	name = "DODS.Colt.ClipOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_clipout.wav" )

sound.Add( {
	name = "DODS.Colt.WorldReload" ,
	channel = CHAN_BODY ,
	volume = 0.77 ,
	level = 65 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/1911/colt_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/1911/colt_worldreload.wav" )

---------------------------------------------
--	"C96"
--	Mauser C96
--	.45 ACP
---------------------------------------------
sound.Add( {
	name = "DODS.C96.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/c96/c96_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/c96/c96_shoot.wav" )

sound.Add( {
	name = "DODS.C96.ClipIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/C96/c96_clipin1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/C96/c96_clipin1.wav" )

sound.Add( {
	name = "DODS.C96.ClipIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/C96/c96_clipin2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/C96/c96_clipin2.wav" )

sound.Add( {
	name = "DODS.C96.ClipOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/C96/c96_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/C96/c96_clipout.wav" )

sound.Add( {
	name = "DODS.C96.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/C96/c96_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/C96/c96_boltback.wav" )

sound.Add( {
	name = "DODS.C96.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/C96/c96_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/C96/c96_boltforward.wav" )

sound.Add( {
	name = "DODS.C96.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_pistol.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_pistol.wav" )

sound.Add( {
	name = "DODS.C96.WorldReload" ,
	channel = CHAN_BODY ,
	volume = 0.77 ,
	level = 65 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/c96/c96_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/c96/c96_worldreload.wav" )

---------------------------------------------
--	"Garand"
--	M1 Garand Battle Rifle
--	.30-06
---------------------------------------------

sound.Add( {
	name = "DODS.Garand.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_shoot.wav" )

sound.Add( {
	name = "DODS.Garand.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_boltforward.wav" )

sound.Add( {
	name = "DODS.Garand.ClipDing" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_clipding.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_clipding.wav" )

sound.Add( {
	name = "DODS.Garand.ClipIn1" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_ClipIn1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_ClipIn1.wav" )

sound.Add( {
	name = "DODS.Garand.ClipIn2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_ClipIn2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_ClipIn2.wav" )

sound.Add( {
	name = "DODS.Garand.Reload" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 70 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/garand_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/garand_worldreload.wav" )

---------------------------------------------
--	"K98"
--	Karabiner 98k
--	7.92x57mm Mauser
---------------------------------------------

sound.Add( {
	name = "DODS.K98.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_shoot.wav" )

sound.Add( {
	name = "DODS.K98.BoltBack1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltback1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltback1.wav" )

sound.Add( {
	name = "DODS.K98.BoltBack2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltback2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltback2.wav" )

sound.Add( {
	name = "DODS.K98.BoltForward1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltforward1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltforward1.wav" )

sound.Add( {
	name = "DODS.K98.BoltForward2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltforward2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltforward2.wav" )

sound.Add( {
	name = "DODS.K98.ClipIn" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipin.wav" )

sound.Add( {
	name = "DODS.K98.ClipIn2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipin2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipin2.wav" )

sound.Add( {
	name = "DODS.K98.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipout.wav" )

sound.Add( {
	name = "DODS.K98.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.K98.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipout.wav" )

sound.Add( {
	name = "DODS.K98.SinglShotReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_singleshotreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_singleshotreload.wav" )

sound.Add( {
	name = "DODS.K98.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_worldreload.wav" )

---------------------------------------------
--	"KarScoped"
--	Karabiner 98k
--	7.92x57mm Mauser
---------------------------------------------

sound.Add( {
	name = "DODS.KarScoped.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98scoped_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98scoped_shoot.wav" )

---------------------------------------------
--	"P38"
--	Walther P38
--	9x19mm Parabellum
---------------------------------------------

sound.Add( {
	name = "DODS.P38.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_shoot.wav" )

sound.Add( {
	name = "DODS.P38.ClipIn" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_clipin.wav" )

sound.Add( {
	name = "DODS.P38.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_clipout.wav" )

sound.Add( {
	name = "DODS.P38.BoltBack" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_boltback.wav" )

sound.Add( {
	name = "DODS.P38.BoltForward" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_boltforward.wav" )

sound.Add( {
	name = "DODS.P38.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_pistol.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_pistol.wav" )

sound.Add( {
	name = "DODS.P38.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/p38/p38_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/p38/p38_worldreload.wav" )

---------------------------------------------
--	"MG42"
--	Maschinengewehr 42
--	7.92x57mm Mauser
---------------------------------------------

sound.Add( {
	name = "DODS.MG42.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_shoot.wav" )

sound.Add( {
	name = "DODS.MG42.OverHeat" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_overheat.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_overheat.wav" )

sound.Add( {
	name = "DODS.MG42.CoverUp" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_coverup.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_coverup.wav" )

sound.Add( {
	name = "DODS.MG42.CoverDown" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_coverdown.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_coverdown.wav" )

sound.Add( {
	name = "DODS.MG42.BulletChain1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_bulletchain1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_bulletchain1.wav" )

sound.Add( {
	name = "DODS.MG42.BulletChain2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_bulletchain2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_bulletchain2.wav" )

sound.Add( {
	name = "DODS.MG42.BoltBack" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_boltback.wav" )

sound.Add( {
	name = "DODS.MG42.BoltForward" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_boltforward.wav" )

sound.Add( {
	name = "DODS.MG42.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.MG42.DeployBipod" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_deploybipod.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_deploybipod.wav" )

sound.Add( {
	name = "DODS.MG42.RaiseBipod" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_raisebipod.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_raisebipod.wav" )

sound.Add( {
	name = "DODS.MG42.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MG42/MG42_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MG42/MG42_worldreload.wav" )

---------------------------------------------
--	"MP40"
--	Maschinenpistole 40
--	9x19mm Parabellum
---------------------------------------------

sound.Add( {
	name = "DODS.MP40.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_shoot.wav" )

sound.Add( {
	name = "DODS.MP40.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.MP40.BoltBack" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_boltback.wav" )

sound.Add( {
	name = "DODS.MP40.ClipIn" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_clipin.wav" )

sound.Add( {
	name = "DODS.MP40.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_clipout.wav" )

sound.Add( {
	name = "DODS.MP40.BoltForward" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_boltforward.wav" )

sound.Add( {
	name = "DODS.MP40.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/MP40/MP40_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/MP40/MP40_worldreload.wav" )

---------------------------------------------
--	"StG44"
--	Sturmgewehr 44
--	7.92×33mm Kurz
---------------------------------------------

sound.Add( {
	name = "DODS.StG44.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_shoot.wav" )

sound.Add( {
	name = "DODS.StG44.BoltBack" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_boltback.wav" )

sound.Add( {
	name = "DODS.StG44.BoltForward" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_boltforward.wav" )

sound.Add( {
	name = "DODS.StG44.ClipIn1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_clipin1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_clipin1.wav" )

sound.Add( {
	name = "DODS.StG44.ClipIn2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_clipin2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_clipin2.wav" )

sound.Add( {
	name = "DODS.StG44.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_clipout.wav" )

sound.Add( {
	name = "DODS.StG44.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.StG44.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_worldreload.wav" )

sound.Add( {
	name = "DODS.StG44.SelectorSwitch" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/stg44/StG44_selectorswitch.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/stg44/StG44_selectorswitch.wav" )

---------------------------------------------
--	"Panzerschreck"
--	Panzerschreck
--	88mm Rocket
---------------------------------------------

sound.Add( {
	name = "DODS.Panzerschreck.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/rocket/rocket1.wav" )

sound.Add( {
	name = "DODS.Panzerschreck.BoltBack" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/rocket/rocket_clipin.wav" )

sound.Add( {
	name = "DODS.Panzerschreck.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.Panzerschreck.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/rocket/rocket_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/rocket/rocket_worldreload.wav" )

---------------------------------------------
--	"Springfield"
--	M1903 Springfield
--	.30-06
---------------------------------------------

sound.Add( {
	name = "DODS.Springfield.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98scoped_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98scoped_shoot.wav" )

sound.Add( {
	name = "DODS.Springfield.SinglShotReload" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_singleshotreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_singleshotreload.wav" )

sound.Add( {
	name = "DODS.Springfield.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.Springfield.WorldReload" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_worldreload.wav" )

sound.Add( {
	name = "DODS.Springfield.BoltBack1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltback1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltback1.wav" )

sound.Add( {
	name = "DODS.Springfield.BoltBack2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltback2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltback2.wav" )

sound.Add( {
	name = "DODS.Springfield.BoltForward1" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltforward1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltforward1.wav" )

sound.Add( {
	name = "DODS.Springfield.BoltForward2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_boltforward2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_boltforward2.wav" )

sound.Add( {
	name = "DODS.Springfield.ClipIn" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipin.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipin.wav" )

sound.Add( {
	name = "DODS.Springfield.ClipIn2" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipin2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipin2.wav" )

sound.Add( {
	name = "DODS.Springfield.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipout.wav" )

sound.Add( {
	name = "DODS.Springfield.ClipOut" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/k98_clipout.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/k98_clipout.wav" )

---------------------------------------------
--	"Thompson"
--	M1A1 Thompson
--	.45 ACP
---------------------------------------------

sound.Add( {
	name = "DODS.Thompson.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 150 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_shoot.wav" )

sound.Add( {
	name = "DODS.Thompson.BoltForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 97 , 103 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_boltforward.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_boltforward.wav" )

sound.Add( {
	name = "DODS.Thompson.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_boltback.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_boltback.wav" )

sound.Add( {
	name = "DODS.Thompson.ClipIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 97 , 103 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_ClipIn.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_ClipIn.wav" )

sound.Add( {
	name = "DODS.Thompson.ClipOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 70 ,
	pitch = { 97 , 103 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_ClipOut.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_ClipOut.wav" )

sound.Add( {
	name = "DODS.Thompson.Draw" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 97 , 103 } ,
	sound = "^)jessev92/dods/weapons/common/draw_rifle.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_rifle.wav" )

sound.Add( {
	name = "DODS.Thompson.WorldReload" ,
	channel = CHAN_BODY ,
	volume = 0.77 ,
	level = 65 ,
	//pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/thompson/thompson_worldreload.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/thompson/thompson_worldreload.wav" )

---------------------------------------------
--	"Knife"
--	Mark I Trench Knife
---------------------------------------------

sound.Add( {
	name = "DODS.Knife.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/melee/draw_knife.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/draw_knife.wav" )

sound.Add( {
	name = "DODS.Knife.Swing" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = "^)jessev92/dods/weapons/melee/blade_swing.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_swing.wav" )

sound.Add( {
	name = "DODS.Knife.SlashPlayer" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/blade_hit1.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit2.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit3.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit4.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit1.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit2.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit3.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit4.wav" )

sound.Add( {
	name = "DODS.Knife.SlashWorld" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/blade_hitworld.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hitworld.wav" )

---------------------------------------------
--	Punch
---------------------------------------------

sound.Add( {
	name = "DODS.Punch.HitPlayer" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/punch_hit_player2.wav" ,
		"^)jessev92/dods/weapons/melee/punch_hit_player3.wav" ,
		"^)jessev92/dods/weapons/melee/punch_hit_player4.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player2.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player3.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player4.wav" )

sound.Add( {
	name = "DODS.Punch.HitWorld" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/punch_hit_player2.wav" ,
		"^)jessev92/dods/weapons/melee/punch_hit_player3.wav" ,
		"^)jessev92/dods/weapons/melee/punch_hit_player4.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player2.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player3.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/punch_hit_player4.wav" )

---------------------------------------------
--	Spade
---------------------------------------------

sound.Add( {
	name = "DODS.Spade.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/melee/draw_spade.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/draw_spade.wav" )

sound.Add( {
	name = "DODS.Spade.SlashPlayer" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/blade_hit1.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit2.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit3.wav" ,
		"^)jessev92/dods/weapons/melee/blade_hit4.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit1.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit2.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit3.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hit4.wav" )

sound.Add( {
	name = "DODS.Spade.SlashWorld" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = {
		"^)jessev92/dods/weapons/melee/blade_hitworld.wav" ,
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/blade_hitworld.wav" )

---------------------------------------------
--	Grenades
---------------------------------------------

sound.Add( {
	name = "DODS.SmokeGrenade.Explode" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/explode/explode_smoke.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/explode_smoke.wav" )

sound.Add( {
	name = "DODS.Explode.Debris" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = {
	
		"^)jessev92/dods/weapons/explode/debris2.wav",
		"^)jessev92/dods/weapons/explode/debris4.wav",
		
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/debris2.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/debris4.wav" )

sound.Add( {
	name = "DODS.Explode" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = {
	
		"^)jessev92/dods/weapons/explode/explode3.wav",
		"^)jessev92/dods/weapons/explode/explode4.wav",
		"^)jessev92/dods/weapons/explode/explode5.wav",
		
	} ,
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/explode3.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/explode4.wav" )
util.PrecacheSound( "sound/jessev92/dods/weapons/explode/explode5.wav" )

sound.Add( {
	name = "DODS.Grenade.Spoon" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/grenade/grenade_spoon.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/grenade/grenade_spoon.wav" )

sound.Add( {
	name = "DODS.Grenade.PinPull" ,
	channel = CHAN_WEAPON ,
	volume = 0.5 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/grenade/grenade_pinpull.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/grenade/grenade_pinpull.wav" )

sound.Add( {
	name = "DODS.Grenade.String" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/grenade/grenade_string.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/grenade/grenade_string.wav" )

sound.Add( {
	name = "DODS.Grenade.Throw" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/grenade/grenade_throw.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/grenade/grenade_throw.wav" )

sound.Add( {
	name = "DODS.Grenade.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/common/draw_grenade.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/common/draw_grenade.wav" )

---------------------------------------------
--	Rifle Grenades
---------------------------------------------

sound.Add( {
	name = "DODS.Grenade.Shoot" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/grenade/grenade_shoot.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/grenade/grenade_shoot.wav" )

sound.Add( {
	name = "DODS.Grenade.WorldReloadGarand" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/grenade_worldreloadgarand.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/grenade_worldreloadgarand.wav" )

sound.Add( {
	name = "DODS.Grenade.ReloadGarand1" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/grenade_reloadgarand1.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/grenade_reloadgarand1.wav" )

sound.Add( {
	name = "DODS.Grenade.ReloadGarand2" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/grenade_reloadgarand2.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/grenade_reloadgarand2.wav" )

sound.Add( {
	name = "DODS.Grenade.ReloadGarand3" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/grenade_reloadgarand3.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/grenade_reloadgarand3.wav" )

sound.Add( {
	name = "DODS.Grenade.ReloadGarand4" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/garand/grenade_reloadgarand4.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/garand/grenade_reloadgarand4.wav" )

sound.Add( {
	name = "DODS.Grenade.WorldReloadK98" ,
	channel = CHAN_WEAPON ,
	volume = 0.77 ,
	level = 65 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/k98/grenade_worldreloadk98.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/k98/grenade_worldreloadk98.wav" )

---------------------------------------------
--	TNT / Satchel
---------------------------------------------

sound.Add( {
	name = "DODS.TNT.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 100 } ,
	sound = "^)jessev92/dods/weapons/melee/draw_spade.wav"
} )
util.PrecacheSound( "sound/jessev92/dods/weapons/melee/draw_spade.wav" )

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Resistance & Liberation
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	RNL :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
--	30Cal
---------------------------------------------
sound.Add( {
	name = "RnL.MG42.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/MG42/MG42_fire_1.wav" , "jessev92/weapons/MG42/MG42_fire_2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/MG42/MG42_fire_1.wav" )
util.PrecacheSound( "jessev92/weapons/MG42/MG42_fire_2.wav" )

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
