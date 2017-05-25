AddCSLuaFile( )

local version = "Version: 2017/04/01 @ 0000\n"
------------------------------------------------------
--	Milestones										--
------------------------------------------------------
--	Add Penetration - Done 2016/09/28
--	Redux shotgun reloads - Done 2016/09/27
--	Contact & instructions - Done 2016/09/29
--	Purpose - Done 2016/10/02
--	Dynamic hold type animations - Done 2016/10/14
--	Single muzzle flash effect system - Done 2016/10/14
--	Single shell ejection effect system - Done 2016/10/14
--	Updated options menu - Done 2016/10/23
--	Added holster animations to the animation system - Done 2016/10/23
--	Added reset HUD button to menu - Done 2016/10/23
--	Made new RoF icons - Done 2016/10/23
--	Added revolver-style shell ejections - Done 2016/11/08
--	Fixed default positions for HUD - Done 2016/11/08
--	Dynamic sound ranges - Done 2016/12/09
--	Accuracy: Float --> Effective Range - Done 2016/12/10
--	Added door busting ability to weapons - Done 2016/12/27
--	Added stance icons to HUD - Done 2017/01/02
--	Added Jamming/Weapon Reliability - Done 2017/01/09
--	Added toggle for iron sight behavior - Done 2017/01/19
--	Added dynamic lights to muzzle flashes - Done 2017/01/22
--	Added BulletCraft sound effects to the weapons - Done 2017/02/10
--	Added support for 'special' fire types - Done 2017/03/01
--	Added support for DoD:S Weapon Pack - Done 2017/03/04
--	Added support for rifle-butt melees - Done 2017/03/05
--	Added support for up to five kitbag gibs - Done 2017/03/05
--	Added Shell-Loading Weapon Base: weapons/v92_base_swep_shell.lua - Done 2017/03/26
--	Added Melee Weapon Base: weapons/v92_base_swep_melee.lua - Done 2017/03/26
--	Re-coded shell reloads from sratch to work how I initially intended - Done 2017/03/26
--	Made zoom cycling fade in and out instead of being instant - Done 2017/03/26
--	Added grenade weapon base: weapons/v92_base_swep_grenade.lua - Done 2017/03/29
--	Added Frag grenade entity base - Done 2017/03/29
--	Added Smoke grenade entity base - Done 2017/03/29
--	Added Flashbang grenade entity base - Done 2017/03/29
--	Added Flare grenade entity base - Done 2017/03/29
--	Added Akimbo Base - Done 2017/03/30
--	Released first version of the V92 Vehicle Base - Done 2017/03/30
--	Released the Damage Inc. vehicle pack - Done 2107/03/30
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
--	Changes this Patch
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
--	Changelog:
------------------------------------------------------
--	Released the Parachute Weapon Base - Done 2017/04/01
------------------------------------------------------
--	Affected Add-Ons
------------------------------------------------------
--	[W] Resistance & Liberation ( ERROR )
--	[W] BF2 Parachute ( ERROR )
--	[W] BF3 Parachute ( ERROR )
--	[W] BF2142 Parachute ( ERROR )
--	[W] Just Cause Parachute ( ERROR )
--	[W] Frontlines: FoW Parachute ( ERROR )
--	[W] GTA IV Parachute ( ERROR )
--	[W] Resistance & Liberation ( ERROR )
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
--	Stretch Goals
------------------------------------------------------
------------------------------------------------------
------------------------------------------------------
--	All-weapon rifle butting/pistol whipping
--	Fixed RT scopes being fully zoomed by default
--	Added zoom cycling to RT scopes
--	Improve akimbo functionality
--	Add DOOM mode - Get your E1M1 on
--	Attachments?
--	My version of bullet penetration because the Zoey code needs to go
--	My own iron sight code - MadCow/Siminov works but it's hacky and messy
--	Modernize the options menu - make my own spawn tab and move all my shit there like SimfPhys?
--	Better support for Weapon Weight System
--	Better support for Support SWeps
--	Better support for RT scopes
--	Toggle Zoom for RT Scopes
--	Add AutoWatch
--	Add Richochets
--	Add Weapon Magazine System
--	Add Verbose Information Screen
--	Add Bodily Harm System
------------------------------------------------------
--	Child Packs
------------------------------------------------------
--	[V] Damage Inc. ( 894893543 )
--	
--	[W] Half-Life 2 ( ERROR )
--	[W] Half-Life 2: X Melee ( 709715382 )
--	[W] Half-Life 2: X Pistol ( 709716426 )
--	[W] Half-Life 2: X Rifle ( 709718975 )
--	[W] Half-Life 2: X SMG ( 709717775 )
--	[W] Half-Life 2: X Shotgun ( 709723868 )
--	[W] Half-Life 2: X Sniper ( 709719836 )
--
--	[W] CQC! ( 818750632 )
--	[W] BF3 M320 ( 855378553 )
--	[W] HEAT ( 763862893 )
--	[W] Halo: Reach ( 503422951 )
--	[W] Hitman Blood Money Safari Rifle ( 762491157 )
--	[W] Counter-Strike: Source( 788152557 )
--	[W] Day of Defeat: Source ( 891239198 )
--	
--	[W] BF2 Parachute ( ERROR )
--	[W] BF3 Parachute ( ERROR )
--	[W] BF2142 Parachute ( ERROR )
--	[W] Just Cause Parachute ( ERROR )
--	[W] Frontlines: FoW Parachute ( ERROR )
--	[W] GTA IV Parachute ( ERROR )
--	[W] Resistance & Liberation ( ERROR )
------------------------------------------------------
-- CVars
------------------------------------------------------

if not ConVarExists( "vnt_proj_dmg" ) then
	CreateConVar( "vnt_proj_dmg" , 3 , {  FCVAR_ARCHIVE , FCVAR_REPLICATED  } , "( Float ) Damage multiplier of the V92 projectile shell entities" )
end

if not ConVarExists( "vnt_proj_rad" ) then
	CreateConVar( "vnt_proj_rad" , 2 , {  FCVAR_ARCHIVE , FCVAR_REPLICATED  } , "( Float ) Radius multiplier of the V92 projectile shell entities" )
end

