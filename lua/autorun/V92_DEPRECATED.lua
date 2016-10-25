
AddCSLuaFile()

--	Everything in this file is due to be removed at a future date when I clean it up


-----------------------------------
--	M203
-----------------------------------
sound.Add( {
	name = "INSMIC.M203.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/ins1/weapons/m16a4/m203_fire.wav"
} )


--	THIS FILE WILL BE REMOVED IN THE FUTURE WHEN I REWRITE IT
--	CONCERN YOURSELF WITH SH_V92SCarBases.lua INSTEAD
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Lucky9Two Universal / Generic
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
sound.Add( {
	name = "NineTwo.Univ.Draw" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/draw.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/draw.wav" )

sound.Add( {
	name = "NineTwo.Univ.Holst" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/holster.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/holster.wav" )

sound.Add( {
	name = "L9T_Univ.Holster" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/holster.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/holster.wav" )

sound.Add( {
	name = "L9T_Univ.Draw" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/draw.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/draw.wav" )

sound.Add( {
	name = "L9T_Univ.IronIn2" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron2_in.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/iron2_in.wav" )

sound.Add( {
	name = "L9T_Univ.IronOut2" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron2_out.wav" }
} )

util.PrecacheSound( "jessev92/weapons/univ/iron2_out.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Magenta Generics
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
sound.Add( {
	name = "Mag_Gen.Draw" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "magenta/generic/all_drawweapon1.wav" , "magenta/generic/all_drawweapon2.wav" , "magenta/generic/all_drawweapon3.wav" }
} )

util.PrecacheSound( "magenta/generic/all_drawweapon1.wav" )
util.PrecacheSound( "magenta/generic/all_drawweapon2.wav" )
util.PrecacheSound( "magenta/generic/all_drawweapon3.wav" )

sound.Add( {
	name = "Mag_Gen.Holster" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "magenta/generic/all_holsterweapon1.wav" , "magenta/generic/all_holsterweapon2.wav" }
} )

util.PrecacheSound( "magenta/generic/all_holsterweapon1.wav" )
util.PrecacheSound( "magenta/generic/all_holsterweapon2.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Utilities 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- Magenta Flashlight
------------------------------------------------------------
sound.Add( {
	name = "Util_Flashlight.On" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "magenta/flashlight/on1.wav" , "magenta/flashlight/on2.wav" }
} )

util.PrecacheSound( "magenta/flashlight/on1.wav" )
util.PrecacheSound( "magenta/flashlight/on2.wav" )

sound.Add( {
	name = "Util_Flashlight.Off" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "magenta/flashlight/off1.wav" , "magenta/flashlight/off2.wav" }
} )

util.PrecacheSound( "magenta/flashlight/off1.wav" )
util.PrecacheSound( "magenta/flashlight/off2.wav" )

------------------------------------------------------------
-- L9T Blowtorch
------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Pistols
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- Generic Pistols
------------------------------------------------------------
sound.Add( {
	name = "L9T_GenPis.Reload" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/pistol/pistol_reload1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/pistol/pistol_reload1.wav" )

------------------------------------------------------------
-- MK23 SOCOM
------------------------------------------------------------
sound.Add( {
	name = "L9T.MK23.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mk23socom_hl2/fire1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mk23socom_hl2/fire1.wav" )

sound.Add( {
	name = "L9T.MK23.Reload" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mk23socom_hl2/reload1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mk23socom_hl2/reload1.wav" )

sound.Add( {
	name = "L9T.Colt1911.Dry" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911a1_hl2/empty.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/empty.wav" )

------------------------------------------------------------
-- HL2 Colt 1911
------------------------------------------------------------
sound.Add( {
	name = "HL2.Colt1911.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911a1_hl2/fire2.wav" , "jessev92/weapons/colt1911a1_hl2/fire3.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/fire2.wav" )
util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/fire3.wav" )

sound.Add( {
	name = "HL2.Colt1911.Dry" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911a1_hl2/empty.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/empty.wav" )

sound.Add( {
	name = "HL2.Colt1911.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911a1_hl2/reload1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/reload1.wav" )

------------------------------------------------------------
-- Army Men Colt (DoD:S))
------------------------------------------------------------
sound.Add( {
	name = "AM.1911.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/colt1911dods/shoot.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/shoot.wav" )

sound.Add( {
	name = "AM.1911.ClipOut" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911dods/ClipOut.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/ClipOut.wav" )

sound.Add( {
	name = "AM.1911.ClipIn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911dods/ClipIn.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/ClipIn.wav" )

sound.Add( {
	name = "AM.1911.BoltBack" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911dods/BoltBack.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/BoltBack.wav" )

sound.Add( {
	name = "AM.1911.FiringPinForward" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911dods/FiringPinForward.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/FiringPinForward.wav" )

sound.Add( {
	name = "AM.1911.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911dods/worldreload.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911dods/worldreload.wav" )

------------------------------------------------------------
-- Bulletstorm Screamer Revolver
------------------------------------------------------------
sound.Add( {
	name = "BSScreamer.Fire" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_fire.wav" )

sound.Add( {
	name = "BSScreamer.ClipIn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_in.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_in.wav" )

sound.Add( {
	name = "BSScreamer.ClipOut" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_out.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_out.wav" )

sound.Add( {
	name = "BSScreamer.Slide" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_slide.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_slide.wav" )

sound.Add( {
	name = "BSScreamer.Deploy1" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_deploy1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_deploy1.wav" )

sound.Add( {
	name = "BSScreamer.Deploy2" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/screamer_deploy2.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/screamer_deploy2.wav" )

------------------------------------------------------------
-- N99 10mm Pistol
------------------------------------------------------------
sound.Add( {
	name = "FO3_10mm.Fire" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/10mm/10mmpistol_fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/10mm/10mmpistol_fire.wav" )

sound.Add( {
	name = "FO3_10mm.Dry" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/10mm/10mmpistol_empty.wav" }
} )

util.PrecacheSound( "jessev92/weapons/10mm/10mmpistol_empty.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Sub Machine Guns 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- HL2 MP5 EOD
------------------------------------------------------------
sound.Add( {
	name = "HL2.MP5EOD.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/fire1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/smg1/fire1.wav" )

sound.Add( {
	name = "HL2.MP5EOD.Dry" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/colt1911a1_hl2/empty.wav" }
} )

util.PrecacheSound( "jessev92/weapons/colt1911a1_hl2/empty.wav" )

sound.Add( {
	name = "HL2.MP5EOD.BoltPull" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mp5_eod/mp5_boltpull.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mp5_eod/mp5_boltpull.wav" )

sound.Add( {
	name = "HL2.MP5EOD.BoltSlap" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mp5_eod/mp5_boltslap.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mp5_eod/mp5_boltslap.wav" )

sound.Add( {
	name = "HL2.MP5EOD.Draw" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mp5_eod/mp5_deploy.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mp5_eod/mp5_deploy.wav" )

sound.Add( {
	name = "HL2.MP5EOD.ClipIn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mp5_eod/mp5_ClipIn.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mp5_eod/mp5_ClipIn.wav" )

sound.Add( {
	name = "HL2.MP5EOD.ClipOut" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/mp5_eod/mp5_ClipOut.wav" }
} )

util.PrecacheSound( "jessev92/weapons/mp5_eod/mp5_ClipOut.wav" )

sound.Add( {
	name = "NineTwo.SMG.FireM" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/fire1.wav" }
} )

------------------------------------------------------------
-- Generic SMG
------------------------------------------------------------
sound.Add( {
	name = "NineTwo.SMG.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/reload.wav" }
} )

sound.Add( {
	name = "NineTwo.SMG.SwitchS" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/switch_single.wav" }
} )

sound.Add( {
	name = "NineTwo.SMG.SwitchB" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/switch_burst.wav" }
} )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Assualt Rifles
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- HK416 #1 (CSS)
------------------------------------------------------------
sound.Add( {
	name = "L9T_M4KK.FireS" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/m4kk_css1/1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/1.wav" )

sound.Add( {
	name = "L9T_M4KK.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/m4kk_css1/unsil-1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/unsil-1.wav" )

sound.Add( {
	name = "L9T_M4KK.ClipOut" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/ClipOut.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/ClipOut.wav" )

sound.Add( {
	name = "L9T_M4KK.ClipIn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/ClipIn.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/ClipIn.wav" )

sound.Add( {
	name = "L9T_M4KK.BoltPull" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/BoltPull.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/BoltPull.wav" )

sound.Add( {
	name = "L9T_M4KK.Draw" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/draw.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/draw.wav" )

sound.Add( {
	name = "L9T_M4KK.Safety" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/Safety.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/Safety.wav" )

sound.Add( {
	name = "L9T_M4KK.Deploy" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/deploy.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/deploy.wav" )

sound.Add( {
	name = "L9T_M4KK.SilOn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/silencer_on.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/silencer_on.wav" )

sound.Add( {
	name = "L9T_M4KK.SilOff" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4kk_css1/silencer_off.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4kk_css1/silencer_off.wav" )

------------------------------------------------------------
-- HK416 #2 (CSS)
------------------------------------------------------------
sound.Add( {
	name = "WeaponHK416.FireS" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/hk416_css1/416-1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416-1.wav" )

sound.Add( {
	name = "WeaponHK416.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/hk416_css1/416_unsil-1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_unsil-1.wav" )

sound.Add( {
	name = "WeaponHK416.ClipOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_ClipOut.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_ClipOut.wav" )

sound.Add( {
	name = "WeaponHK416.ClipIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_ClipIn.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_ClipIn.wav" )

sound.Add( {
	name = "WeaponHK416.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_BoltBack.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_BoltBack.wav" )

sound.Add( {
	name = "WeaponHK416.BoltCatch" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_BoltCatch.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_BoltCatch.wav" )

sound.Add( {
	name = "WeaponHK416.BoltRelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_BoltRelease.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_BoltRelease.wav" )

sound.Add( {
	name = "WeaponHK416.MagDrop" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/MagDrop.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/MagDrop.wav" )

sound.Add( {
	name = "WeaponHK416.Deploy" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_deploy.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_deploy.wav" )

sound.Add( {
	name = "WeaponHK416.silencer_on" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/hk416_css1/416_silencer_on.wav" }
} )

util.PrecacheSound( "jessev92/weapons/hk416_css1/416_silencer_on.wav" )

------------------------------------------------------------
-- LR300 (HL2)
------------------------------------------------------------
sound.Add( {
	name = "NineTwo.LRThreeHund.FireM" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m4_ins/fire1.wav" , "jessev92/weapons/m4_ins/fire2.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m4_ins/fire1.wav" )
util.PrecacheSound( "jessev92/weapons/m4_ins/fire2.wav" )

sound.Add( {
	name = "NineTwo.LRThreeHund.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/lr300/reload_rotate.wav" }
} )

util.PrecacheSound( "jessev92/weapons/lr300/reload_rotate.wav" )

sound.Add( {
	name = "NineTwo.LRThreeHund.Push" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/lr300/reload_push.wav" }
} )

util.PrecacheSound( "jessev92/weapons/lr300/reload_push.wav" )

------------------------------------------------------------
-- Army Men M16A1 (CSS)
------------------------------------------------------------
sound.Add( {
	name = "AM.M16A1.FireS" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/am_m16a1/fire-1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/fire-1.wav" )

sound.Add( {
	name = "AM.M16A1.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		={ "jessev92/weapons/am_m16a1/unsil-1.wav"}
	sound = { "jessev92/armymen/sargerifle.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/unsil-1.wav" )

sound.Add( {
	name = "AM.M16A1.ClipOut" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/ClipOut.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/ClipOut.wav" )

sound.Add( {
	name = "AM.M16A1.ClipIn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/ClipIn.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/ClipIn.wav" )

sound.Add( {
	name = "AM.M16A1.BoltPull" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/BoltPull.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/BoltPull.wav" )

sound.Add( {
	name = "AM.M16A1.Deploy" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/deploy.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/deploy.wav" )

sound.Add( {
	name = "AM.M16A1.SilOn" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/silon.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/silon.wav" )

sound.Add( {
	name = "AM.M16A1.SilOff" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/am_m16a1/siloff.wav" }
} )

util.PrecacheSound( "jessev92/weapons/am_m16a1/siloff.wav" )

------------------------------------------------------------
-- Bulletstorm Peacemaker Carbine
------------------------------------------------------------
sound.Add( {
	name = "BSPMCarbine.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/bulletstorm/peacemakercarbine_fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/peacemakercarbine_fire.wav" )

sound.Add( {
	name = "BSPMCarbine.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/bulletstorm/peacemakercarbine_draw.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/peacemakercarbine_draw.wav" )

sound.Add( {
	name = "BSPMCarbine.Reload" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/bulletstorm/peacemakercarbine_reload.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/peacemakercarbine_reload.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Snipers 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- HL2B .50 Sniper (HL2)
------------------------------------------------------------
sound.Add( {
	name = "NineTwo.BetaSniper.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/sniper/fire1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/sniper/fire1.wav" )

sound.Add( {
	name = "NineTwo.BetaSniper.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/sniper/reload.wav" }
} )

util.PrecacheSound( "jessev92/weapons/sniper/reload.wav" )

------------------------------------------------------------
-- Bulletstorm Head Hunter Sniper
------------------------------------------------------------
sound.Add( {
	name = "BSHHunter.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/headhunter_fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/headhunter_fire.wav" )

sound.Add( {
	name = "BSHHunter.Draw" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/headhunter_draw.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/headhunter_draw.wav" )

sound.Add( {
	name = "BSHHunter.Reload" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/bulletstorm/headhunter_reload.wav" }
} )

util.PrecacheSound( "jessev92/weapons/bulletstorm/headhunter_reload.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Shotguns 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- Remington 870 (HL2)
------------------------------------------------------------
sound.Add( {
	name = "NineTwo.EightSeventy.FireM" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/remington870/fire1.wav" , "jessev92/weapons/remington870/fire2.wav" }
} )

sound.Add( {
	name = "NineTwo.EightSeventy.FireS" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/remington870/fire_dbl.wav" }
} )

sound.Add( {
	name = "NineTwo.EightSeventy.Cock" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/remington870/cock.wav" }
} )

------------------------------------------------------------
-- Generic Shotgun Shell Insert
------------------------------------------------------------
sound.Add( {
	name = "NineTwo.Shotty.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/shotgun/reload1.wav" , "jessev92/weapons/shotgun/reload2.wav" , "jessev92/weapons/shotgun/reload3.wav" }
} )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Melee Weapons 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------
-- Fistful of Frags Fists
------------------------------------------------------------
sound.Add( {
	name = "FoF.Fists.Punch" ,
	channel = CHAN_AUTO ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/fists/fists_punch1.wav" , "jessev92/weapons/fists/fists_punch2.wav" , "jessev92/weapons/fists/fists_punch3.wav" , "jessev92/weapons/fists/fists_punch4.wav" }
} )

sound.Add( {
	name = "FoF.Fists.Miss" ,
	channel = CHAN_AUTO ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/fists/fists_miss1.wav" , "jessev92/weapons/fists/fists_miss2.wav" , "jessev92/weapons/fists/fists_miss3.wav" , "jessev92/weapons/fists/fists_miss4.wav" }
} )

sound.Add( {
	name = "L9T.LanternPunch" ,
	channel = CHAN_AUTO ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/fists/fists_punch1.wav" , "jessev92/weapons/fists/fists_punch2.wav" , "jessev92/weapons/fists/fists_punch3.wav" , "jessev92/weapons/fists/fists_punch4.wav" }
} )

sound.Add( {
	name = "L9T.LanternPunchMiss" ,
	channel = CHAN_AUTO ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/fists/fists_miss1.wav" , "jessev92/weapons/fists/fists_miss2.wav" , "jessev92/weapons/fists/fists_miss3.wav" , "jessev92/weapons/fists/fists_miss4.wav" }
} )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLES 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--surface.PlaySound( "vehicles/junker/radar_ping_friendly1.wav" )
sound.Add( {
	name = "EPRadar_Ping" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "vehicles/junker/radar_ping_friendly1.wav" }
} )

util.PrecacheSound( "vehicles/junker/radar_ping_friendly1.wav" )

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Halo 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
sound.Add( {
	name = "Halo_M68_Fire" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/halo/warthog/m68_fire1.wav" , "jessev92/halo/warthog/m68_fire2.wav" , "jessev92/halo/warthog/m68_fire3.wav" }
} )

util.PrecacheSound( "jessev92/halo/warthog/m68_fire1.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_fire2.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_fire3.wav" )

sound.Add( {
	name = "Halo_M68_Hit" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/halo/warthog/m68_hit1.wav" , "jessev92/halo/warthog/m68_hit2.wav" }
} )

util.PrecacheSound( "jessev92/halo/warthog/m68_hit1.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_hit2.wav" )

-----------------------------------------------------
-- AH1Z Viper
-----------------------------------------------------
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
	name = "NineTwo.SMG.FireM" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/fire1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/smg1/fire1.wav" )

------------------------------------------------------------
-- MG42 (RnL)
------------------------------------------------------------
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

------------------------------------------------------------
-- Wirbelwind (RnL)
------------------------------------------------------------
sound.Add( {
	name = "RnL.Wirbelwind.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/vehicles/spg/wirbelwind_fire_01.wav" , "jessev92/vehicles/spg/wirbelwind_fire_02.wav" , "jessev92/vehicles/spg/wirbelwind_fire_03.wav" , "jessev92/vehicles/spg/wirbelwind_fire_04.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_01.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_02.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_03.wav" )
util.PrecacheSound( "jessev92/vehicles/spg/wirbelwind_fire_04.wav" )

------------------------------------------------------------
-- Overheat Systems
------------------------------------------------------------
sound.Add( {
	name = "L92.Overheat.Ready" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	sound = { "jessev92/weapons/m16a1/magspank.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m16a1/magspank.wav" )

sound.Add( {
	name = "L92.Overheat" ,
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/flaregun/fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/flaregun/fire.wav" )

------------------------------------------------------------
-- Helicopter Start #1
------------------------------------------------------------
sound.Add( {
	name = "Heli.Start" ,
	channel = CHAN_AUTO ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "HelicopterVehicle/HeliStart.mp3" }
} )

------------------------------------------------------------
-- Minigun Fire #1
------------------------------------------------------------
sound.Add( {
	name = "Minigun.OneFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire1.wav" }
} )

------------------------------------------------------------
-- Minigun Fire #2
------------------------------------------------------------
sound.Add( {
	name = "Minigun.TwoFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire2.wav" }
} )

------------------------------------------------------------
-- Minigun Fire 0.1 Bits
------------------------------------------------------------
sound.Add( {
	name = "Minigun.TwoFire.Bits" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/minigun_fire2_01.mp3" , "jessev92/weapons/minigun_fire2_02.mp3" , "jessev92/weapons/minigun_fire2_03.mp3" , "jessev92/weapons/minigun_fire2_04.mp3" , "jessev92/weapons/minigun_fire2_05.mp3" , "jessev92/weapons/minigun_fire2_06.mp3" , "jessev92/weapons/minigun_fire2_07.mp3" , "jessev92/weapons/minigun_fire2_08.mp3" , "jessev92/weapons/minigun_fire2_09.mp3" }
} )

util.PrecacheSound( "jessev92/weapons/minigun_fire2_01.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_02.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_03.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_04.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_05.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_06.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_07.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_08.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_09.mp3" )

------------------------------------------------------------
-- Minigun Fire #3
------------------------------------------------------------
sound.Add( {
	name = "Minigun.ThreeFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire3.wav" }
} )

------------------------------------------------------------
-- Minigun Fire #4
------------------------------------------------------------
sound.Add( {
	name = "Minigun.FourFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire4.wav" }
} )

------------------------------------------------------------
-- Minigun Fire #5
------------------------------------------------------------
sound.Add( {
	name = "Minigun.FiveFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire5.wav" }
} )

------------------------------------------------------------
-- INS M203
------------------------------------------------------------
sound.Add( {
	name = "INS.M203.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/m16a4_ins/m203-1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m16a4_ins/m203-1.wav" )

------------------------------------------------------------
-- BF2 UH60
------------------------------------------------------------
sound.Add( {
	name = "BF2.UH60.On" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/vehicles/aircraft/uh60_on.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aircraft/uh60_on.wav" )

sound.Add( {
	name = "BF2.UH60.Loop" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/vehicles/aircraft/uh60_loop.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aircraft/uh60_loop.wav" )

------------------------------------------------------------
-- BF2 MGs
------------------------------------------------------------
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
	name = "BF2.M2MG.Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/50cal_fire.mp3" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/50cal_fire.mp3" )

------------------------------------------------------------
-- BF2 Artillery
------------------------------------------------------------
sound.Add( {
	name = "BF2.Artillery.Fall" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 1 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/Artillery_projectile_1.wav" , "jessev92/bf2/weapons/Artillery_projectile_2.wav" , "jessev92/bf2/weapons/Artillery_projectile_3.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_1.wav" )
util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_2.wav" )
util.PrecacheSound( "jessev92/bf2/weapons/Artillery_projectile_3.wav" )

------------------------------------------------------------
-- BF2 Eryx
------------------------------------------------------------
sound.Add( {
	name = "BF2_Eryx_Reload" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 1 ,
	--pitch = { 90, 110 }, 
	sound = { "jessev92/bf2/weapons/Eryx_Reload_1p.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Eryx_Reload_1p.wav" )

------------------------------------------------------------
-- BF2 Rocket Engine
------------------------------------------------------------
sound.Add( {
	name = "BF2_Rocket_Engine" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 1 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/bf2/weapons/Rocket_engine_start_idle.wav" }
} )

util.PrecacheSound( "jessev92/bf2/weapons/Rocket_engine_start_idle.wav" )

------------------------------------------------------------
-- BF2 US VO
------------------------------------------------------------
sound.Add( {
	name = "BF2.USGr.Heal" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf2/vo/us_gr_heal1.wav" , "jessev92/bf2/vo/us_gr_heal2.wav" }
} )

util.PrecacheSound( "jessev92/bf2/vo/us_gr_heal1.wav" )
util.PrecacheSound( "jessev92/bf2/vo/us_gr_heal2.wav" )

sound.Add( {
	name = "BF2.USGr.Ammo" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf2/vo/us_gr_needammo1.wav" , "jessev92/bf2/vo/us_gr_needammo2.wav" }
} )

util.PrecacheSound( "jessev92/bf2/vo/us_gr_needammo1.wav" )
util.PrecacheSound( "jessev92/bf2/vo/us_gr_needammo2.wav" )

sound.Add( {
	name = "BF2.Artillery.Alert" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf2/vo/us_cmd_artyalert1.wav" }
} )

util.PrecacheSound( "jessev92/bf2/vo/us_cmd_artyalert1.wav" )

------------------------------------------------------------
-- BF2 M6 Linebacker
------------------------------------------------------------
sound.Add( {
	name = "BF2.M6.Fire" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/vehicles/aav/m6_autocannon_3p.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aav/m6_autocannon_3p.wav" )

sound.Add( {
	name = "BF2.M6.StIdSt" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/vehicles/aav/m6_startstopidle.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aav/m6_startstopidle.wav" )

sound.Add( {
	name = "BF2.AAV.Reload" ,
	channel = CHAN_AUTO ,
	volume = 1 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/vehicles/aav/m6_missile_reload.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/aav/m6_missile_reload.wav" )

------------------------------------------------------------
-- Black Mesa .50
------------------------------------------------------------
sound.Add( {
	name = "BMS.50cal" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bms/50cal_single1.wav" , "jessev92/bms/50cal_single2.wav" , "jessev92/bms/50cal_single3.wav" }
} )

util.PrecacheSound( "jessev92/bms/50cal_single1.wav" )
util.PrecacheSound( "jessev92/bms/50cal_single2.wav" )
util.PrecacheSound( "jessev92/bms/50cal_single3.wav" )

------------------------------------------------------------
-- SCar 7.62 Coax
------------------------------------------------------------
sound.Add( {
	name = "SCar.CoaxLMG" ,
	channel = CHAN_WEAPON ,
	volume = 0.3 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "scartank/turretfire.wav" }
} )

util.PrecacheSound( "scartank/turretfire.wav" )

------------------------------------------------------------
-- BF3 M1A2
------------------------------------------------------------
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
	channel = CHAN_AUTO ,
	volume = 1.0 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_gadget_zoom2.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_gadget_zoom2.wav" )

sound.Add( {
	name = "BF3.M1A2Cannon" ,
	channel = CHAN_AUTO ,
	volume = 0.5 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_cannon_fire.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_cannon_fire.wav" )

sound.Add( {
	name = "BF3.M1A2Reload" ,
	channel = CHAN_AUTO ,
	volume = 0.5 ,
	level = 0.75 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bf3/m1a2_cannon_reload.wav" }
} )

util.PrecacheSound( "jessev92/bf3/m1a2_cannon_reload.wav" )
--	THIS FILE WILL BE REMOVED IN THE FUTURE WHEN I REWRITE IT
--	CONCERN YOURSELF WITH SH_V92SCarBases.lua INSTEAD
AddCSLuaFile( )
local veh = nil
local isScarSeat = nil
local SCar = nil
local plyAng = nil
local vehAng = nil

local function SCarOverrideTurretAnim( ply , ent )
	--print( "SCarOverrideTurretAnim" )
	--Checking if the player is in a vehicle
	if ply:InVehicle( ) then
		--Msg("Checked In Vehicle\n")
		--Getting the vehicle
		veh = ply:GetVehicle( )
		--Is the vehicle a seat in a SCar?
		isScarSeat = veh:GetNetworkedInt( "SCarSeat" )
		--Getting the SCar
		SCar = veh:GetNetworkedEntity( "SCarEnt" )

		--print( "TurretAnim - is In SCar" )
		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeat" ) then
			--print( "TurretAnim - IsTurretSeat" )
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -13 , 0 , -39 ) )
			--[[
			--Making the player face the direction of the turret.

			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 

			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 

			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 

			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET

			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			]]
			--//Overriding the animation here
			--ply.CalcSeqOverride = ply:LookupSequence( "Man_gun" )
			--ply.CalcSeqOverride = ply:LookupSequence( ACT_HL2MP_IDLE_DUEL )
			--ply.CalcSeqOverride = ply:LookupSequence( "idle_dual" )
			--ply.CalcSeqOverride = ply:LookupSequence( "1745" ) 
			--ply:SetSequence( ply.CalcSeqOverride ) 
			ply:DoAnimationEvent( 0 ) --ACT_HL2MP_IDLE_DUEL ) 

			--ply:AnimRestartGesture( 6, 1898, false ) --ACT_HL2MP_IDLE_DUEL ) 
			--ply:SetAnimation( 1847 ) 
			return true
		end

		--print( "something" )
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatTwo" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -2 , 0 , -27 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatThree" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -2 , 0 , -18 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatFour" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -2 , 0 , -32 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatFive" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 4 , 0 , -26 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatSix" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 4 , 0 , -21 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatSeven" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 4 , 0 , -37 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatEight" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -2 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatNine" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(-2,0,0) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsTurretSeatTen" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -2 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 3 and veh:GetNetworkedBool( "IsCmdTurretSeat" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -5 , 0 , -18 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsCmdTurretSeatTwo" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 1 , 0 , -25 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsCmdTurretSeatThree" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -5 , 0 , -18 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsSeatedGunner" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 0 , 0 , -4 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsSeatedGunnerTwo" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsSeatedGunnerThree" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -8 , 0 , -12 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsSeatedGunnerFour" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -6 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsSeatedGunnerFive" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsLeftTurret" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "LeftTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsRightTurret" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "RightTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsRavLmgTwo" ) then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "LmgTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsRavLmgThree" ) then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "LmgTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsRavSeatGlTwo" ) then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 0 , 0 , -30 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "GlTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsRavSeatGlThree" ) then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "GlTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "IsRLMG42Fr" ) then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -16 , 0 , -39 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "FrontTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsRLMG42Bk" ) then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -6 , 0 , -39 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "RearTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		------------------------------
		------------------------------
		------------------------------
		if isScarSeat == 1 and veh:GetNetworkedBool( "IsGunnerCrouch" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -10 , 0 , -30 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsGunnerCrouchTwo" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -0 , 10 , -25 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsGunnerCrouchThree" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( -0 , -20 , -25 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 1 and veh:GetNetworkedBool( "IsHowitGunner" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 2 and veh:GetNetworkedBool( "IsHowitGunnerTwo" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "IsTailbedCrouch" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 5 , 0 , -15 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "RightTurret" ):GetAngles() 
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "IsCougarGunner" ) then
			--Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			--Making the player face the direction of the turret.
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles( )
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles( )
			--Use the vehicles pitch
			plyAng.p = vehAng.p
			--Use the vehicles roll
			plyAng.r = vehAng.r
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end
	end
end

hook.Add( "UpdateAnimation" , "SCarOverrideTurretAnim" , SCarOverrideTurretAnim )

---------------------------------------------
---------------------------------------------
--		SOUND TABLES
---------------------------------------------
---------------------------------------------

---------------------------------------------
---------------------------------------------
--	Everything past this point is deprecated
---------------------------------------------
---------------------------------------------

sound.Add( {
	name = "V92_128mm_Fire" ,
	channel = CHAN_WEAPON ,
	volume = 1 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/128mm_fire_1.wav" , "jessev92/weapons/128mm_fire_2.wav" , "jessev92/weapons/128mm_fire_3.wav" }
} )

sound.Add( {
	name = "NineTwo.SMG.FireM" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/smg1/fire1.wav" }
} )

util.PrecacheSound( "jessev92/weapons/smg1/fire1.wav" )

sound.Add( {
	name = "L92.Overheat.Ready" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/weapons/m16a1/magspank.wav" }
} )

util.PrecacheSound( "jessev92/weapons/m16a1/magspank.wav" )

sound.Add( {
	name = "L92.Overheat" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 }, 
	sound = { "jessev92/weapons/flaregun/fire.wav" }
} )

util.PrecacheSound( "jessev92/weapons/flaregun/fire.wav" )

sound.Add( {
	name = "Minigun.OneFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire1.wav" }
} )

sound.Add( {
	name = "Minigun.TwoFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire2.wav" }
} )

sound.Add( {
	name = "Minigun.TwoFire.Bits" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/minigun_fire2_01.mp3" , "jessev92/weapons/minigun_fire2_02.mp3" , "jessev92/weapons/minigun_fire2_03.mp3" , "jessev92/weapons/minigun_fire2_04.mp3" , "jessev92/weapons/minigun_fire2_05.mp3" , "jessev92/weapons/minigun_fire2_06.mp3" , "jessev92/weapons/minigun_fire2_07.mp3" , "jessev92/weapons/minigun_fire2_08.mp3" , "jessev92/weapons/minigun_fire2_09.mp3" }
} )

util.PrecacheSound( "jessev92/weapons/minigun_fire2_01.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_02.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_03.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_04.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_05.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_06.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_07.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_08.mp3" )
util.PrecacheSound( "jessev92/weapons/minigun_fire2_09.mp3" )

sound.Add( {
	name = "Minigun.ThreeFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire3.wav" }
} )

sound.Add( {
	name = "Minigun.FourFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire4.wav" }
} )

sound.Add( {
	name = "Minigun.FiveFire" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/weapons/minigun_fire5.wav" }
} )

sound.Add( {
	name = "V92.Wipers" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 110 } ,
	sound = { "jessev92/vehicles/windscreen_wipers_loop.wav" }
} )

util.PrecacheSound( "jessev92/vehicles/windscreen_wipers_loop.wav" )

---------------------------------------------
---------------------------------------------
--	Black Mesa Source
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "BMS.50cal" ,
	channel = CHAN_WEAPON ,
	volume = 0.55 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/bms/50cal_single1.wav" , "jessev92/bms/50cal_single2.wav" , "jessev92/bms/50cal_single3.wav" }
} )

util.PrecacheSound( "jessev92/bms/50cal_single1.wav" )
util.PrecacheSound( "jessev92/bms/50cal_single2.wav" )
util.PrecacheSound( "jessev92/bms/50cal_single3.wav" )

---------------------------------------------
---------------------------------------------
--	SCars Slim
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "SCar.TankTracks" ,
	channel = CHAN_BODY ,
	volume = 0.75 ,
	level = 75 ,
	--pitch		= { 95, 105 }, 
	sound = { "scartank/tracksmove.wav" }
} )

util.PrecacheSound( "scartank/tracksmove.wav" )

sound.Add( {
	name = "SCar.TankEngine" ,
	channel = CHAN_BODY ,
	volume = 1 ,
	level = 140 ,
	--pitch		= { 95, 105 }, 
	sound = { "scartank/tankengine.wav" }
} )

util.PrecacheSound( "scartank/tracksmove.wav" )

sound.Add( {
	name = "SCar.CoaxLMG" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "scartank/turretfire.wav" }
} )

util.PrecacheSound( "scartank/turretfire.wav" )

sound.Add( {
	name = "SCar.TankCannon" ,
	channel = CHAN_WEAPON ,
	volume = 0.75 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "scartank/fire.wav" }
} )

util.PrecacheSound( "scartank/fire.wav" )

sound.Add( {
	name = "SCar.TankReload" ,
	channel = CHAN_ITEM ,
	volume = 0.75 ,
	level = 140 ,
	--pitch		= { 95, 105 }, 
	sound = { "scartank/reload.wav" }
} )

util.PrecacheSound( "scartank/reload.wav" )