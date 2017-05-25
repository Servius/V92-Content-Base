
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
	sound = { "player/headshot1.wav", "player/headshot2.wav" } ,
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

//G3SG1
util.PrecacheSound( "weapons/g3sg1/g3sg1-1.wav" )
util.PrecacheSound( "weapons/g3sg1/g3sg1_slide.wav" )
util.PrecacheSound( "weapons/g3sg1/g3sg1_clipout.wav" )
util.PrecacheSound( "weapons/g3sg1/g3sg1_clipin.wav" )

//GLOCK
util.PrecacheSound( "weapons/glock/glock18-1.wav" )
util.PrecacheSound( "weapons/glock/glock_clipout.wav" )
util.PrecacheSound( "weapons/glock/glock_clipin.wav" )
util.PrecacheSound( "weapons/glock/glock_sliderelease.wav" )
util.PrecacheSound( "weapons/glock/glock_slideback.wav" )

//GALIL
util.PrecacheSound( "weapons/galil/galil-1.wav" )
util.PrecacheSound( "weapons/galil/galil_clipout.wav" )
util.PrecacheSound( "weapons/galil/galil_clipin.wav" )
util.PrecacheSound( "weapons/galil/galil_boltpull.wav" )

//M249
util.PrecacheSound( "weapons/m249/m249-1.wav" )
util.PrecacheSound( "weapons/m249/m249_coverup.wav" )
util.PrecacheSound( "weapons/m249/m249_boxout.wav" )
util.PrecacheSound( "weapons/m249/m249_boxin.wav" )
util.PrecacheSound( "weapons/m249/m249_chain.wav" )
util.PrecacheSound( "weapons/m249/m249_coverdown.wav" )

//M1014
util.PrecacheSound( "weapons/xm1014/xm1014-1.wav" )
util.PrecacheSound( "weapons/xm1014/xm1014_insertshell.wav" )

//M3SUPER90
util.PrecacheSound( "weapons/m3/m3-1.wav" )
util.PrecacheSound( "weapons/m3/m3_insertshell.wav" )
util.PrecacheSound( "weapons/m3/m3_pump.wav" )

//MAC10
util.PrecacheSound( "weapons/mac10/mac10-1.wav" )
util.PrecacheSound( "weapons/mac10/mac10_clipout.wav" )
util.PrecacheSound( "weapons/mac10/mac10_clipin.wav" )
util.PrecacheSound( "weapons/mac10/mac10_boltpull.wav" )

//TMP
util.PrecacheSound( "weapons/tmp/tmp-1.wav" )
util.PrecacheSound( "weapons/tmp/tmp_clipin.wav" )
util.PrecacheSound( "weapons/tmp/tmp_clipout.wav" )

//MP5
util.PrecacheSound( "weapons/mp5navy/mp5-1.wav" )
util.PrecacheSound( "weapons/mp5navy/mp5_clipout.wav" )
util.PrecacheSound( "weapons/mp5navy/mp5_clipin.wav" )
util.PrecacheSound( "weapons/mp5navy/mp5_slideback.wav" )

//P228
util.PrecacheSound( "weapons/p228/p228-1.wav" )
util.PrecacheSound( "weapons/p228/p228_clipout.wav" )
//"Weapon_P228.Clipin"
util.PrecacheSound( "weapons/p228/p228_clipin.wav" )
//"Weapon_P228.Sliderelease"
util.PrecacheSound( "weapons/p228/p228_sliderelease.wav" )
//"Weapon_P228.Slidepull"
util.PrecacheSound( "weapons/p228/p228_slidepull.wav" )
//"Weapon_P228.Slideback"
util.PrecacheSound( "weapons/p228/p228_slideback.wav" )

//P90
//"Weapon_P90.Single"
util.PrecacheSound( "weapons/p90/p90-1.wav" )
//"Weapon_P90.Cliprelease"
util.PrecacheSound( "weapons/p90/p90_cliprelease.wav" )
//"Weapon_P90.Clipout"
util.PrecacheSound( "weapons/p90/p90_clipout.wav" )
//"Weapon_P90.Clipin"
util.PrecacheSound( "weapons/p90/p90_clipin.wav" )
//"Weapon_P90.Boltpull"
util.PrecacheSound( "weapons/p90/p90_boltpull.wav" )

