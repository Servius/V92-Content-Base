AddCSLuaFile( )

if not ConVarExists( "vnt_proj_dmg" ) then
	CreateConVar( "vnt_proj_dmg" , 3 , { FCVAR_ARCHIVE , FCVAR_REPLICATED } , "(Float) Damage multiplier of the V92 projectile shell entities" )
end

if not ConVarExists( "vnt_proj_rad" ) then
	CreateConVar( "vnt_proj_rad" , 2 , { FCVAR_ARCHIVE , FCVAR_REPLICATED } , "(Float) Radius multiplier of the V92 projectile shell entities" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_SuppX" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_SuppX" , 0 , true , false , "(Float) The X-position on the screen of the Rate of Fire icon" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_SuppY" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_SuppY" , 0 , true , false , "(Float) The Y-position on the screen of the Rate of Fire icon" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_RoFX" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_RoFX" , 0 , true , false , "(Float) The X-position on the screen of the Rate of Fire icon" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_RoFY" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_RoFY" , 0 , true , false , "(Float) The Y-position on the screen of the Rate of Fire icon" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_DeployX" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_DeployX" , 0 , true , false , "(Float) The X-position on the screen of the deployable icon" )
end

if not ConVarExists( "VNT_SWep_Base_HUD_DeployY" ) then
	CreateClientConVar( "VNT_SWep_Base_HUD_DeployY" , 0 , true , false , "(Float) The Y-position on the screen of the deployable icon" )
end

if not ConVarExists( "VNT_SWep_Base_TracerToggle" ) then
	CreateClientConVar( "VNT_SWep_Base_TracerToggle" , 1 , true , true , "(Boolean) Toggle the tracers in the V92 SWep Base" )
end

if not ConVarExists( "VNT_SWep_Base_ShellToggle" ) then
	CreateClientConVar( "VNT_SWep_Base_ShellToggle" , 1 , true , true , "(Boolean) Toggle the shell ejections in the V92 SWep Base" )
end

if not ConVarExists( "VNT_SWep_Base_ShellTime" ) then
	CreateClientConVar( "VNT_SWep_Base_ShellTime" , 30 , true , true , "(Integer) Lifetime for shell ejections in the V92 SWep Base" )
end

if not ConVarExists( "VNT_SWep_Base_FlashToggle" ) then
	CreateClientConVar( "VNT_SWep_Base_FlashToggle" , 1 , true , true , "(Boolean) Toggle the muzzle flashes in the V92 SWep Base" )
end

if not ConVarExists("VNT_SWep_Base_JamChance") then	
	CreateConVar( "VNT_SWep_Base_JamChance", 1000, {FCVAR_REPLICATED, FCVAR_ARCHIVE}, "(Integer) Jam chance, from 1-<ThisInteger> in the V92 SWep Base"	) 
end

if not ConVarExists( "VNT_SWep_Base_JamToggle" ) then
	CreateConVar( "VNT_SWep_Base_JamToggle" , 0 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Boolean) Toggle jamming in the V92 SWep Base" )
end

if not ConVarExists( "VNT_SWep_Base_SpeedWeight" ) then
	CreateConVar( "VNT_SWep_Base_SpeedWeight" , 1 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Boolean) Toggle the weight speed modifier for V92 SWep Base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_SpeedToggle" ) then
	CreateConVar( "VNT_SWep_Base_SpeedToggle" , 1 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Boolean) Toggle the speed modifiers for V92 SWep Base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_Speed_Run" ) then
	CreateConVar( "VNT_SWep_Base_Speed_Run" , 300 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Integer) Set the max run speed for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_Speed_Walk" ) then
	CreateConVar( "VNT_SWep_Base_Speed_Walk" , 150 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Integer) Set the max walk speed for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_RecoilMul" ) then
	CreateConVar( "VNT_SWep_Base_RecoilMul" , 1 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Float) Set the clamp for the max recoil for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_AccuracyMul" ) then
	CreateConVar( "VNT_SWep_Base_AccuracyMul" , 1 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Float) Set the clamp for the max accuracy bloom for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_RichochetLimit" ) then
	CreateConVar( "VNT_SWep_Base_RichochetLimit" , 5 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Integer) Set the clamp for the max richochets for V92 SWep base weapons" )
