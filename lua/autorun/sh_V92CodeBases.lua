
AddCSLuaFile()

if !ConVarExists("VNT_Debug_Prints") then	CreateClientConVar( "VNT_Debug_Prints", '0', true, false )	end
if !ConVarExists("vnt_proj_dmg") then	CreateConVar( "vnt_proj_dmg", 3, {FCVAR_ARCHIVE, FCVAR_REPLICATED }, "Damage multiplier of the V92 projectile shell entities") end
if !ConVarExists("vnt_proj_rad") then	CreateConVar( "vnt_proj_rad", 2, {FCVAR_ARCHIVE, FCVAR_REPLICATED }, "Radius multiplier of the V92 projectile shell entities") end
if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print("[V92] sh_V92CodeBases.lua Loading...")	end

local	function vntCodeBasesOptions( Panel )

	Panel:ClearControls()

	Panel:AddControl( "Header", { 
	Text = "V92 Vehicle Code Bases" ,
	Description	=[[Welcome to the V92 Code Base!
	You can find all the options and controls to customize your V92 vehicles below.
	Leave Feedback Here:
	http://steamcommunity.com/groups/firestormstudios
	Enjoy!
	]]
	}  )

	Panel:AddControl( "Header", { 
	Text = "Multipliers" ,
	Description	="Use the following to adjust the multipliers!"
	}  )

	Panel:AddControl( "Slider", 	{ 
	Label = "Shell Damage Multiplier",	
	Command = "vnt_proj_dmg",
	Type = "float",
	Min = "0.1",
	Max = "10"
	}  )
	
	Panel:AddControl( "Slider", 	{ 
	Label = "Shell Splash Radius Multiplier",	
	Command = "vnt_proj_rad",
	Type = "float",
	Min = "0.1",
	Max = "10"
	}  )
	
end

local	function V92CodeBasesOptionsIndex()	spawnmenu.AddToolMenuOption( "Options", "V92",   "Vehicle Bases",   "Vehicle Bases",    "",    "",    vntCodeBasesOptions )	end
hook.Add( "PopulateToolMenu", "V92CodeBasesOptionsIndex", V92CodeBasesOptionsIndex )