if CLIENT then
	
	if not ConVarExists( "VNT_Debug" ) then		
		CreateClientConVar( "VNT_Debug" , 0 , true , false , "( Boolean ) Toggle debug mode for V92 Base" )	
	end
	
	if not ConVarExists( "VNT_Base_ViewBob_Toggle" ) then		
		CreateClientConVar( "VNT_Base_ViewBob_Toggle" , 0 , true , false , "( Boolean ) The view bob toggle for the V92 Base" )	
	end
	
	if not ConVarExists( "VNT_ViewBob_Mul" ) then		
		CreateClientConVar( "VNT_ViewBob_Mul" , 0.5 , true , false , "( Float ) The view bob multiplier for the V92 Base" )	
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_StanceX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_StanceX" , ( ScrW( ) * 0.47 ) , true , false , "( Float ) The X-position on the screen of the Stance icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_StanceY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_StanceY" , ( ScrH( ) - 175 ) , true , false , "( Float ) The Y-position on the screen of the Stance icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_SuppX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_SuppX" , ( ScrW( ) * 0.55 ) , true , false , "( Float ) The X-position on the screen of the Suppressor icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_SuppY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_SuppY" , ( ScrH( ) - 200 ) , true , false , "( Float ) The Y-position on the screen of the Suppressor icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_StockX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_StockX" , ( ScrW( ) * 0.45 ) , true , false , "( Float ) The X-position on the screen of the stock icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_StockY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_StockY" , ( ScrH( ) - 200 ) , true , false , "( Float ) The Y-position on the screen of the stock icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_RoFX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_RoFX" , ( ScrW( ) * 0.5 ) , true , false , "( Float ) The X-position on the screen of the Rate of Fire icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_RoFY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_RoFY" , ( ScrH( ) - 25 ) , true , false , "( Float ) The Y-position on the screen of the Rate of Fire icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_BipodX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_BipodX" , ( ScrW( ) * 0.6 ) , true , false , "( Float ) The X-position on the screen of the Bipod icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_BipodY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_BipodY" , ( ScrH( ) - 75 ) , true , false , "( Float ) The Y-position on the screen of the Bipod icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_GLMX" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_GLMX" , ( ScrW( ) * 0.4 ) , true , false , "( Float ) The X-position on the screen of the Grenade Launcher icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_HUD_GLMY" ) then
		CreateClientConVar( "VNT_Base_SWep_HUD_GLMY" , ( ScrH( ) - 75 ) , true , false , "( Float ) The Y-position on the screen of the Grenade Launcher icon in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_TracerToggle" ) then
		CreateClientConVar( "VNT_Base_SWep_TracerToggle" , 1 , true , false , "( Boolean ) Toggle the tracers in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_ShellToggle" ) then
		CreateClientConVar( "VNT_Base_SWep_ShellToggle" , 1 , true , false , "( Boolean ) Toggle the shell ejections in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_ShellTime" ) then
		CreateClientConVar( "VNT_Base_SWep_ShellTime" , 30 , true , false , "( Integer ) Lifetime for shell ejections in the V92 SWep Base" )
	end

	if not ConVarExists( "VNT_Base_SWep_FlashToggle" ) then
		CreateClientConVar( "VNT_Base_SWep_FlashToggle" , 1 , true , false , "( Boolean ) Toggle the muzzle flashes in the V92 SWep Base" )
	end
	
	if not ConVarExists( "VNT_Base_SWep_IronsightToggle" ) then
		CreateClientConVar( "VNT_Base_SWep_IronsightToggle" , 0 , true , false , "( Boolean ) True to Toggle Ironsight , False to Hold It for the V92 SWep Base" )
	end
	
	if not ConVarExists( "VNT_Base_SWep_IronSight_Sensitivity" ) then
		CreateClientConVar( "VNT_Base_SWep_IronSight_Sensitivity" , 0.2 , true , false , "( Float ) Sensitivity of mouse movement while iron sighted in the V92 SWep Base" )
	end
	
	if not ConVarExists( "VNT_Base_SWep_BulletCraft_Toggle" ) then
		CreateClientConVar( "VNT_Base_SWep_BulletCraft_Toggle" , 0 , true , false , "( Boolean ) CLIENT Toggle the BulletCraft sound effects in the V92 SWep Base" )
	end
	
end