//SCOUT
//"Weapon_Scout.Single"
util.PrecacheSound( "weapons/scout/scout_fire-1.wav" )
//"Weapon_Scout.Bolt"
util.PrecacheSound( "weapons/scout/scout_bolt.wav" )
//"Weapon_Scout.Clipout"
util.PrecacheSound( "weapons/scout/scout_clipout.wav" )
//"Weapon_Scout.Clipin"
util.PrecacheSound( "weapons/scout/scout_clipin.wav" )

//SG550
//"Weapon_SG550.Single"
util.PrecacheSound( "weapons/sg550/sg550-1.wav" )
//"Weapon_SG550.Clipout"
util.PrecacheSound( "weapons/sg550/sg550_clipout.wav" )
//"Weapon_SG550.Clipin"
util.PrecacheSound( "weapons/sg550/sg550_clipin.wav" )
//"Weapon_SG550.Boltpull"
util.PrecacheSound( "weapons/sg550/sg550_boltpull.wav" )

//SG552
//"Weapon_SG552.Single"
util.PrecacheSound( "weapons/sg552/sg552-1.wav" )
//"Weapon_SG552.Clipout"
util.PrecacheSound( "weapons/sg552/sg552_clipout.wav" )
//"Weapon_SG552.Clipin"
util.PrecacheSound( "weapons/sg552/sg552_clipin.wav" )
//"Weapon_SG552.Boltpull"
util.PrecacheSound( "weapons/sg552/sg552_boltpull.wav" )

//FIVESEVEN
//"Weapon_FiveSeven.Single"
util.PrecacheSound( "weapons/fiveseven/fiveseven-1.wav" )
//"Weapon_FiveSeven.Clipout"
util.PrecacheSound( "weapons/fiveseven/fiveseven_clipout.wav" )
//"Weapon_FiveSeven.Clipin"
util.PrecacheSound( "weapons/fiveseven/fiveseven_clipin.wav" )
//"Weapon_FiveSeven.Sliderelease"
util.PrecacheSound( "weapons/fiveseven/fiveseven_sliderelease.wav" )
//"Weapon_FiveSeven.Slidepull"
util.PrecacheSound( "weapons/fiveseven/fiveseven_slidepull.wav" )
//"Weapon_FiveSeven.Slideback"
util.PrecacheSound( "weapons/fiveseven/fiveseven_slideback.wav" )

//UMP45
//"Weapon_UMP45.Single"
util.PrecacheSound( "weapons/ump45/ump45-1.wav" )
//"Weapon_UMP45.Clipout"
util.PrecacheSound( "weapons/ump45/ump45_clipout.wav" )
//"Weapon_UMP45.Clipin"
util.PrecacheSound( "weapons/ump45/ump45_clipin.wav" )
//"Weapon_UMP45.Boltslap"
util.PrecacheSound( "weapons/ump45/ump45_boltslap.wav" )

//USP
//"Weapon_USP.Single"
util.PrecacheSound( "weapons/usp/usp_unsil-1.wav" )
//"Weapon_USP.SilencedShot"
util.PrecacheSound( "weapons/usp/usp1.wav" )
//"Weapon_USP.DetachSilencer"
util.PrecacheSound( "weapons/usp/usp_silencer_off.wav" )
//"Weapon_USP.AttachSilencer"
util.PrecacheSound( "weapons/usp/usp_silencer_on.wav" )
//"Weapon_USP.Clipout"
util.PrecacheSound( "weapons/usp/usp_clipout.wav" )
//"Weapon_USP.Clipin"
util.PrecacheSound( "weapons/usp/usp_clipin.wav" )
//"Weapon_USP.Sliderelease"
util.PrecacheSound( "weapons/usp/usp_sliderelease.wav" )
//"Weapon_USP.Slideback"
util.PrecacheSound( "weapons/usp/usp_slideback.wav" )
//"Weapon_USP.Slideback2"
util.PrecacheSound( "weapons/usp/usp_slideback2.wav" )