if CLIENT then

	local function V92WepBaseOptions(panel)

		local CrosshairOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "v92_crosshair"}

		CrosshairOptions.Options["#Default"] = {	sim_crosshair_r =	"255",
									sim_crosshair_g =	"255",
									sim_crosshair_b =	"255",
									sim_crosshair_a =	"200",
									sim_crosshair_l =	"30",
									sim_crosshair_t =	"1"
								   }
										
		CrosshairOptions.CVars = { 	"v92_crosshair_r",
							"v92_crosshair_g",
							"v92_crosshair_b",
							"v92_crosshair_a",
							"v92_crosshair_l",
							"v92_crosshair_t"
						 }
							
		panel:AddControl("ComboBox", CrosshairOptions)

		panel:AddControl("CheckBox", {
			Label = "Enable Crosshair",
			Command = "v92_crosshair_t",
		})

		panel:AddControl("Color", {
			Label 	= "Crosshair Color",
			Red 		= "v92_crosshair_r",
			Green 	= "v92_crosshair_g",
			Blue 		= "v92_crosshair_b",
			Alpha 	= "v92_crosshair_a",
		})

		panel:AddControl("Slider", {
			Label 	= "Crosshair Length",
			Command 	= "v92_crosshair_l",
			Type 		= "Integer",
			Min 		= "5",
			Max 		= "100",
		})

		panel:AddControl("Label", {Text = ""})
		
		panel:AddControl("Label", {
			Text = "Normal Weapon Settings:"
		})

		local AdminOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "v92_cows_weapon"}

		AdminOptions.Options["#Default"] = {mad_recoilmul 	=	"1", mad_damagemul 	=	"1", sim_accuracymul 	=	"1", sim_walk_speed 	=	"250", sim_run_speed 	=	"500"}
										
		AdminOptions.CVars = {"VNT_SWep_Base_RecoilMultiplier", "VNT_SWep_Base_DamageMultiplier", "VNT_SWep_Base_AccuracyMultiplier", "VNT_SWep_Base_WalkSpeed", "VNT_SWep_Base_RunSpeed","VNT_SWep_Base_WeightModToggle","VNT_SWep_Base_ManualHolsterToggle","VNT_SWep_Base_FlashToggle","VNT_SWep_Base_ShellToggle"}
							
		panel:AddControl("ComboBox", AdminOptions)

		panel:AddControl("Slider", {
			Label 	= "Damage Multiplier",
			Command 	= "VNT_SWep_Base_DamageMultiplier",
			Type 		= "Float",
			Min 		= "0",
			Max 		= "10",
		})
		
		panel:AddControl("Slider", {
			Label 	= "Recoil Multiplier",
			Command 	= "VNT_SWep_Base_RecoilMultiplier",
			Type 		= "Float",
			Min 		= "0",
			Max 		= "10",
		})
		
		panel:AddControl("Slider", {
			Label 	= "Accuracy Multiplier",
			Command 	= "VNT_SWep_Base_AccuracyMultiplier",
			Type 		= "Float",
			Min 		= "0",
			Max 		= "2",
		})
		
		panel:AddControl("Slider", {
			Label 	= "Walk Speed",
			Command 	= "VNT_SWep_Base_WalkSpeed",
			Type 		= "Float",
			Min 		= "0",
			Max 		= "1000",
		})
		
		panel:AddControl("Slider", {
			Label 	= "Run Speed",
			Command 	= "VNT_SWep_Base_RunSpeed",
			Type 		= "Float",
			Min 		= "0",
			Max 		= "1000",
		})
		panel:AddControl("CheckBox", {
			Label = "Weight Mod",
			Command = "VNT_SWep_Base_WeightModToggle",
		})
		panel:AddControl("CheckBox", {
			Label = "Manual Holster",
			Command = "VNT_SWep_Base_ManualHolsterToggle",
		})
			panel:AddControl("CheckBox", {
			Label = "Shell Eject",
			Command = "VNT_SWep_Base_ShellToggle",
		})
			panel:AddControl("CheckBox", {
			Label = "Muzzle Flash",
			Command = "VNT_SWep_Base_FlashToggle",
		})

		panel:AddControl("Label", {Text = ""})

		local  V92WepBaseAdminOptions = {Options = {}, CVars = {}, Label = "#Presets", MenuButton = "1", Folder = "v92_cows_weapon"}
										
		V92WepBaseAdminOptions.CVars = {"VNT_SWep_Base_JamToggle","VNT_SWep_Base_DrawToggle"}
		
		panel:AddControl("CheckBox", {
			Label = "Weapon Jamming",
			Command = "VNT_SWep_Base_JamToggle",
		})
		panel:AddControl("CheckBox", {
			Label = "Reload On Draw",
			Command = "VNT_SWep_Base_DrawToggle",
		})
	end	

	/*---------------------------------------------------------
	   Name: MadCowsToolMenu()
	---------------------------------------------------------*/
	local	function V92WepBaseToolMenu()

		spawnmenu.AddToolMenuOption("Options", "V92", "Weapon Bases", "Weapon Bases", "", "", V92WepBaseOptions)
	end
	hook.Add("PopulateToolMenu", "V92WepBaseToolMenu", V92WepBaseToolMenu)
end