end

if not ConVarExists( "VNT_SWep_Base_SpawnUnloaded" ) then
	CreateConVar( "VNT_SWep_Base_SpawnUnloaded" , 1 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Boolean) Should the weapon spawn unloaded?" )
end

if not ConVarExists( "VNT_SWep_Base_SpawnAmmo" ) then
	CreateConVar( "VNT_SWep_Base_SpawnAmmo" , 0 , { FCVAR_REPLICATED , FCVAR_ARCHIVE } , "(Boolean) Should the weapon spawn with ammo?" )
end


------------------------------------------------------
--	Ideas and shit									--
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
--	MAde new RoF icons - Done 2016/10/23
------------------------------------------------------
--	Better support for Weapon Weight System
--	Better support for Support SWeps
--	Better support for RT scopes
--	Add AutoWatch
--	Add Richochets
--	Add Weapon Magazine System
--	Add Verbose Information Screen
--	Add Bodily Harm System
------------------------------------------------------
------------------------------------------------------
--	Minor Scripts
------------------------------------------------------
--	Use Animations
--	When you interact with an object, play a world anim
local function UseAnimations(_P)
	_P:SetAnimation( ACT_GMOD_GESTURE_ITEM_GIVE )
end
hook.Add("PlayerUse", "UseAnimations", UseAnimations)
------------------------------------------------------
--	Headshot Effect
--	Play an effect when the player is killed via 
--	headshot like in CS:S if it's mounted
------------------------------------------------------
if CLIENT then
	if IsMounted( "cstrike" ) then
		local function VNTHeadShotNotifyScript( _P )
			if _P:LastHitGroup( ) == 1 then
				_P:EmitSound( "CSS.Player.Headshot" )
			end
		end
		hook.Add( "DoPlayerDeath" , "VNTHeadShotNotifyScript" , VNTHeadShotNotifyScript )
	end
end
------------------------------------------------------
------------------------------------------------------
--	Global Tables
--	Used to provide info globally and to prevent errors
------------------------------------------------------
------------------------------------------------------
VNTDEBUG = VNTDEBUG or {}
------------------------------------------------------
--	Generic Information
------------------------------------------------------

VNTCB = VNTCB or {
	author = "V92" ,
	contact = "Steam Group: The Cult of V92" ,
	instructions = "Read the Manual" ,
	purpose = "This, we shall defend" ,
	
	name = "V92's Content Base\n" , 
	version = "Version: 2016/10/15 @ 0245\n" ,
	link = "http://steamcommunity.com/sharedfiles/filedetails/?id=505106454" ,
	group = "http://steamcommunity.com/groups/CultOfV92" ,
	vntid = "http://steamcommunity.com/id/JesseVanover" ,
}

concommand.Add( "VNT_About", function( ply, cmd, args )
	--LocalPlayer():ChatPrint( "----------\n" .. VNTCB.name .. VNTCB.Version .. VNTCB.link .. VNTCB.group .. "\n----------" )
	print( "----------\n" .. VNTCB.name .. "\n"  .. VNTCB.vntid .. "\n" .. VNTCB.version .. "\n" .. VNTCB.link .. "\n" .. VNTCB.group .. "\n----------" )
end )

------------------------------------------------------
--	Categories
------------------------------------------------------

VNTCategory = VNTCategory or {
	VNT = "V92: General" ,
	HL2X = "V92: HL2X" ,
	CSS = "V92: CSS" ,
	Heat = "V92: HEAT" ,
	DODS = "V92: DoDS" ,
	INS = "V92: INSMIC" ,
	INS2 = "V92: INS2" ,
	L4D2 = "V92: L4D2" ,
	Reach = "V92: Halo Reach" ,
	AMen = "V92: Army Men" ,
}

------------------------------------------------------
--	Content Bases
------------------------------------------------------