//M4A1
//"Weapon_M4A1.Single"
util.PrecacheSound( "weapons/m4a1/m4a1_unsil-1.wav" )
//"Weapon_M4A1.Silenced"
util.PrecacheSound( "weapons/m4a1/m4a1-1.wav" )
//"Weapon_M4A1.Silencer_Off"
util.PrecacheSound( "weapons/m4a1/m4a1_silencer_off.wav" )
//"Weapon_M4A1.Silencer_On"
util.PrecacheSound( "weapons/m4a1/m4a1_silencer_on.wav" )
//"Weapon_M4A1.Clipout"
util.PrecacheSound( "weapons/m4a1/m4a1_clipout.wav" )
//"Weapon_M4A1.Clipin"
util.PrecacheSound( "weapons/m4a1/m4a1_clipin.wav" )
//"Weapon_M4A1.Boltpull"
util.PrecacheSound( "weapons/m4a1/m4a1_boltpull.wav" )
//"Weapon_M4A1.Deploy"
util.PrecacheSound( "weapons/m4a1/m4a1_deploy.wav" )

//ELITES
//"Weapon_ELITE.Single"
util.PrecacheSound( "weapons/elite/elite-1.wav" )
//"Weapon_ELITE.Reloadstart"
util.PrecacheSound( "weapons/elite/elite_reloadstart.wav" )
//"Weapon_ELITE.Lclipin"
util.PrecacheSound( "weapons/elite/elite_leftclipin.wav" )
//"Weapon_ELITE.Clipout"
util.PrecacheSound( "weapons/elite/elite_clipout.wav" )
//"Weapon_ELITE.Sliderelease"
util.PrecacheSound( "weapons/elite/elite_sliderelease.wav" )
//"Weapon_ELITE.Rclipin"
util.PrecacheSound( "weapons/elite/elite_rightclipin.wav" )
//"Weapon_ELITE.Deploy"
util.PrecacheSound( "weapons/elite/elite_deploy.wav" )

//FAMAS
//"Weapon_FAMAS.Single"
util.PrecacheSound( "weapons/famas/famas-1.wav" )
//"Weapon_FAMAS.Clipout"
util.PrecacheSound( "weapons/famas/famas_clipout.wav" )
//"Weapon_FAMAS.Clipin"
util.PrecacheSound( "weapons/famas/famas_clipin.wav" )
//"Weapon_FAMAS.Forearm"
util.PrecacheSound( "weapons/famas/famas_forearm.wav" )

//AUG
//"Weapon_AUG.Single"
util.PrecacheSound( "weapons/aug/aug-1.wav" )
//"Weapon_AUG.Boltpull"
util.PrecacheSound( "weapons/aug/aug_boltpull.wav" )
//"Weapon_AUG.Clipout"
util.PrecacheSound( "weapons/aug/aug_clipout.wav" )
//"Weapon_AUG.Clipin"
util.PrecacheSound( "weapons/aug/aug_clipin.wav" )
//"Weapon_AUG.Boltslap"
util.PrecacheSound( "weapons/aug/aug_boltslap.wav" )
//"Weapon_AUG.Forearm"
util.PrecacheSound( "weapons/aug/aug_forearm.wav" )

//AWP
//"Weapon_AWP.Single"
util.PrecacheSound( "weapons/awp/awp1.wav" )
//"Weapon_AWP.Clipin"
util.PrecacheSound( "weapons/awp/awp_clipin.wav" )
//"Weapon_AWP.Clipout"
util.PrecacheSound( "weapons/awp/awp_clipout.wav" )
//"Weapon_AWP.Bolt"
util.PrecacheSound( "weapons/awp/awp_bolt.wav" )