if SERVER then
	function VehicleWeaponFix( ply, ent )
	   
	   if ply.InVec then
	   ply.InVec = false
	   ply:GetViewModel():SetNoDraw(false)
	   end

	   if ent:IsVehicle() then
	   ply.InVec = true
	   ply:GetViewModel():SetNoDraw(true)
	   end
	   
	end
	hook.Add("PlayerUse","VehicleWeaponFixHookLolFag",VehicleWeaponFix)

	hook.Add( "InitPostEntity", "RTScopeFix", function()
		if #ents.FindByClass( "sky_camera" ) <= 0 then
			local skycam = ents.Create( "sky_camera")
			skycam:Spawn()
				skycam:SetPos(skycam:GetPos() + Vector(0,0,500))
				skycam:Fire( "3D Skybox Scale", 0 )
		end
	end)

	hook.Add( "InitPostEntity", "FixReadySpeed", function()
		RunConsoleCommand("sv_defaultdeployspeed",1)
	end)
	
	local meta = FindMetaTable( "Entity" )
	if (!meta) then return end 

	local TriggerEntities = {
		trigger_autosave = true,
		trigger_changelevel = true,
		trigger_finale = true,
		trigger_gravity = true,
		trigger_hurt = true,
		trigger_impact = true,
		trigger_look = true,
		trigger_multiple = true,
		trigger_once = true,
		trigger_physics_trap = true,
		trigger_playermovement = true,
		trigger_proximity = true,
		trigger_push = true,
		trigger_remove = true,
		trigger_rpgfire = true,
		trigger_soundscape = true,
		trigger_serverragdoll = true,
		trigger_soundscape = true,
		trigger_teleport = true,
		trigger_transition = true,
		trigger_vphysics_motion = true,
		trigger_waterydeath = true,
		trigger_weapon_dissolve = true,
		trigger_weapon_strip = true,
		trigger_wind = true,
		func_occluder = true,
		func_precipitation = true,
		func_smokevolume = true,
		func_vehicleclip = true,
		func_areaportal = true,
		func_areaportalwindow = true,
		func_dustcloud = true,
		point_hurt = true,
		ambient_generic = true,
		env_steam = true,
		func_button = true,
		npc_maker = true,
		npc_template_maker = true,
		env_smokestack = true,
		item_battery = true,
		item_healthvial = true,
		item_healthkit = true,
		weapon_pistol = true,
		weapon_357 = true,
		weapon_ar2 = true,
		weapon_crossbow = true,
		weapon_smg1 = true,
		weapon_frag = true,
		weapon_stunstick = true,
		weapon_crowbar = true,
		weapon_rpg = true,
		weapon_slam = true,
		weapon_shotgun = true,
		func_door_rotating = true,
		spotlight_end = true,
		func_door = true,
		assault_assaultpoint = true,
	}

	function meta:IsTrigger()
		if TriggerEntities[self:GetClass()] then
			return true
		end
		return false
	end
	
	--	Download SCars/WAC Bases to prevent bitchy comments
	--	such as "it's in pieces!" or some shit like that...
	--	Seen it WAY too much to know that this is a needed check
	--	VvVvV
	--resource.AddWorkshop("104483020")	-- SCars Slim
	--resource.AddWorkshop("104990330")	-- WAC Aircraft Base
	--	If by some diabolis ex machina reason the 
	--	addon isn't fully downloaded, download my 
	--	SCars Bases this way just in case...
	--	VvVvV
	resource.AddWorkshop("505106454")	-- V92 Code Bases
end

---------------------------------------------
---------------------------------------------
--		ANIMATIONS
---------------------------------------------
---------------------------------------------

--	Going to clean that messy other animation file and move it here

local veh = nil
local isScarSeat = nil
local SCar = nil
local plyAng = nil
local vehAng = nil
local function SCarOverrideTurretAnim( ply, ent )
    if ply:InVehicle() then 
		veh = ply:GetVehicle()
		isScarSeat = veh:GetNetworkedInt( "SCarSeat" )
		SCar = veh:GetNetworkedEntity("SCarEnt")
		
		------------------------------
		------------------------------
		--	Non-Rotating Animations
		------------------------------
		------------------------------
		
		------------------------------
		------------------------------
		--	Standing, Revolver
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Standing, Dual
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandDual") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_DUEL)	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandDual") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandDual") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_DUEL)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Standing, Fists
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_FIST)	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_FIST)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Seated, Fists
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2SeatedFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3SeatedFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4SeatedFist") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_SIT_FIST)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Seated, Revolver
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2SeatedRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3SeatedRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3SeatedRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmd2Turret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4SeatedRevolver") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_SIT_FIST)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Crouching, Passive
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 5 and veh:GetNetworkedBool("SCASeat5CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 6 and veh:GetNetworkedBool("SCASeat6CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 7 and veh:GetNetworkedBool("SCASeat6CrouchGen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		------------------------------
		------------------------------
		--	Seated, Zen
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2SitZen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( "sit_zen" )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3SitZen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent( "sit_zen" )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4SitZen") then
			ply:SetLocalPos( Vector(0,0,0) )
			ply:DoAnimationEvent("sit_zen")	
			return true
		end
		
		------------------------------
		------------------------------
		--	Rotating Animations
		------------------------------
		------------------------------
		
		------------------------------
		------------------------------
		--	Standing, Revolver
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandRevolverRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandRevolverRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandRevolverRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_REVOLVER)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Standing, Dual
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandDualRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_DUEL)	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandDualRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandDualRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_DUEL)	
			return true
		end
		
		------------------------------
		------------------------------
		--	Standing, Fists
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("SCASeat2StandFistRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_FIST)	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandFistRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("SCASeat3StandFistRot2") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWERearTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWERearTower" ):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )	
			return true
		end
		if  isScarSeat == 4 and veh:GetNetworkedBool("SCASeat4StandFistRot") then
			ply:SetLocalPos( Vector(0,0,0) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles()
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower"	):GetAngles()
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent(ACT_HL2MP_IDLE_FIST)	
			return true
		end
	end
end
hook.Add("UpdateAnimation", "SCarOverrideTurretAnim", SCarOverrideTurretAnim)

---------------------------------------------
---------------------------------------------
--		SOUND TABLES
---------------------------------------------
---------------------------------------------

---------------------------------------------
---------------------------------------------
--	V92 Sounds
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "V92_128mm_Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/128mm_fire_1.wav","jessev92/weapons/128mm_fire_2.wav","jessev92/weapons/128mm_fire_3.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_cannon_fire.wav")