VNTBases = VNTBases or {
	Wep = "v92_base_swep" ,
	AmmoCrate = "v92_base_ammocrate" ,
	AmmoBox = "v92_base_ammobox" ,
	Magazine = "v92_base_magazine" ,
	NPC = "v92_base_npc" ,
	Proj = "v92_base_projectile" ,
	WepEnt = "v92_base_wepent" ,
}

------------------------------------------------------
--	Plugins table
------------------------------------------------------

VNTPlugins = VNTPlugins or { RootBase }

if CLIENT then

	concommand.Add( "VNT_SWep_Base_CVar_Reset", function( )
		RunConsoleCommand( "vnt_proj_dmg" , 3 )
		RunConsoleCommand( "vnt_proj_rad" , 2 )
		RunConsoleCommand( "VNT_SWep_Base_HUD_RoFX" , ( ScrW() / 2 ) )
		RunConsoleCommand( "VNT_SWep_Base_HUD_RoFY" , ( ScrH() - 510 ) )
		RunConsoleCommand( "VNT_SWep_Base_HUD_SuppX" , ( ScrW() - 100 ) )
		RunConsoleCommand( "VNT_SWep_Base_HUD_SuppY" , ( ScrH() - 200 ) )
		RunConsoleCommand( "VNT_SWep_Base_HUD_DeployX" , 5 )
		RunConsoleCommand( "VNT_SWep_Base_HUD_DeployY" , 5 )
		RunConsoleCommand( "VNT_SWep_Base_FlashToggle" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_TracerToggle" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_ShellToggle" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_ShellTime" , 30 )
		RunConsoleCommand( "VNT_SWep_Base_SpeedToggle" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_Speed_Run" , 300 )
		RunConsoleCommand( "VNT_SWep_Base_Speed_Walk" , 150 )
		RunConsoleCommand( "VNT_SWep_Base_RecoilMul" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_AccuracyMul" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_RichochetLimit" , 5 )
		RunConsoleCommand( "VNT_SWep_Base_SpawnUnloaded" , 1 )
		RunConsoleCommand( "VNT_SWep_Base_SpawnAmmo" , 1 )
	end)

	local function vntCodeBasesOptions( Panel )
		Panel:ClearControls( )

		Panel:AddControl( "Header" , {
			Text = "V92 Bases Control Panel" ,
			Description = "V92 Bases Control Panel"
		} )

		Panel:AddControl( "Button" , {
			Label = "Reset HUD" ,
			Type = "Button" ,
			Command = "VNT_SWep_Base_CVar_Reset"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Deploy Icon X Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrW()) ,
			Command = "VNT_SWep_Base_HUD_DeployX"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Deploy Icon Y Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrH()) ,
			Command = "VNT_SWep_Base_HUD_DeployY"
		} )

		Panel:AddControl( "Slider" , {
			Label = "RoF Icon X Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrW()) ,
			Command = "VNT_SWep_Base_HUD_RoFX"
		} )

		Panel:AddControl( "Slider" , {
			Label = "RoF Icon Y Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrH()) ,
			Command = "VNT_SWep_Base_HUD_RoFY"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Suppressor Icon X Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrW()) ,
			Command = "VNT_SWep_Base_HUD_SuppX"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Suppressor Icon Y Pos" ,
			Type = "Integer" ,
			Min = (0) ,
			Max = (ScrH()) ,
			Command = "VNT_SWep_Base_HUD_SuppY"
		} )

		Panel:AddControl( "Checkbox" , {
			Label = "Jamming Toggle" ,
			Command = "VNT_SWep_Base_JamToggle"
		} )

		Panel:AddControl(	"Slider",		{	
			Label = "Jam Chance",	
			Type = "Integer",	
			Min = 10,	
			Max = 5000,	
			Command = "VNT_SWep_Base_JamChance"	}
		)

		Panel:AddControl( "Checkbox" , {
			Label = "Shell Ejection Toggle" ,
			Command = "VNT_SWep_Base_ShellToggle"
		} )

		Panel:AddControl(	"Slider",		{	
			Label = "Shell Lifetime",	
			Type = "Integer",
			Min = 5,	
			Max = 60,	
			Command = "VNT_SWep_Base_ShellTime"	}
		)

		Panel:AddControl( "Checkbox" , {
			Label = "Muzzle Flash Toggle" ,
			Command = "VNT_SWep_Base_FlashToggle"
		} )

		Panel:AddControl( "Checkbox" , {
			Label = "Tracer Toggle" ,
			Command = "VNT_SWep_Base_TracerToggle"
		} )

		Panel:AddControl( "Header" , {
			Text = "V92 Vehicle Base Control Panel" ,
			Description = "V92 Vehicle Base Control Panel"
		} )

		Panel:AddControl( "Header" , {
			Text = "Multipliers" ,
			Description = "Use the following to adjust the multipliers!"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Shell Damage Multiplier" ,
			Command = "vnt_proj_dmg" ,
			Type = "float" ,
			Min = "0.1" ,
			Max = "10"
		} )

		Panel:AddControl( "Slider" , {
			Label = "Shell Splash Radius Multiplier" ,
			Command = "vnt_proj_rad" ,
			Type = "float" ,
			Min = "0.1" ,
			Max = "10"
		} )
	end

	local function vntWepBaseToolMenu( )
		spawnmenu.AddToolMenuOption( "Options" , "V92" , "V92 Bases" , "V92 Bases" , "" , "" , vntCodeBasesOptions )
	end
	hook.Add( "PopulateToolMenu" , "vntWepBaseToolMenu" , vntWepBaseToolMenu )
	
	local CVarIconSize = GetConVarNumber( "VNT_SWep_Base_IconSize" )
	if CVarIconSize < 0.1 then CVarIconSize = 0.1 elseif CVarIconSize > 2 then CVarIconSize = 2 end
	
	local CVarShellRadMul = GetConVarNumber( "vnt_proj_rad" )
	local CVarShellDmgMul = GetConVarNumber( "vnt_proj_dmg" )
	if CVarShellRadMul < 0.1 then CVarShellRadMul = 0.1 elseif CVarShellRadMul > 10 then CVarShellRadMul = 10 end
	if CVarShellDmgMul < 0.1 then CVarShellDmgMul = 0.1 elseif CVarShellDmgMul > 10 then CVarShellDmgMul = 10 end