if not ConVarExists( "VNT_Base_SWep_ClampToggle" ) then
	CreateConVar( "VNT_Base_SWep_ClampToggle" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Toggle CVar Clamping in the V92 SWep Base" )
end

if not ConVarExists( "VNT_Base_SWep_JamToggle" ) then
	CreateConVar( "VNT_Base_SWep_JamToggle" , 0 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Toggle jamming in the V92 SWep Base" )
end

if not ConVarExists( "VNT_Base_SWep_SpeedWeight" ) then
	CreateConVar( "VNT_Base_SWep_SpeedWeight" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Toggle the weight entitySpeed modifier for V92 SWep Base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_SpeedToggle" ) then
	CreateConVar( "VNT_Base_SWep_SpeedToggle" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Toggle the entitySpeed modifiers for V92 SWep Base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_Speed_Run" ) then
	CreateConVar( "VNT_Base_SWep_Speed_Run" , 300 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the max run entitySpeed for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_Speed_Walk" ) then
	CreateConVar( "VNT_Base_SWep_Speed_Walk" , 150 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the max walk entitySpeed for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_BlackFriday_Toggle" ) then
	CreateConVar( "VNT_Base_SWep_BlackFriday_Toggle" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the door buster master enable/disable toggle for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_BlackFriday_ForceMul" ) then
	CreateConVar( "VNT_Base_SWep_BlackFriday_ForceMul" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the door buster multiplier for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_BlackFriday_Range" ) then
	CreateConVar( "VNT_Base_SWep_BlackFriday_Range" , 150 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the door buster range for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_BlackFriday_ResetTimer" ) then
	CreateConVar( "VNT_Base_SWep_BlackFriday_ResetTimer" , 300 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the door buster reset time for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_BlackFriday_ResetToggle" ) then
	CreateConVar( "VNT_Base_SWep_BlackFriday_ResetToggle" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Do doors blown off by V92 SWep base weapons reset?" )
end

if not ConVarExists( "VNT_Base_SWep_SprintNShoot" ) then
	CreateConVar( "VNT_Base_SWep_SprintNShoot" , 0 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Toggle the ability to sprint and shoot" )
end

if not ConVarExists( "VNT_Base_SWep_RecoilMul" ) then
	CreateConVar( "VNT_Base_SWep_RecoilMul" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Float ) Set the clamp for the max recoil for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_AccuracyMul" ) then
	CreateConVar( "VNT_Base_SWep_AccuracyMul" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Float ) Set the clamp for the max accuracy bloom for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_DamageMul" ) then
	CreateConVar( "VNT_Base_SWep_DamageMul" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the damage multiplier for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_RichochetLimit" ) then
	CreateConVar( "VNT_Base_SWep_RichochetLimit" , 5 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Integer ) Set the clamp for the max richochets for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_Base_SWep_SpawnUnloaded" ) then
	CreateConVar( "VNT_Base_SWep_SpawnUnloaded" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Should the weapon spawn unloaded?" )
end

if not ConVarExists( "VNT_Base_SWep_SpawnAmmo" ) then
	CreateConVar( "VNT_Base_SWep_SpawnAmmo" , 0 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) Should the weapon spawn with ammo?" )
end

if not ConVarExists( "VNT_Base_SWep_PrintLocation" ) then
	CreateClientConVar( "VNT_Base_SWep_PrintLocation" , 0 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , true , false , "( Integer ) Print location of the messages; 0 = Centre of screen , 1 = Chat & Console , 2 = Console Only" )
end

if not ConVarExists( "VNT_Base_SWep_Doom_Toggle" ) then
	CreateClientConVar( "VNT_Base_SWep_Doom_Toggle" , 0 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , true , false , "( Boolean ) YOU ARE HUGE THAT MEANS YOU HAVE HUGE GUTSnot  RIP AND TEAR!" )
end

if not ConVarExists( "VNT_Base_SWep_DepthModToggle" ) then
	CreateConVar( "VNT_Base_SWep_DepthModToggle" , 1 , {  FCVAR_REPLICATED , FCVAR_ARCHIVE  } , "( Boolean ) If you're too close to a wall , should we lower the weapon? Works for V92 SWep Base." )
end

if not ConVarExists("VNT_SWep_TorchBMS_Toggle") then CreateConVar("VNT_SWep_TorchBMS_Toggle" , 1 ,  { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

if not ConVarExists("VNT_SWep_Deployable_PlaceDelay") then CreateConVar("VNT_SWep_Deployable_PlaceDelay" , 5 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Deployable_FindRadius") then CreateConVar("VNT_SWep_Deployable_FindRadius" , 96 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

if not ConVarExists("VNT_SWep_Deployable_Medical_GiveDelay") then CreateConVar("VNT_SWep_Deployable_Medical_GiveDelay" , 2 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Deployable_Medical_Charge") then CreateConVar("VNT_SWep_Deployable_Medical_Charge" , 300 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Deployable_Medical_Apply") then CreateConVar("VNT_SWep_Deployable_Medical_Apply" , 5 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

if not ConVarExists("VNT_SWep_Deployable_Ammo_GiveDelay") then CreateConVar("VNT_SWep_Deployable_Ammo_GiveDelay" , 2 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Deployable_Ammo_Charge") then CreateConVar("VNT_SWep_Deployable_Ammo_Charge" , 300 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Deployable_Ammo_Apply") then CreateConVar("VNT_SWep_Deployable_Ammo_Apply" , 5 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

if not ConVarExists("VNT_SWep_Mines_PlaceDelay") then CreateConVar("VNT_SWep_Mines_PlaceDelay" , 5 ,  { FCVAR_REPLICATED, FCVAR_ARCHIVE } ) end
if not ConVarExists("VNT_SWep_Mines_FindRadius") then CreateConVar("VNT_SWep_Mines_FindRadius" , 128 ,  { FCVAR_REPLICATED, FCVAR_ARCHIVE } ) end

------------------------------------------------------
------------------------------------------------------
--	Global Tables
--	Used to provide info globally and to prevent errors
------------------------------------------------------
------------------------------------------------------
VNTCB = VNTCB or {  } 

------------------------------------------------------
--	Generic Information
--	Author and contact information
------------------------------------------------------
VNTCB.Info = VNTCB.Info or { 
	["author"] = "Reverend Jesse V92" , 
	["contact"] = "Steam Group: The Cult of V92" , 
	["instructions"] = "Read the Description!" , 
	["purpose"] = "\"Hic , nos tueatur\"" , 
	
	["name"] = "V92 Add-On Base\n" , 
	["version"] = version , 
	["link"] = "Workshop: http://steamcommunity.com/sharedfiles/filedetails/?id=505106454" , 
	["group"] = "Group: http://steamcommunity.com/groups/CultOfV92" , 
	["vntid"] = "Profile: http://steamcommunity.com/id/JesseVanover" , 
	["smartass"] = "V92: Fixing Your Shit Since 2008!" , 
 } 

concommand.Add( "VNT_About" , function( ply , cmd , args )
	print( "----------\n" .. 
	VNTCB.Info.name .. "\n"  .. 
	VNTCB.Info.link .. "\n" .. 
	VNTCB.Info.version .. "\n" .. 
	"Author: " .. VNTCB.Info.author .. "\n"  .. 
	VNTCB.Info.vntid .. "\n" ..
	VNTCB.Info.group .. "\n\n" .. 
	VNTCB.Info.smartass .. "\n----------" )
end )

------------------------------------------------------
--	Categories
--	Common categories used in my shite content
--	Don't take these as a sign of confirmed 
--		future content. I'm just adding a tonne 
--		to make it easier if I ever need them.
--	Feel free to use them.
------------------------------------------------------

VNTCB.Category = VNTCB.Category or { 
	["VNT"] = "V92: General" , 
	["Apache"] = "V92: Apache Air Assault" , 
	["ArmyMen"] = "V92: Army Men" , 
	--	Battlefield
	["Battlefield"] = "V92: Battlefield" , 
	["BFUS"] = "V92: Battlefield US" , 
	["BFRU"] = "V92: Battlefield RU" , 
	["BFCH"] = "V92: Battlefield CH" , 
	["BFMEC"] = "V92: Battlefield MEC" , 
	["BFIDF"] = "V92: Battlefield IDF" , 
	--	Good Battlefield
	["BF1942"] = "V92: Battlefield 1942" , 
	["BFVietnam"] = "V92: Battlefield Vietnam" , 
	--	Battlefield 2142
	["BF2142"] = "V92: Battlefield 2142" , 
	["BF2142NS"] = "V92: Battlefield 2142 Northern Strike" , 
	--	Battlefield 2
	["BF2"] = "V92: Battlefield 2" , 
	["BF2USMC"] = "V92: Battlefield 2 USMC" , 
	["BF2MEC"] = "V92: Battlefield 2 MEC" , 
	["BF2PLA"] = "V92: Battlefield 2 PLA" , 
	["BF2SF"] = "V92: Battlefield 2 Special Forces" , 
	["BF2AF"] = "V92: Battlefield 2 Armoured Fury" , 
	["BF2EF"] = "V92: Battlefield 2 Euro Forces" , 
	--	Battlefield 2 Mods
	["BF2EoD"] = "V92: Battlefield 2 Eve of Destruction" , 
	["BF2AI"] = "V92: Battlefield 2 Allied Intent" , 
	["BF2Alpha"] = "V92: Battlefield 2 Alpha Project" , 
	["BF2PR"] = "V92: Battlefield 2 Project Reality" , 
	--	New Battlefield
	["BF1943"] = "V92: Battlefield 1943" , 
	["BF3"] = "V92: Battlefield 3" , 
	["BF4"] = "V92: Battlefield 4" , 
	["BFHardlines"] = "V92: Battlefield Hardlines" , 
	["BF1"] = "V92: Battlefield 1" , 
	--	Call of Duty
	["CawwaDooty"] = "V92: Call of Duty" ,
	--	Crysis
	["Crysis"] = "V92: Crysis" , 
	["Crysis2"] = "V92: Crysis 2" , 
	["Crysis3"] = "V92: Crysis 3" ,
	--	Counter-Strike
	["CStrike"] = "V92: Counter-Strike" , 
	["CSS"] = "V92: Counter-Strike: Source" , 
	["CSGO"] = "V92: Counter-Strike: Globally Offensive" , 
	["CSCZ"] = "V92: Counter-Strike: Condition Zero" , 
	--	FallOut
	["FallOut"] = "V92: FallOut" , 
	["FallOut3"] = "V92: FallOut 3" , 
	["FallOut4"] = "V92: FallOut 4" , 
	["FallOutNV"] = "V92: FallOut New Vegas" , 
	--	Westerns
	["FOF"] = "V92: Fistful of Frags" , 
	--	Halo
	["Halo"] = "V92: Halo" , 
	["Halo1"] = "V92: Halo: Combat Evolved" , 
	["Halo2"] = "V92: Halo 2" , 
	["Halo3"] = "V92: Halo 3" , 
	["Halo3ODST"] = "V92: Halo 3 ODST" , 
	["Reach"] = "V92: Halo Reach" , 
	["Halo4"] = "V92: Halo 4" , 
	["Halo4"] = "V92: Halo 5" , 
	--	Movies
	["Heat"] = "V92: HEAT" , 
	["Rambo"] = "V92: Rambo" , 
	--	Half-Life
	["HL1"] = "V92: Half-Life" , 
	["BMS"] = "V92: Black Mesa" , 
	["HL2"] = "V92: Half-Life 2" , 
	["HL2X"] = "V92: Half-Life 2: Expanded" , 
	["AHL2"] = "V92: Action Half-Life 2" , 
	--	Insurgency
	["INS"] = "V92: Insurgency" , 
	["INS2"] = "V92: Insurgency 2" , 
	--	Generic Military Shooters
	["FFoW"] = "V92: Frontlines: FoW" , 
	["JustCause"] = "V92: Just Cause" , 
	["Parachute"] = "V92: Parachutes" , 
	["Mercs2"] = "V92: Mercenaries 2" , 
	["Ravaged"] = "V92: Ravaged" , 
	--	Left4Dead
	["L4D"] = "V92: L4D" , 
	["L4D2"] = "V92: L4D2" , 
	--	Metal Gear
	["MGS"] = "V92: Metal Gear Solid" , 
	["MGS2"] = "V92: Metal Gear Solid 2" , 
	["MGS3"] = "V92: Metal Gear Solid 3" , 
	["MGS4"] = "V92: Metal Gear Solid 4" , 
	["MGSV"] = "V92: Metal Gear Solid V" , 
	--	Sci-Fi
	["ShadCom"] = "V92: Shadow Complex" , 
	["StarTrek"] = "V92: Star Trek" , 
	["StarWars"] = "V92: Star Wars" , 
	["Stargate"] = "V92: Stargate" , 
	["STALKER"] = "V92: S.T.A.L.K.E.R." , 
	--	World Wars
	["WW1"] = "V92: World War I" ,
	["WW2"] = "V92: World War II" ,
	-- Dubbaya Dubbaya Two
	["DmgInc"] = "V92: Damage Inc." ,
	["DODS"] = "V92: Day of Defeat: Source" , 
	["RnL"] = "V92: Resistance & Liberation" , 
	["DOI"] = "V92: Day of Infamy" , 
	["WoT"] = "V92: World of Tanks" , 
	["WW2Allies"] = "V92: World War II :: Allies" ,
	["WW2Axis"] = "V92: World War II :: Axis" ,
	["WW2USA"] = "V92: World War II :: United States" ,
	["WW2UK"] = "V92: World War II :: United Kingdom" ,
	["WW2Germany"] = "V92: World War II :: Nazi Germany" ,
	["WW2Italy"] = "V92: World War II :: Royal Italian Army" ,
	["WW2USSR"] = "V92: World War II :: U.S.S.R." ,
	["WW2Japan"] = "V92: World War II :: Empire of Japan" ,
	--	Fantasy
	["WHFantasy"] = "V92: Warhammer" , 
	["WH40K"] = "V92: Warhammer 40K" , 
	--	Shitposting
	["GMSol"] = "GMOD Soldiers" , 
	["GTA4"] = "V92: GTA IV" , 
	["GTA5"] = "V92: GTA V" , 
 } 

------------------------------------------------------
--	Content Bases
--	Shortcuts to all my bases
------------------------------------------------------
--[[
VNTCB.Bases.Vehicle_Root
VNTCB.Bases.Vehicle_AirRotary
VNTCB.Bases.Vehicle_AirRotaryTwin
VNTCB.Bases.Vehicle_AirFixed
VNTCB.Bases.Vehicle_LandTreads
VNTCB.Bases.Vehicle_LandWheels
VNTCB.Bases.Vehicle_LandHalfTrack
VNTCB.Bases.Vehicle_LandMotorcycle
VNTCB.Bases.Vehicle_LandTurret
VNTCB.Bases.Vehicle_NavalPowered
VNTCB.Bases.Vehicle_NavalSail

VNTCB.Bases.Vehicle_Rotor
VNTCB.Bases.Vehicle_HitDetector
VNTCB.Bases.Vehicle_Pod
VNTCB.Bases.Vehicle_Seat
--]]
VNTCB.Bases = VNTCB.Bases or { 
	
	--	Working/Functional Shit

	["Wep"] = "v92_base_swep" , -- SWep Base
	["WepShell"] = "v92_base_swep_shell" , -- Shell-Loading Base , derived from SWep
	["WepAkimbo"] = "v92_base_swep_akimbo" , -- Shell-Loading Base , derived from SWep
	["WepMelee"] = "v92_base_swep_melee" , -- Shell-Loading Base , derived from SWep
	["WepNade"] = "v92_base_swep_grenade" , -- Grenade Base , derived from SWep
	["WepDeployable"] = "v92_base_swep_deployable" , -- Deployable Base , derived from SWep
	["WepBipod"] = "v92_base_swep_bipod" , -- Bipod Base , derived from SWep
	["WepParachute"] = "v92_base_swep_parachute" , -- Parachute base , derived from SWep
	["WepEnt"] = "v92_base_wepent" , -- Weapon Entity Base
	["AmmoCrate"] = "v92_base_ammocrate" , -- Ammo Crate Base
	["AmmoBox"] = "v92_base_ammobox" , -- Single Ammo Box Base
	["Proj"] = "v92_base_projectile" , -- Projectile Base
	["Grenade"] = "v92_base_grenade" , -- Live Grenade Base , A.K.A. the shit that goes boom
	["KitBag"] = "v92_base_kitbag" , -- Weapon Loadout Base
	
	--	In Progress/High-Priority Shit
	
	["Vehicle_Root"] = "v92_base_veh" , 
	["Vehicle_Station"] = "v92_base_veh_station" , 
	["Vehicle_AirRotary"] = "v92_base_veh_heli" , 
	["Vehicle_AirRotaryTwin"] = "v92_base_veh_heli_twin" , 
	["Vehicle_AirFixed"] = "v92_base_veh_plane" , 
	
	["Vehicle_Rotor"] = "v92_veh_rotor" , 
	["Vehicle_Seat"] = "v92_veh_seat" , 
	["Vehicle_HitDetector"] = "v92_veh_hitdetector" , 
	
	["Vehicle_Pod_Root"] = "v92_veh_pod_base" ,
	["Vehicle_Pod_Aimed"] = "v92_veh_pod_aimedgun" ,
	["Vehicle_Pod_Bomb"] = "v92_veh_pod_bomb" ,
	["Vehicle_Pod_Cannon"] = "v92_veh_pod_cannon" ,
	["Vehicle_Pod_Gatling"] = "v92_veh_pod_gatling" ,
	["Vehicle_Pod_Missile"] = "v92_veh_pod_missile" ,
	["Vehicle_Pod_Rocket"] = "v92_veh_pod_rocket" ,
	
	--	Low-Priority/Incomplete Shit
	
	["Magazine"] = "v92_base_magazine" , -- Weapon Magazine/Clip Base
	["NPC"] = "v92_base_npc" , -- SNPC Base
	
	["Vehicle_LandTreads"] = "v92_base_veh_land_treaded" , 
	["Vehicle_LandWheels"] = "v92_base_veh_land_wheeled" , 
	["Vehicle_LandHalfTrack"] = "v92_base_veh_land_halftrack" , 
	["Vehicle_LandMotorcycle"] = "v92_base_veh_land_motorcycle" , 
	["Vehicle_NavalPowered"] = "v92_base_veh_naval_powered" , 
	["Vehicle_NavalSail"] = "v92_base_veh_naval_sail" , 
	
 } 

------------------------------------------------------
--	Projectiles
------------------------------------------------------
VNTCB.Projectile = VNTCB.Projectile or {
	["shell20mm"] = "v92_proj_20mm" ,
	["shell25mm"] = "v92_proj_25mm" ,
	["shell37mm"] = "v92_proj_37mm" ,
	["shell40mm"] = "v92_proj_40mm" ,
	["shell40x46mm"] = "v92_proj_40x46mm" ,
	["shell50mm"] = "v92_proj_50mm" ,
	["shell76mm"] = "v92_proj_76mm" ,
	["shell88mm"] = "v92_proj_88mm" ,
	["shell90mm"] = "v92_proj_90mm" ,
	["shell100mm"] = "v92_proj_100mm" ,
	["shell105mm"] = "v92_proj_105mm" ,
	["shell120mm"] = "v92_proj_120mm" ,
	["shell125mm"] = "v92_proj_125mm" ,
	["shell128mm"] = "v92_proj_128mm" ,
	["shell150mm"] = "v92_proj_150mm" ,
	["shell155mm"] = "v92_proj_155mm" ,
	["m68shell"] = "v92_proj_m68shell" ,
	["m79rocket"] = "v92_proj_m79rocket" ,
}
------------------------------------------------------
--	Plugins table
--	Unused - for now...
------------------------------------------------------

VNTCB.Plugins = VNTCB.Plugins or {  RootBase  } 

------------------------------------------------------
--	Automatic Code Download
--	It Downloads Code Automatically
------------------------------------------------------

if SERVER then

	-- Shared
	for _ , file in pairs( file.Find( "autorun/sh_v92_*.lua" , "LUA" ) ) do
		AddCSLuaFile( "autorun/"..file )
	end
	
	-- Client
	for _ , file in pairs( file.Find( "autorun/client/cl_v92_*.lua" , "LUA" ) ) do
		AddCSLuaFile( "autorun/client/"..file )
	end
	
	-- Server
	for _ , file in pairs( file.Find( "autorun/server/sv_v92_*.lua" , "LUA" ) ) do
		include( "autorun/server/"..file )
	end

	-- Weapons
	for _ , file in pairs( file.Find( "weapons/v92_*.lua" , "LUA" ) ) do
		AddCSLuaFile( "weapons/"..file )
	end
	
	-- Entities
	for _ , file in pairs( file.Find( "entities/v92_*.lua" , "LUA" ) ) do
		AddCSLuaFile( "entities/"..file )
	end
	
	-- Special
	for _ , file in pairs( file.Find( "VNT/*.lua" , "LUA" ) ) do
		AddCSLuaFile( "VNT/"..file )
	end
	
end

---------------------------------------------
---------------------------------------------
-- This is our Reset button. 
-- It will essentially reset the base in case 
-- you've fucked up all the options
---------------------------------------------
---------------------------------------------
concommand.Add( "VNT_Reset" , function( )
	RunConsoleCommand( "VNT_Base_SWep_SpeedToggle" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_Speed_Run" , 300 )
	RunConsoleCommand( "VNT_Base_SWep_Speed_Walk" , 150 )
	RunConsoleCommand( "VNT_Base_SWep_RecoilMul" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_AccuracyMul" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_DamageMul" , 5 )
	RunConsoleCommand( "VNT_Base_SWep_BlackFriday_Toggle" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_BlackFriday_ForceMul" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_BlackFriday_Range" , 150 )
	RunConsoleCommand( "VNT_Base_SWep_BlackFriday_ResetToggle" , 0 )
	RunConsoleCommand( "VNT_Base_SWep_BlackFriday_ResetTimer" , 300 )
	RunConsoleCommand( "VNT_Base_SWep_RichochetLimit" , 5 )
	RunConsoleCommand( "VNT_Base_SWep_SpawnUnloaded" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_SpawnAmmo" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_DepthModToggle" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_SprintNShoot" , 0 )
	RunConsoleCommand( "VNT_Base_SWep_IronSight_Sensitivity" , 0.2 )
	RunConsoleCommand( "VNT_Base_SWep_ClampToggle" , 1 )
	RunConsoleCommand( "VNT_Base_SWep_JamToggle" , 1 )
	--RunConsoleCommand( "VNT_Base_SWep_JamChance" , 1000 )
	--RunConsoleCommand( "VNT_Base_SWep_JamChance_Override" , 0 )
	
	RunConsoleCommand( "vnt_proj_dmg" , 3 )
	RunConsoleCommand( "vnt_proj_rad" , 2 )

	if CLIENT then
	
		RunConsoleCommand( "VNT_Debug" , 0 )
		
		RunConsoleCommand( "VNT_Base_ViewBob_Toggle" , 0 )
		RunConsoleCommand( "VNT_ViewBob_Mul" , 0.5 )
		
		RunConsoleCommand( "VNT_Base_SWep_IronsightToggle" , 0 )
		RunConsoleCommand( "VNT_Base_SWep_PrintLocation" , 0 )
		RunConsoleCommand( "VNT_Base_SWep_HUD_StanceX" , ( ScrW( ) * 0.47 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_StanceY" , ( ScrH( ) - 180 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_RoFX" , ( ScrW( ) * 0.5 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_RoFY" , ( ScrH( ) - 25 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_SuppX" , ( ScrW( ) * 0.55 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_SuppY" , ( ScrH( ) - 200 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_StockX" , ( ScrW( ) * 0.45 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_StockY" , ( ScrH( ) - 200 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_BipodX" , ( ScrW( ) * 0.6 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_BipodY" , ( ScrH( ) - 75 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_GLMX" , ( ScrW( ) * 0.4 ) )
		RunConsoleCommand( "VNT_Base_SWep_HUD_GLMY" , ( ScrH( ) - 75 ) )
		RunConsoleCommand( "VNT_Base_SWep_FlashToggle" , 1 )
		RunConsoleCommand( "VNT_Base_SWep_TracerToggle" , 1 )
		RunConsoleCommand( "VNT_Base_SWep_ShellToggle" , 1 )
		RunConsoleCommand( "VNT_Base_SWep_ShellTime" , 30 )
		RunConsoleCommand( "VNT_Base_SWep_BulletCraft_Toggle" , 1 )
	
		LocalPlayer( ):ChatPrint( "[V92B] Base Console Commands & Settings Reset!" )
	end

end )

if CLIENT then

	---------------------------------------------
	---------------------------------------------
	--	Control Panel
	--	ToDo: Re-write to GM13 style
	---------------------------------------------
	---------------------------------------------
	local function vntCodeBasesOptions( Panel )
		Panel:ClearControls( )

		Panel:AddControl( "Header" , { 
			Text = "V92 Weapon Base Control Panel" , 
			Description = [[V92 Weapon Bases Control Panel
			This panel contains all the CVars and options in my weapons.
			If I could find a way to work it in , there's an option for it.
			
			If you have suggestions , bug reports , etc , leave them in the comments or preferably in my Steam Group:
			http://steamcommunity.com/groups/CultOfV92
			
			Bases by Reverend Jesse V92:
			http://steamcommunity.com/id/JesseVanover
			]]
		 }  )

		Panel:AddControl( "Button" , { 
			Label = "Print 'About' to Console" , 
			Command = "VNT_About"
		 }  )
		
		Panel:AddControl( "Button" , { 
			Label = "Reset V92 Base" , 
			Command = "VNT_Reset"
		 }  )
				
		Panel:AddControl( "Checkbox" , { 
			Label = "Toggle View Bob" , 
			Command = "VNT_Base_ViewBob_Toggle"
		 }  )
		
		Panel:AddControl( "Slider" , { 
			Label = "Stance Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_StanceX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Stance Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_StanceY"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Bipod Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_BipodX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Bipod Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_BipodY"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Stock Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_StockX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Stock Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_StockY"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "GLM Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_GLMX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "GLM Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_GLMX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "RoF Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_RoFX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "RoF Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_RoFY"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Suppressor Icon X Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrW( ) ) , 
			Command = "VNT_Base_SWep_HUD_SuppX"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Suppressor Icon Y Pos" , 
			Type = "Integer" , 
			Min = ( 0 ) , 
			Max = ( ScrH( ) ) , 
			Command = "VNT_Base_SWep_HUD_SuppY"
		 }  )

		Panel:AddControl( 	"Slider" , 		 { 	
			Label = "Message Location" , 	
			Type = "Integer" , 
			Min = 0 , 	
			Max = 2 , 	
			Command = "VNT_Base_SWep_PrintLocation"	 } 
		 )

		Panel:AddControl( "Checkbox" , { 
			Label = "Ironsight Hold or Toggle" , 
			Command = "VNT_Base_SWep_IronsightToggle"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Iron Sight Sensitivity" , 
			Command = "VNT_Base_SWep_IronSight_Sensitivity" , 
			Type = "float" , 
			Min = "0.1" , 
			Max = "1"
		 }  )

		Panel:AddControl( "Checkbox" , { 
			Label = "Jamming Toggle" , 
			Command = "VNT_Base_SWep_JamToggle"
		 }  )

		--	Removed - Per-Weapon Basis because it's better
		--[[
		Panel:AddControl( 	"Slider" , 		 { 	
			Label = "Jam Chance" , 	
			Type = "Integer" , 	
			Min = 10 , 	
			Max = 5000 , 	
			Command = "VNT_Base_SWep_JamChance"	 } 
		 )
		--]]

		Panel:AddControl( "Checkbox" , { 
			Label = "Shell Ejection Toggle" , 
			Command = "VNT_Base_SWep_ShellToggle"
		 }  )

		Panel:AddControl( 	"Slider" , 		 { 	
			Label = "Shell Lifetime" , 	
			Type = "Integer" , 
			Min = 5 , 	
			Max = 60 , 	
			Command = "VNT_Base_SWep_ShellTime"	 } 
		 )

		Panel:AddControl( "Checkbox" , { 
			Label = "Muzzle Flash Toggle" , 
			Command = "VNT_Base_SWep_FlashToggle"
		 }  )

		Panel:AddControl( "Checkbox" , { 
			Label = "Tracer Toggle" , 
			Command = "VNT_Base_SWep_TracerToggle"
		 }  )

		Panel:AddControl( "Checkbox" , { 
			Label = "Depth Mod Toggle" , 
			Command = "VNT_Base_SWep_DepthModToggle"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Recoil Multiplier" , 
			Command = "VNT_Base_SWep_RecoilMul" , 
			Type = "integer" , 
			Min = "1" , 
			Max = "5"
		 }  )

		 --[[
		Panel:AddControl( "Slider" , { 
			Label = "Accuracy Multiplier" , 
			Command = "VNT_Base_SWep_AccuracyMul" , 
			Type = "integer" , 
			Min = "1" , 
			Max = "3"
		 }  )
		 --]]

		Panel:AddControl( "Checkbox" , { 
			Label = "BulletCraft Toggle" , 
			Command = "VNT_Base_SWep_BulletCraft_Toggle"
		 }  )

		Panel:AddControl( "Checkbox" , { 
			Label = "Black Friday Toggle" , 
			Command = "VNT_Base_SWep_BlackFriday_Toggle"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Black Friday Multiplier" , 
			Command = "VNT_Base_SWep_BlackFriday_ForceMul" , 
			Type = "integer" , 
			Min = "1" , 
			Max = "5"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Black Friday Range" , 
			Command = "VNT_Base_SWep_BlackFriday_Range" , 
			Type = "integer" , 
			Min = "64" , 
			Max = "256"
		 }  )

		Panel:AddControl( "Checkbox" , { 
			Label = "Black Friday Reset Toggle" , 
			Command = "VNT_Base_SWep_BlackFriday_ResetToggle"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Black Friday Reset Timer" , 
			Command = "VNT_Base_SWep_BlackFriday_ResetTimer" , 
			Type = "integer" , 
			Min = "16" , 
			Max = "3600"
		 }  )

		 --[[
		Panel:AddControl( "Slider" , { 
			Label = "Damage Multiplier" , 
			Command = "VNT_Base_SWep_DamageMul" , 
			Type = "integer" , 
			Min = "1" , 
			Max = "10"
		 }  )
		 --]]

	end

	---------------------------------------------
	---------------------------------------------
	--	Add the tool menu
	---------------------------------------------
	---------------------------------------------
	local function vntWepBaseToolMenu( )
		spawnmenu.AddToolMenuOption( "Options" , "V92" , "VNTWepBaseControls" , "Weapon Base" , "" , "" , vntCodeBasesOptions )
	end
	hook.Add( "PopulateToolMenu" , "vntWepBaseToolMenu" , vntWepBaseToolMenu )
	
	---------------------------------------------
	---------------------------------------------
	--	Add the tool menu
	---------------------------------------------
	---------------------------------------------
	local function vntVehicleBaseOptions( Panel )
		Panel:ClearControls( )

		Panel:AddControl( "Header" , { 
			Text = "V92VBConPan" , 
			Description = [[V92 Vehicle Bases Control Panel
			This panel contains all the CVars and options in my vehicles.
			If I could find a way to work it in , there's an option for it.
			
			If you have suggestions , bug reports , etc , leave them in the comments or preferably in my Steam Group:
			http://steamcommunity.com/groups/CultOfV92
			
			Bases by Reverend Jesse V92:
			http://steamcommunity.com/id/JesseVanover
			]]
		 }  )

		Panel:AddControl( "Button" , { 
			Label = "Print 'About' to Console" , 
			Command = "VNT_About"
		 }  )
		
		Panel:AddControl( "Button" , { 
			Label = "Reset V92 Base" , 
			Command = "VNT_Reset"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Shell Damage Multiplier" , 
			Command = "vnt_proj_dmg" , 
			Type = "float" , 
			Min = "0.1" , 
			Max = "10"
		 }  )

		Panel:AddControl( "Slider" , { 
			Label = "Shell Splash Radius Multiplier" , 
			Command = "vnt_proj_rad" , 
			Type = "float" , 
			Min = "0.1" , 
			Max = "10"
		 }  )
	end

	---------------------------------------------
	---------------------------------------------
	--	Add the Vehicle tool menu
	---------------------------------------------
	---------------------------------------------
	local function vntVehBaseToolMenu( )
		spawnmenu.AddToolMenuOption( "Options" , "V92" , "VNTVehBaseControls" , "Vehicle Base" , "" , "" , vntVehicleBaseOptions )
	end
	hook.Add( "PopulateToolMenu" , "vntVehBaseToolMenu" , vntVehBaseToolMenu )
	
	---------------------------------------------
	---------------------------------------------
	--	CVar Clamps
	--	Prevent obnoxious values
	---------------------------------------------
	---------------------------------------------
	if GetConVarNumber( "VNT_Base_SWep_ClampToggle" ) != 1 then
	
		return
		
	else
	
		local CVarIconSize = GetConVarNumber( "VNT_Base_SWep_IconSize" )
		if CVarIconSize  <  0.1 then CVarIconSize = 0.1 elseif CVarIconSize  >  2 then CVarIconSize = 2 end
		
		local CVarShellRadMul = GetConVarNumber( "vnt_proj_rad" )
		local CVarShellDmgMul = GetConVarNumber( "vnt_proj_dmg" )
		if CVarShellRadMul  <  0.1 then CVarShellRadMul = 0.1 elseif CVarShellRadMul  >  10 then CVarShellRadMul = 10 end
		if CVarShellDmgMul  <  0.1 then CVarShellDmgMul = 0.1 elseif CVarShellDmgMul  >  10 then CVarShellDmgMul = 10 end
		local CVarPrintLoc = GetConVarNumber( "VNT_Base_SWep_PrintLocation" )
		if CVarPrintLoc  <  0 then CVarPrintLoc = 0 elseif CVarPrintLoc  >  2 then CVarPrintLoc = 2 end

		local CVarFlashTogg = GetConVarNumber( "VNT_Base_SWep_FlashToggle" )
		if CVarFlashTogg  <  0 then CVarFlashTogg = 0 elseif CVarFlashTogg  >  1 then CVarFlashTogg = 1 end

		local CVarTracerTogg = GetConVarNumber( "VNT_Base_SWep_TracerToggle" )
		if CVarTracerTogg  <  0 then CVarTracerTogg = 0 elseif CVarTracerTogg  >  1 then CVarTracerTogg = 1 end

		local CVarShellTogg = GetConVarNumber( "VNT_Base_SWep_ShellToggle" )
		if CVarShellTogg  <  0 then CVarShellTogg = 0 elseif CVarShellTogg  >  1 then CVarShellTogg = 1 end

		local CVarShellTime = GetConVarNumber( "VNT_Base_SWep_ShellTime" )
		if CVarShellTime  <  0 then CVarShellTime = 0 elseif CVarShellTime  >  60 then CVarShellTime = 60 end

		local CVarRunSpeed = GetConVarNumber( "VNT_Base_SWep_Speed_Run" )
		if CVarRunSpeed  <  25 then CVarRunSpeed = 25 elseif CVarRunSpeed  >  500 then CVarRunSpeed = 500 end

		local CVarWalkSpeed = GetConVarNumber( "VNT_Base_SWep_Speed_Walk" )
		if CVarWalkSpeed  <  25 then CVarWalkSpeed = 25 elseif CVarWalkSpeed  >  250 then CVarWalkSpeed = 250 end

		local CVarRecoilMul = GetConVarNumber( "VNT_Base_SWep_RecoilMul" )
		if CVarRecoilMul  <  1 then CVarRecoilMul = 1 elseif CVarRecoilMul  >  5 then CVarRecoilMul = 5 end

		local CVarAccMul = GetConVarNumber( "VNT_Base_SWep_AccuracyMul" )
		if CVarAccMul  <  1 then CVarAccMul = 1 elseif CVarAccMul  >  5 then CVarAccMul = 5 end

		local CVarDmgMul = GetConVarNumber( "VNT_Base_SWep_DamageMul" )
		if CVarDmgMul  <  1 then CVarDmgMul = 1 elseif CVarDmgMul  >  15 then CVarDmgMul = 15 end

		local CVarBlackFridayTimeClamp = GetConVarNumber( "VNT_Base_SWep_BlackFriday_ResetTimer" )
		if CVarBlackFridayTimeClamp  <  10 then CVarBlackFridayTimeClamp = 10 end

		local CVarHUDDeployX = GetConVarNumber( "VNT_Base_SWep_HUD_DeployX" )
		if CVarHUDDeployX  <  1 then CVarHUDDeployX = 1 elseif CVarHUDDeployX  >  ScrW( ) then CVarHUDDeployX = ScrW( ) end

		local CVarHUDDeployY = GetConVarNumber( "VNT_Base_SWep_HUD_DeployY" )
		if CVarHUDDeployY  <  1 then CVarHUDDeployY = 1 elseif CVarHUDDeployY  >  ScrH( ) then CVarHUDDeployY = ScrH( ) end

		local CVarHUDRoFX = GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" )
		if CVarHUDRoFX  <  1 then CVarHUDRoFX = 1 elseif CVarHUDRoFX  >  ScrW( ) then CVarHUDRoFX = ScrW( ) end

		local CVarHUDRoFY = GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" )
		if CVarHUDRoFY  <  1 then CVarHUDRoFY = 1 elseif CVarHUDRoFY  >  ScrH( ) then CVarHUDRoFY = ScrH( ) end

		local CVarHUDSupX = GetConVarNumber( "VNT_Base_SWep_HUD_SuppX" )
		if CVarHUDSupX  <  1 then CVarHUDSupX = 1 elseif CVarHUDSupX  >  ScrW( ) then CVarHUDSupX = ScrW( ) end

		local CVarHUDSupY = GetConVarNumber( "VNT_Base_SWep_HUD_SuppY" )
		if CVarHUDSupY  <  1 then CVarHUDSupY = 1 elseif CVarHUDSupY  >  ScrH( ) then CVarHUDSupY = ScrH( ) end

		local CVarRicLimit = GetConVarNumber( "VNT_Base_SWep_RichochetLimit" )
		if CVarRicLimit  <  1 then CVarRicLimit = 1 elseif CVarRicLimit  >  10 then CVarRicLimit = 10 end

		local CVarSpawnUnloaded = GetConVarNumber( "VNT_Base_SWep_SpawnUnloaded" )
		if CVarSpawnUnloaded  <  0 then CVarSpawnUnloaded = 0 elseif CVarSpawnUnloaded  >  1 then CVarSpawnUnloaded = 1 end

		local CVarSpawnAmmo = GetConVarNumber( "VNT_Base_SWep_SpawnAmmo" )
		if CVarSpawnAmmo  <  0 then CVarSpawnAmmo = 0 elseif CVarSpawnAmmo  >  1 then CVarSpawnAmmo = 1 end

		local CVarDepth = GetConVarNumber( "VNT_Base_SWep_DepthModToggle" )
		if CVarDepth  <  0 then CVarDepth = 0 elseif CVarDepth  >  1 then CVarDepth = 1 end
	end
	
	---------------------------------------------
	---------------------------------------------
	--	Headshot Effect
	--	Play an effect when the player is killed via 
	--	headshot like in CS:S if it's mounted
	--	Fun fact: this was the first part of the base
	---------------------------------------------
	---------------------------------------------
	if IsMounted( "cstrike" ) then
		local function VNTHeadShotNotifyScript( _P )
			if _P:LastHitGroup( ) ==  1 then
				_P:EmitSound( "CSS.Player.Headshot" )
			end
		end
		hook.Add( "DoPlayerDeath" , "VNTHeadShotNotifyScript" , VNTHeadShotNotifyScript )
	end

	local function GetMaterialType( )
	
		local TraceResult = util.TraceLine( { 
			start 	 = LocalPlayer( ) , 
			endpos 	 = LocalPlayer( ):GetAimVector( ) , 
		 }  )

		print( "Material type is: " .. TraceResult.MatType )
		
	end
	concommand.Add( "getmattype" , GetMaterialType )

elseif SERVER then

	---------------------------------------------
	---------------------------------------------
	--	Use Animations
	--	When you interact with an object , play a world anim
	---------------------------------------------
	---------------------------------------------
	local function UseAnimations( _P )
		_P:SetAnimation( ACT_GMOD_GESTURE_ITEM_GIVE )
	end
	hook.Add( "PlayerUse" , "UseAnimations" , UseAnimations )

	---------------------------------------------
	---------------------------------------------
	--	Drop Weapon script , for non-V92 base weapons
	---------------------------------------------
	---------------------------------------------
	local function Drop( ply )
		ply:DoAnimationEvent( ACT_GMOD_GESTURE_ITEM_DROP )
		ply:DropWeapon( ply:GetActiveWeapon( ) )
	end
	concommand.Add( "Drop" , Drop )

	---------------------------------------------
	---------------------------------------------
	--	If by some diabolis ex machina reason the 
	--	addon isn't fully downloaded , download my 
	--	Content Bases this way just in case...
	---------------------------------------------
	---------------------------------------------
	resource.AddWorkshop( "505106454" ) -- V92 Content Bases

	---------------------------------------------
	---------------------------------------------
	--	Blank SWep Giving Hook
	--	Gives a blank , unusable , hidden SWep that
	--	allows the model swap system to work correctly
	---------------------------------------------
	---------------------------------------------

	local function VNTSBGiveBlank( P )
		P:Give( "v92_int_blank" )
	end
	hook.Add( "PlayerSpawn" , "VNTSBGiveBlank" , VNTSBGiveBlank )
	
	---------------------------------------------
	---------------------------------------------
	--	Ignore Table
	--	Copied from Zoey who copied from Kilburn
	---------------------------------------------
	---------------------------------------------
	
	local meta = FindMetaTable( "Entity" )
	if ( not meta ) then return end

	local TriggerEntities = { 
		trigger_autosave = true , 
		trigger_changelevel = true , 
		trigger_finale = true , 
		trigger_gravity = true , 
		trigger_hurt = true , 
		trigger_impact = true , 
		trigger_look = true , 
		trigger_multiple = true , 
		trigger_once = true , 
		trigger_physics_trap = true , 
		trigger_playermovement = true , 
		trigger_proximity = true , 
		trigger_push = true , 
		trigger_remove = true , 
		trigger_rpgfire = true , 
		trigger_soundscape = true , 
		trigger_serverragdoll = true , 
		trigger_soundscape = true , 
		trigger_teleport = true , 
		trigger_transition = true , 
		trigger_vphysics_motion = true , 
		trigger_waterydeath = true , 
		trigger_weapon_dissolve = true , 
		trigger_weapon_strip = true , 
		trigger_wind = true , 
		func_occluder = true , 
		func_precipitation = true , 
		func_smokevolume = true , 
		func_vehicleclip = true , 
		func_areaportal = true , 
		func_areaportalwindow = true , 
		func_dustcloud = true , 
		point_hurt = true , 
		ambient_generic = true , 
		env_steam = true , 
		func_button = true , 
		npc_r = true , 
		npc_template_r = true , 
		env_smokestack = true , 
		item_battery = true , 
		item_healthvial = true , 
		item_healthkit = true , 
		weapon_pistol = true , 
		weapon_357 = true , 
		weapon_ar2 = true , 
		weapon_crossbow = true , 
		weapon_smg1 = true , 
		weapon_frag = true , 
		weapon_stunstick = true , 
		weapon_crowbar = true , 
		weapon_rpg = true , 
		weapon_slam = true , 
		weapon_shotgun = true , 
		func_door_rotating = true , 
		spotlight_end = true , 
		func_door = true , 
		assault_assaultpoint = true
	 } 

	function meta:IsTrigger( )
		if TriggerEntities[ self:GetClass( ) ] then return true end

		return false
	end

	---------------------------------------------
	---------------------------------------------
	--	RT Scope Skybox Fix
	--	If a map doesn't have a 3D skybox , the 
	--	scope won't work , so create a sky_camera
	---------------------------------------------
	---------------------------------------------

	--	InitPostEntity hook , add "RTScopeFix" , Function:
	hook.Add( "InitPostEntity" , "RTScopeFix" , function( )
	
		--	If the number of "sky_camera" entities <= 0 then
		if #ents.FindByClass( "sky_camera" ) <= 0 then
			
			--	Create one
			local skycam = ents.Create( "sky_camera" )
			skycam:Spawn( )
			skycam:SetPos( skycam:GetPos( ) + Vector( 0 , 0 , 500 ) )
			skycam:Fire( "3D Skybox Scale" , 0 )
			
		end
		
	end )

end