sound.Add( {	name 		= "HL2_Explode",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 75,
	pitch 		= { 90, 110 }, 
	sound		= { "weapons/explode3.wav","weapons/explode4.wav","weapons/explode5.wav"}
} )
util.PrecacheSound("weapons/explode3.wav")
util.PrecacheSound("weapons/explode4.wav")
util.PrecacheSound("weapons/explode5.wav")

sound.Add( {	name		= "NineTwo.SMG.FireM",
	channel		= CHAN_WEAPON,
	volume		= 1.0,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/weapons/smg1/fire1.wav"}
} )
util.PrecacheSound("jessev92/weapons/smg1/fire1.wav")

sound.Add( {	name		= "EPRadar_Ping",
	channel		= CHAN_ITEM,
	volume		= 0.05,
	level		= 10,
	pitch		= { 90, 110 }, 
	sound		= { "vehicles/junker/radar_ping_friendly1.wav" }
} )
util.PrecacheSound("vehicles/junker/radar_ping_friendly1.wav" )

sound.Add( {	name 		= "L92.Overheat.Ready",
	channel 	= CHAN_ITEM,
	volume		= 1.0,
	level		= 75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/m16a1/magspank.wav" }
} )
util.PrecacheSound("jessev92/weapons/m16a1/magspank.wav")

sound.Add( {	name 		= "L92.Overheat",
	channel 	= CHAN_ITEM,
	volume		= 1.0,
	level		= 75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/flaregun/fire.wav" }
} )
util.PrecacheSound("jessev92/weapons/flaregun/fire.wav")

sound.Add( {	name 		= "Minigun.OneFire",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/minigun_fire1.wav" }
} )

sound.Add( {	name 		= "Minigun.TwoFire",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/minigun_fire2.wav" }
} )

sound.Add( {	name 		= "Minigun.TwoFire.Bits",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/weapons/minigun_fire2_01.mp3",
					"jessev92/weapons/minigun_fire2_02.mp3",
					"jessev92/weapons/minigun_fire2_03.mp3",
					"jessev92/weapons/minigun_fire2_04.mp3",
					"jessev92/weapons/minigun_fire2_05.mp3",
					"jessev92/weapons/minigun_fire2_06.mp3",
					"jessev92/weapons/minigun_fire2_07.mp3",
					"jessev92/weapons/minigun_fire2_08.mp3",
					"jessev92/weapons/minigun_fire2_09.mp3" }
} )
util.PrecacheSound("jessev92/weapons/minigun_fire2_01.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_02.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_03.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_04.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_05.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_06.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_07.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_08.mp3")
util.PrecacheSound("jessev92/weapons/minigun_fire2_09.mp3")

sound.Add( {	name 		= "Minigun.ThreeFire",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/minigun_fire3.wav" }
} )