elseif SERVER then

	---------------------------------------------
	---------------------------------------------
	--	If by some diabolis ex machina reason the 
	--	addon isn't fully downloaded, download my 
	--	Content Bases this way just in case...
	---------------------------------------------
	---------------------------------------------
	resource.AddWorkshop( "505106454" ) -- V92 Content Bases
	
	---------------------------------------------
	---------------------------------------------
	--	Give Blank Weapon
	---------------------------------------------
	---------------------------------------------
	local function VNTSBGiveBlank( P )
		P:Give( "v92_int_blank" )
	end
	hook.Add( "PlayerSpawn", "VNTSBGiveBlank", VNTSBGiveBlank )
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
	--	Blank SWep Giving Hook
	--	Gives a blank, unusable, hidden SWep that
	--	allows the model swap system to work correctly
	---------------------------------------------
	---------------------------------------------
	--[[hook.Add( "PlayerSpawn" , "VNTSBBlankSWepGiverHook" , function( ply )
		timer.Simple( 0.5 , function( )
			if ( IsValid( ply ) and ply:Alive( ) ) then
				ply:Give( "v92_int_blank" )
			end
		end )
	end )--]]

	---------------------------------------------
	---------------------------------------------
	--	RT Scope Skybox Fix
	--	If a map doesn't have a 3D skybox, the 
	--	scope won't work, so create a sky_camera
	---------------------------------------------
	---------------------------------------------

	hook.Add( "InitPostEntity" , "RTScopeFix" , function( )
		if #ents.FindByClass( "sky_camera" ) <= 0 then
			local skycam = ents.Create( "sky_camera" )
			skycam:Spawn( )
			skycam:SetPos( skycam:GetPos( ) + Vector( 0 , 0 , 500 ) )
			skycam:Fire( "3D Skybox Scale" , 0 )
		end
	end )

end