//KNIFE
//"Weapon_Knife.Deploy"
util.PrecacheSound( "indeploy1.wav" )
//"Weapon_Knife.Hit"
util.PrecacheSound( "inhit1.wav" )
util.PrecacheSound( "inhit2.wav" )
util.PrecacheSound( "inhit3.wav" )
util.PrecacheSound( "inhit4.wav" )
//"Weapon_Knife.HitWall"
util.PrecacheSound( "inhitwall1.wav" )
//"Weapon_Knife.Slash"
util.PrecacheSound( "inslash1.wav" )
util.PrecacheSound( "inslash2.wav" )
//"Weapon_Knife.Stab"
util.PrecacheSound( "instab.wav" )

//DEAGLE
//"Weapon_DEagle.Single"
util.PrecacheSound( "weapons/DEagle/deagle-1.wav" )
//"Weapon_DEagle.Clipout"
util.PrecacheSound( "weapons/DEagle/de_clipout.wav" )
//"Weapon_DEagle.Clipin"
util.PrecacheSound( "weapons/DEagle/de_clipin.wav" )
//"Weapon_DEagle.Deploy"
util.PrecacheSound( "weapons/DEagle/de_deploy.wav" )
//"Weapon_DEagle.Slideback"
util.PrecacheSound( "weapons/DEagle/de_slideback.wav" )

//AK47
//"Weapon_AK47.Single"
util.PrecacheSound( "weapons/ak47/ak47-1.wav" )
//"3rd_Weapon_AK47.Single"
util.PrecacheSound( "weapons/ak47/ak47-1.wav" )
//"Weapon_AK47.BoltPull"
util.PrecacheSound( "weapons/ak47/ak47_boltpull.wav" )
//"Weapon_AK47.Clipin"
util.PrecacheSound( "weapons/ak47/ak47_clipin.wav" )
//"Weapon_AK47.Clipout"
util.PrecacheSound( "weapons/ak47/ak47_clipout.wav" )

//"Default.PullPin_Grenade"
util.PrecacheSound( "weapons/pinpull.wav" )

//"Flashbang.Explode"
util.PrecacheSound( "weapons/flashbang/flashbang_explode1.wav" )	
util.PrecacheSound( "weapons/flashbang/flashbang_explode2.wav" )	
//"Flashbang.Bounce"
util.PrecacheSound( "weapons/flashbang/grenade_hit1.wav" )

//"SmokeGrenade.Bounce"
util.PrecacheSound( "weapons/smokegrenade/grenade_hit1.wav" )

//"HEGrenade.Bounce"
util.PrecacheSound( "weapons/hegrenade/he_bounce-1.wav" )

//"Default.ClipEmpty_Rifle"
util.PrecacheSound( "weapons/ClipEmpty_Rifle.wav" )
//"Default.ClipEmpty_Pistol"
util.PrecacheSound( "weapons/ClipEmpty_Pistol.wav" )
//"Default.Zoom"
util.PrecacheSound( "weapons/zoom.wav" )

//"BaseGrenade.Explode"
util.PrecacheSound( "weapons/hegrenade/explode3.wav" )
util.PrecacheSound( "weapons/hegrenade/explode4.wav" )
util.PrecacheSound( "weapons/hegrenade/explode5.wav" )

//"BaseExplosionEffect.Sound"
util.PrecacheSound( "weapons/debris1.wav" )
util.PrecacheSound( "weapons/debris2.wav" )
//"BaseSmokeEffect.Sound"
util.PrecacheSound( "weapons/smokegrenade/sg_explode.wav" )

//"c4.disarmstart"
util.PrecacheSound( "weapons/c4/c4_disarm.wav" )
//"c4.disarmfinish"
util.PrecacheSound( "weapons/c4/c4_disarm.wav" )
//"c4.explode"
util.PrecacheSound( "weapons/c4/c4_explode1.wav" )
//"c4.click"
util.PrecacheSound( "weapons/c4/c4_click.wav" )
//"c4.plant"
util.PrecacheSound( "weapons/c4/c4_plant.wav" )
//"C4.PlantSound"
util.PrecacheSound( "weapons/c4/c4_beep1.wav" )

//"defuser.equip"
util.PrecacheSound( "items/defuser_equip.wav" )