sound.Add( {	name 		= "Minigun.FourFire",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level 		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/minigun_fire4.wav" }
} )

sound.Add( {	name 		= "Minigun.FiveFire",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/minigun_fire5.wav" }
} )

sound.Add( {	name		= "V92.Wipers",
	channel		= CHAN_BODY,
	volume		= 1.0,
	level		= 75,
	pitch		= { 110 },
	sound		= { "jessev92/vehicles/windscreen_wipers_loop.wav"}
} )
util.PrecacheSound("jessev92/vehicles/windscreen_wipers_loop.wav")

---------------------------------------------
---------------------------------------------
--	Halo
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "Halo_M68_Fire",
	channel 	= CHAN_ITEM,
	volume		= 0.05,
	level		= 10,
	pitch 		= { 90, 110 }, 
	sound		= { "jessev92/halo/warthog/m68_fire1.wav","jessev92/halo/warthog/m68_fire2.wav","jessev92/halo/warthog/m68_fire3.wav" }
} )
util.PrecacheSound("jessev92/halo/warthog/m68_fire1.wav" )
util.PrecacheSound("jessev92/halo/warthog/m68_fire2.wav" )
util.PrecacheSound("jessev92/halo/warthog/m68_fire3.wav" )

sound.Add( {	name 		= "Halo_M68_Hit",
	channel 	= CHAN_ITEM,
	volume		= 0.05,
	level		= 10,
	pitch 		= { 90, 110 }, 
	sound		= { "jessev92/halo/warthog/m68_hit1.wav","jessev92/halo/warthog/m68_hit2.wav" }
} )
util.PrecacheSound("jessev92/halo/warthog/m68_hit1.wav" )
util.PrecacheSound("jessev92/halo/warthog/m68_hit2.wav" )

---------------------------------------------
---------------------------------------------
--	Battlefield 2
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "AH1Z.Cannon.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 140,
	pitch 		= { 90, 110 }, 
	sound		= { "jessev92/vehicles/aircraft/AH-1 Cobra_shoot.mp3"}
} )
util.PrecacheSound("jessev92/weapons/smg1/fire1.wav")

sound.Add( {	name	= "BF2.UH60.On",
	channel 	= CHAN_BODY,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/vehicles/aircraft/uh60_on.wav" }
} )
util.PrecacheSound("jessev92/vehicles/aircraft/uh60_on.wav")

sound.Add( {	name	= "BF2.UH60.Loop",
	channel		= CHAN_BODY,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/vehicles/aircraft/uh60_loop.wav" }
} )
util.PrecacheSound("jessev92/vehicles/aircraft/uh60_loop.wav")

sound.Add( {	name		= "BF2.M249.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/M249_fire.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/M249_fire.wav")

sound.Add( {	name		= "BF2.M134.Spin",
	channel 	= CHAN_ITEM,
	volume		= 1,
	level		= 75,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/M134_spin.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/M134_spin.wav")

sound.Add( {	name		= "BF2.Type85.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/type85_fire.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/type85_fire.wav")

sound.Add( {	name		= "BF2.Kord.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/KORD_fire_1p.mp3" }
} )
util.PrecacheSound("jessev92/bf2/weapons/kord_fire.mp3")

sound.Add( {	name		= "BF2.M2HB.Fire",
	channel		= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/50cal_fire.mp3" }
} )
util.PrecacheSound("jessev92/bf2/weapons/50cal_fire.mp3")

sound.Add( {	name		= "BF2.Artillery.Fall",
	channel 	= CHAN_ITEM,
	volume		= 1,
	level		= 1,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/Artillery_projectile_1.wav", "jessev92/bf2/weapons/Artillery_projectile_2.wav", "jessev92/bf2/weapons/Artillery_projectile_3.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/Artillery_projectile_1.wav")
util.PrecacheSound("jessev92/bf2/weapons/Artillery_projectile_2.wav")
util.PrecacheSound("jessev92/bf2/weapons/Artillery_projectile_3.wav")

sound.Add( {	name		= "BF2_Eryx_Reload",
	channel 	= CHAN_ITEM,
	volume		= 1,
	level		= 1,
	--pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/Eryx_Reload_1p.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/Eryx_Reload_1p.wav")

sound.Add( {	name		= "BF2_Rocket_Engine",
	channel 	= CHAN_ITEM,
	volume		= 1,
	level		= 1,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/weapons/Rocket_engine_start_idle.wav" }
} )
util.PrecacheSound("jessev92/bf2/weapons/Rocket_engine_start_idle.wav")

sound.Add( {	name		= "BF2.TankTowerRot",
	channel 	= CHAN_BODY,
	volume		= 1,
	level		= 1,
	--pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/tank/towerrotation.wav" }
} )
util.PrecacheSound("jessev92/bf2/tank/towerrotation.wav")

sound.Add( {	name		= "BF2.TankPipeRot",
	channel 	= CHAN_BODY,
	volume		= 1,
	level		= 1,
	--pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/tank/piperotation.wav" }
} )
util.PrecacheSound("jessev92/bf2/tank/piperotation.wav")

sound.Add( {	name		= "BF2.M6.Fire",
	channel		= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf2/m6/autocannon_3p.wav" }
} )
util.PrecacheSound("jessev92/bf2/m6/autocannon_3p.wav")

sound.Add( {	name		= "BF2.M6.StIdSt",
	channel 	= CHAN_BODY,
	volume		= 1,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf2/m6/startidlestop.wav" }
} )
util.PrecacheSound("jessev92/bf2/m6/startidlestop.wav")

sound.Add( {	name		= "BF2.M6.Reload",
	channel		= CHAN_ITEM,
	volume		= 1,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf2/m6/missile_reload.wav" }
} )
util.PrecacheSound("jessev92/bf2/m6/missile_reload.wav")

sound.Add( {	name		= "BF2.Shell_Impact_Dirt",
	channel		= CHAN_ITEM,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/tank/tank_shell_01.wav","jessev92/bf2/tank/tank_shell_02.wav","jessev92/bf2/tank/tank_shell_03.wav","jessev92/bf2/tank/tank_shell_04.wav" }
} )

sound.Add( {	name		= "BF2.Shell_Impact_Metal",
	channel		= CHAN_ITEM,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/bf2/tank/tank_shell_metal_01.wav","jessev92/bf2/tank/tank_shell_metal_02.wav","jessev92/bf2/tank/tank_shell_metal_03.wav","jessev92/bf2/tank/tank_shell_metal_04.wav" }
} )

---------------------------------------------
---------------------------------------------
--	Battlefield 3
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "BF3.50cal",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 0.75,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf3/m1a2_50cal_fire1.wav", "jessev92/bf3/m1a2_50cal_fire2.wav", "jessev92/bf3/m1a2_50cal_fire3.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_50cal_fire1.wav")
util.PrecacheSound("jessev92/bf3/m1a2_50cal_fire2.wav")
util.PrecacheSound("jessev92/bf3/m1a2_50cal_fire3.wav")

sound.Add( {	name 		= "BF3.CoaxLMG",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 0.75,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf3/m1a2_coax_lmg.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_coax_lmg.wav")

sound.Add( {	name 		= "BF3.Zoom",
	channel 	= CHAN_ITEM,
	volume		= 1.0,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf3/m1a2_gadget_zoom2.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_gadget_zoom2.wav")

sound.Add( {	name 		= "BF3.M1A2Cannon",
	channel 	= CHAN_WEAPON,
	volume		= 0.5,
	level		= 0.75,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf3/m1a2_cannon_fire.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_cannon_fire.wav")

sound.Add( {	name 		= "BF3.M1A2Reload",
	channel 	= CHAN_ITEM,
	volume		= 0.5,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf3/m1a2_cannon_reload.wav" }
} )
util.PrecacheSound("jessev92/bf3/m1a2_cannon_reload.wav")

---------------------------------------------
---------------------------------------------
--	Battlefield 2142
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "BF2142.TankTowerRot",
	channel 	= CHAN_BODY,
	volume		= 0.5,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf2142/vehicles/turret_turning.wav" }
} )
util.PrecacheSound("jessev92/bf2142/vehicles/turret_turning.wav")

sound.Add( {	name 		= "BF2142.TankTracks",
	channel 	= CHAN_BODY,
	volume		= 0.5,
	level		= 0.75,
	--pitch		= { 95, 105 }, 
	sound		= { "jessev92/bf2142/vehicles/tank_Tracks.wav" }
} )
util.PrecacheSound("jessev92/bf2142/vehicles/tank_Tracks.wav")

---------------------------------------------
---------------------------------------------
--	Resistance & Liberation
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "RnL.MG42.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/weapons/mg42/mg42_fire_1.wav", "jessev92/weapons/mg42/mg42_fire_2.wav" }
} )
util.PrecacheSound("jessev92/weapons/mg42/mg42_fire_1.wav")
util.PrecacheSound("jessev92/weapons/mg42/mg42_fire_2.wav")

sound.Add( {	name 		= "RnL.Wirbelwind.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1.0,
	level		= 75,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/vehicles/spg/wirbelwind_fire_01.wav","jessev92/vehicles/spg/wirbelwind_fire_02.wav","jessev92/vehicles/spg/wirbelwind_fire_03.wav","jessev92/vehicles/spg/wirbelwind_fire_04.wav" }
} )
util.PrecacheSound("jessev92/vehicles/spg/wirbelwind_fire_01.wav")
util.PrecacheSound("jessev92/vehicles/spg/wirbelwind_fire_02.wav")
util.PrecacheSound("jessev92/vehicles/spg/wirbelwind_fire_03.wav")
util.PrecacheSound("jessev92/vehicles/spg/wirbelwind_fire_04.wav")

---------------------------------------------
---------------------------------------------
--	Insurgency Mod
---------------------------------------------
---------------------------------------------
sound.Add( {	name		= "INS.M203.Fire",
	channel 	= CHAN_WEAPON,
	volume		= 1,
	level		= 140,
	pitch		= { 90, 110 }, 
	sound		= { "jessev92/weapons/m16a4_ins/m203_fire.wav" }
} )
util.PrecacheSound("jessev92/weapons/m16a4_ins/m203_fire.wav")

---------------------------------------------
---------------------------------------------
--	Black Mesa Source
---------------------------------------------
---------------------------------------------
sound.Add( {	name 		= "BMS.50cal",
	channel 	= CHAN_WEAPON,
	volume		= 0.55,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "jessev92/bms/50cal_single1.wav", "jessev92/bms/50cal_single2.wav", "jessev92/bms/50cal_single3.wav" }
} )
util.PrecacheSound("jessev92/bms/50cal_single1.wav")
util.PrecacheSound("jessev92/bms/50cal_single2.wav")
util.PrecacheSound("jessev92/bms/50cal_single3.wav")

---------------------------------------------
---------------------------------------------
--	SCars Slim
---------------------------------------------
---------------------------------------------

sound.Add( {	name 		= "SCar.TankTracks",
	channel 	= CHAN_BODY,
	volume		= 0.75,
	level		= 75,
	--pitch		= { 95, 105 }, 
	sound		= { "scartank/tracksmove.wav" }
} )
util.PrecacheSound("scartank/tracksmove.wav")

sound.Add( {	name 		= "SCar.TankEngine",
	channel 	= CHAN_BODY,
	volume		= 1,
	level		= 140,
	--pitch		= { 95, 105 }, 
	sound		= { "scartank/tankengine.wav" }
} )
util.PrecacheSound("scartank/tracksmove.wav")

sound.Add( {	name 		= "SCar.CoaxLMG",
	channel 	= CHAN_WEAPON,
	volume		= 0.75,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "scartank/turretfire.wav" }
} )
util.PrecacheSound("scartank/turretfire.wav")

sound.Add( {	name 		= "SCar.TankCannon",
	channel 	= CHAN_WEAPON,
	volume		= 0.75,
	level		= 140,
	pitch		= { 95, 105 }, 
	sound		= { "scartank/fire.wav" }
} )
util.PrecacheSound("scartank/fire.wav")

sound.Add( {	name 		= "SCar.TankReload",
	channel 	= CHAN_ITEM,
	volume		= 0.75,
	level		= 140,
	--pitch		= { 95, 105 }, 
	sound		= { "scartank/reload.wav" }
} )
util.PrecacheSound("scartank/reload.wav")


if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print("[V92] sh_V92CodeBases.lua Loaded!")	end