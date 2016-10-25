AddCSLuaFile( )
------------------------------------------------------
if not VNTCB then return false end --	Prevent this file from loading if for some odd reason the base Lua isn't loaded
------------------------------------------------------
--	Jesse V92's Custom SWep Base					--
--	Start Date:	2016/07/14							--
--	Purpose: Create a good SWep base				--
------------------------------------------------------
--	If you want to make weapons, you need to change	--
--		only the values listed with comments below.	--
--	The rest of it has been coded so it will read	--
--		these values and react properly.			--
--	If you want to make SWeps, refer to samples.	--
--	Those will show you in how to make SWeps.		--
--	When in doubt, contact me.						--
------------------------------------------------------
--	REMOVE LINES YOU DID NOT CHANGE!				--
--	THIS WILL SPEED UP LOAD TIMES!					--
------------------------------------------------------
--	Spawn settings									--	Can we spawn this?
------------------------------------------------------
SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = VNTBases.Wep -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherEntity = VNTGLType.GLUS -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 1250 -- (Integer) Force of grenade launchers and shell throwers like that.
SWEP.PrintName = "V92's Custom SWep Base" -- (String) Printed name on menu
SWEP.Manufacturer = VNTMaker.VNT -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCountry.USA -- (String) Country of origin
SWEP.MagazineName = VNTMagazine.magNATO556 -- (String) The name of the magazine the weapon uses - used in my Weapon Magazine System
SWEP.Category = VNTCategory.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.Slot = VNTBucket.Utility -- (Integer) Bucket to place weapon in, See autorun/sh_v92_code_base.lua; 1 to 6
SWEP.SlotPos = VNTSlot.Utility -- (Integer) Bucket position, See autorun/sh_v92_code_base.lua
SWEP.WEPSLOT = VNTType.None -- (String) Weapon type, See autorun/sh_v92_code_base.lua; Primary, Secondary, Melee, GrenadeOne, GrenadeTwo, Mine, Supply, None
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.
------------------------------------------------------
--	Model Information								--	Model settings and infomation
------------------------------------------------------
SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "" ) -- (String) View model - v_*
SWEP.ViewModelDefault = nil -- (String) View model - v_* ; used to reset the view model since self.ViewModel isn't recallable
SWEP.WorldModel = Model( "" ) -- (String) World model - w_*
SWEP.WorldModelDefault = nil -- (String) World model - w_* ; used to reset the world model since self.WorldModel isn't recallable

SWEP.UseHands = false -- (Boolean) Leave at false unless the model uses C_Arms
------------------------------------------------------
--	Gun Types										--	Set the type of weapon
------------------------------------------------------
SWEP.WeaponType = 1 -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Entity Shooter, 7=Rocket Launcher
SWEP.HoldType = nil -- (String) Fallback hold type
SWEP.DeployableType = 0 -- (Integer) 0=None, 1=Grenade Launcher, 2=Bipod, 3=Model Swap Bipod, 4=Model Swep Stock Deploy, 5=Deployable
SWEP.ViewModelBipod = nil -- (String) Model swap bipod view model
SWEP.WorldModelBipod = nil -- (String) Model swap bipod world model
SWEP.SuppressorType = 0 -- (Integer) 0=No Suppressor, 1=Model Swap, 2=Animation
SWEP.ViewModelSuppressed = nil -- (String) The Suppressed view model
SWEP.WorldModelSuppressed = nil -- (String) The Suppressed world model
SWEP.ViewModelStockOut = nil -- (String) The Suppressed view model
SWEP.WorldModelStockOut = nil -- (String) The Suppressed world model
------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------
SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 0 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.ClipSizePlus = 1 -- (Integer) How many extra bullets to add if CanChamber is true
SWEP.Primary.Ammo = "pistol" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.RPM = 0 -- (Integer) Go to a wikipxedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Primary.PureDmg = 1 -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Primary.NumShots = 1 -- (Integer) How many bullets per shot; think of this as a shotgun shell, higher integer, more pellets
SWEP.Primary.Cone = 0.004 -- (Float) Accuracy of the weapon; 0.004 is the average for rifles, 0.006 for short-barrel weapons, 0.008 for pistols
SWEP.Primary.Recoil = 1 -- (Float) Amount of recoil per shot
SWEP.Primary.Force = 15 -- (Integer) Amount of force for the bullet to emit on impact
SWEP.Primary.Distance = 56756 -- (Integer) Distance to before the bullet stops; max is 56756
------------------------------------------------------
--	Secondary Fire Settings							--	Settings for the alt-fire; if it has none, leave this be
------------------------------------------------------
SWEP.Secondary.ClipSize = -1 -- (Integer) Size of a secondary magazine; if no alt-fire, set to -1
SWEP.Secondary.DefaultClip = 0 -- (Integer) Default number of projectiles in the alt fire mag; if none, set to -1
SWEP.Secondary.ClipSizePlus = 1 -- (Integer) How many extra bullets to add if CanChamber is true
SWEP.Secondary.Ammo = "pistol" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Secondary.RPM = 0 -- (Integer) Go to a wikipxedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Secondary.PureDmg = 1 -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Secondary.NumShots = 1  -- (Integer) How many bullets per shot; think of this as a shotgun shell, higher integer, more pellets
SWEP.Secondary.Cone = 0.004 -- (Float) Accuracy of the weapon; 0.004 is the average for rifles, 0.006 for short-barrel weapons, 0.008 for pistols
SWEP.Secondary.Recoil = 1 -- (Float) Amount of recoil per shot
SWEP.Secondary.Force = 15 -- (Integer) Amount of force for the bullet to emit on impact
SWEP.Secondary.Distance = 56756 -- (Integer) Distance to before the bullet stops; max is 56756
------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------
SWEP.IsEntityShooter = false -- (Boolean) Does this weapon shoot entities instead of bullets?
SWEP.CanReloadWhenNotEmpty = true -- (Boolean) Can we reload when not empty? true=M16, false=M1 Garand
SWEP.CanChamber = true -- (Boolean) Can we load a round into the chamber?
SWEP.FireMode = { false , true , false , false } -- (Table: Boolean, Boolean, Boolean, Boolean ) Enable different fire modes on the weapon; Has modes, Has Single, Has Burst, Has Auto - in that order. You can have more than one, but the first must be true
SWEP.CurrentMode = 1 -- (Integer) Current fire mode of the weapon; used to set the default mode; corresponds to the FireMode table
SWEP.DeployDelay = 0 -- (Float) Time for the deploy animation to play; this isn't needed, may remove it
SWEP.Weight = 0 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.CanPenetrate = true -- (Boolean) Should the bullets CanPenetrate through surfaces?
SWEP.Ricochet = true -- (Boolean) Should the bullet richochet?
SWEP.CanFireUnderwater = false -- (Boolean) Can we shoot underwater?
SWEP.JammingChance = 1000 -- (Integer) Jam chance for the weapon between 1 and this number
SWEP.StrongPenetration = VNTAmmo.a9x19mmNATO[2] -- (Integer) Max penetration
SWEP.WeakPenetration = VNTAmmo.a9x19mmNATO[3] -- (Integer) Max wood penetration
SWEP.CanPenetrate = true -- (Boolean) Can the weapon penetrate?
SWEP.BurstCount = 3 -- (Integer) Amounts of shots to be fired by burst
SWEP.BurstDelay = 0.05 -- (Float) Time between bolt cycles in the burst
------------------------------------------------------
--	Special FX										--	Muzzle flashes, shell casings, etc
------------------------------------------------------
SWEP.MuzzleAttach = 1 -- (Integer) The number of the attachment point for muzzle flashes, typically "1"
SWEP.MuzzleFlashName = "fx_muzzleflash" -- (String) The name of the Lua/effects/effect.Lua file
SWEP.MuzzleFlashType = 1 -- (Integer) The number of the muzzle flash to use; see Lua/Effects/fx_muzzleflash.Lua
SWEP.ShellAttach = 2 -- (Integer) The number of the attachment point for shell ejections, typically "2"
SWEP.ShellEffect = "fx_shelleject" -- (String) Name of the file in Lua/effects/shelleject.lua to use for shell ejections; leave blank for none
SWEP.ShellType = 15 -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.ShellDelay = 0 -- (Float) Time between shot firing and shell ejection; useful for bolt-actions and things like that that need a delay
SWEP.UseTracer = true -- (Boolean) Do we use tracers?
SWEP.TracerRandomizer = 1 -- (Integer) Between 0 and this number, chance to make a TracerType if UseTracer is true
SWEP.CustomTracer = nil -- (String) Custom TracerType effect; lua/effects/*.lua
------------------------------------------------------
--	Machine Gun Settings							--	Things typically used on machine guns
------------------------------------------------------
SWEP.BeltFed = false -- (Boolean) Is it belt fed?
SWEP.HasBeltBG = false -- (Boolean) Does it have bodygroups for the ammo belt?
SWEP.BeltFedBG = { 2 , 0 , 10 } -- (Table: Int, Int, Int) Belt BG, sub-group start, sub-group end; used for guns that have bodygroups for the bullets on the belt depleting; I.E., INS M249
------------------------------------------------------
--	Shotgun Settings								--	Settings for shotguns
------------------------------------------------------
SWEP.PumpAction = false -- (Boolean) Is the shotgun pump action?
SWEP.ShellReload = false -- (Boolean) Does this weapon use individual shells?
------------------------------------------------------
--	Sniper Settings									--	Settings for sniper rifles
------------------------------------------------------
SWEP.ScopeType = 0 -- (Integer) Type of scope, 0=none, 1=overlay, 2=Render Target
SWEP.ScopeMaterial = 0 -- (Integer) Type of overlay, 0=Red Dot, 1=EOTech, 2=ACOG, 3=SVD, 4=M14, 5=L42A1, 6=PSG1, 7=German tri-bar
SWEP.ScopeMaterialCustom = nil -- (String: Material) Path to the scope overlay you want to use if you use an overlay scope
SWEP.ScopeMultipliers = { 8 , 4 } -- (Table: Float, Float) X magnification of the scope, ACOG would 4, etc.
SWEP.ScopeOverlayScale = 0.5 -- (Float) Scale of the scope overlay
SWEP.DefaultZoom = 1 -- (Float) Current zoom, default to 1; DON'T CHANGE
SWEP.BoltAction = false -- (Boolean) Is this bolt action? Removes the player from the scope after firing
SWEP.ReturnToScope = false -- (Boolean) Return to scope after cycling the bolt?
SWEP.HasVariableZoom = false -- (Boolean) Does the weapon have variable zoom?
------------------------------------------------------
--	Melee Settings									--
------------------------------------------------------
SWEP.MeleeAnimType = 0 -- (Integer) Melee type; 0=holdtype animation, 1=pistol whip, 2=rifle butt
SWEP.MeleeRange = 70 -- (Integer) Range of melee weapon swings
SWEP.HasMeleeAttack = false -- (Boolean) Does this weapon have a pistol whip or rifle butt animation?
SWEP.AltFireMelee = false -- (Boolean) Is the alt fire a melee attack?
SWEP.IsBladedMelee = false -- (Boolean) Is the melee a blade?
------------------------------------------------------
--	Akimbo Settings									--	Settings for akimbo weapons; I.E. CSS Dualies
------------------------------------------------------
SWEP.IsAkimbo = false -- (Boolean) Is this an akimbo weapon?
SWEP.MuzzleAttachLeft = 3 -- (Integer) The number of the attachment point for left muzzle flashes, typically "3"
SWEP.ShellAttachLeft = 4 -- (Integer) The number of the attachment point for left shell ejections, typically "4"
SWEP.BurstCountLeft = 3 -- (Integer) Amounts of shots to be fired by burst, left hand weapon; used in akimbo
SWEP.BurstDelayLeft = 0.05 -- (Float) 	Time between bolt cycles in the burst, left hand weapon; used in akimbo
------------------------------------------------------
--	Custom Sounds									--	Setup sounds here!
------------------------------------------------------
SWEP.SND_PrimaryFire = Sound( "Weapon_SMG1.Single" ) -- (String) Primary shoot sound
SWEP.SND_PrimarySuppressedFire = Sound( "Weapon_SMG1.Special1" ) -- (String) Primary suppressed shoot sound
SWEP.SND_PrimaryDryFire = Sound( "Weapon_SMG1.Special2" ) -- (String) Primary dry fire sound
SWEP.SND_GrenadeLauncherFire = Sound( "Weapon_SMG1.Double" ) -- (String) Grenade launcher sound
SWEP.SND_Reload = nil -- (String) Reload sound
SWEP.SND_ShotgunReloadStart = nil -- (String) Foley sound for ACT_SHOTGUN_RELOAD_START if the model doesn't have one defined internally
SWEP.SND_ShotgunShellInsert = nil -- (String) Shell insert sound for ACT_VM_RELOAD if the model doesn't have one defined internally
SWEP.SND_ShotgunPump = nil -- (String) Pump sound for ACT_SHOTGUN_PUMP if the model doesn't have one defined internally
SWEP.SND_ShotgunReloadEnd = nil -- (String) Foley sound for ACT_SHOTGUN_RELOAD_FINISH if the model doesn't have one defined internally
SWEP.SND_JamSmallPistol = Sound( "Jam.Short.Pistol" ) -- (String) Little jam sound for pistols
SWEP.SND_JamLargePistol = Sound( "Jam.Long.Pistol" ) -- (String) Big jam sound for pistols
SWEP.SND_JamSmall = Sound( "Jam.Short.Rifle" ) -- (String) Little jam sound for everything else
SWEP.SND_JamLarge = Sound( "Jam.Long.Rifle" ) -- (String) Big jam sound for everything else
SWEP.SND_IronsightIn = Sound( "VNT.SWep.IronIn1" ) -- (String) Sound for going into steel sight
SWEP.SND_IronsightOut = Sound( "VNT.SWep.IronOut1" ) -- (String) Sound for going out of steel sight
SWEP.SND_PistolWhipHit = Sound( "VNT.SWep.Melee.WhipHit" ) -- (String) Sound for pistol whip hits
SWEP.SND_PistolWhipMiss = Sound( "VNT.SWep.Melee.WhipMiss" ) -- (String) Sound for pistol whip misses
SWEP.SND_MeleeHitWall = Sound( "VNT.SWep.Melee.HitWall" ) -- (String) Sound for melee world hits
SWEP.SND_MeleeHitCharacter = Sound( "VNT.SWep.Melee.HitFlesh" ) -- (String) Sound for melee flesh hits
SWEP.SND_MeleeMissed = Sound( "VNT.SWep.Melee.Slash" ) -- (String) Sound for melee misses
SWEP.SND_ZoomIn = Sound( "VNT.SWep.ZoomIn" ) -- (String) Sound used when zooming into a scope
SWEP.SND_ZoomOut = Sound( "VNT.SWep.ZoomOut" ) -- (String) Sound used when zooming out of a scope
SWEP.SND_CycleZoomIn = Sound( "VNT.SWep.ZoomCycleIn" ) -- (String) Sound used when cycling the zoom level of a scope
SWEP.SND_CycleZoomOut = Sound( "VNT.SWep.ZoomCycleOut" ) -- (String) Sound used when cycling the zoom level of a scope
------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------
SWEP.IronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Transform
SWEP.IronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Rotation
SWEP.StockIronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Unfolded Stock Ironsight XYZ Transform
SWEP.StockIronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Unfolded Stock Ironsight XYZ Rotation
SWEP.RunArmOffset = Vector( 0 , -0 , 1.5 ) -- (Vector) Sprinting XYZ Transform
SWEP.RunArmAngle = Vector( -35 , -3 , 0 ) -- (Vector) Sprinting XYZ Rotation
------------------------------------------------------
--	Setup											--
------------------------------------------------------
SWEP.DisableDuplicator = true
SWEP.BaseCone = SWEP.Primary.Cone
SWEP.FirstDraw = GetConVarNumber( "VNT_SWep_Base_DrawToggle" )
SWEP.LauncherLoaded = false
SWEP.FiringPinForward = false
SWEP.LauncherPinForward = false
SWEP.ActionDelay = CurTime( )
SWEP.PistolPunchesX = { -0.6 , -0.5 , -0.4 , -0.3 , 0.3 , 0.4 , 0.5 , 0.6 }
SWEP.PistolPunchesY = { -1 , -0.9 , -0.8 , -0.7 , -0.6 , -0.5 , -0.4 }
SWEP.RiflePunchesX = { -0.6 , -0.5 , -0.4 , -0.3 , 0.3 , 0.4 , 0.5 , 0.6 }
SWEP.RiflePunchesY = { -0.7 , -0.6 , -0.5 , -0.4 }

if CLIENT then
	SWEP.DrawWeaponInfoBox = true
	SWEP.BounceWeaponIcon = false
	SWEP.DrawAmmo = true
	SWEP.DrawCrosshair = false
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName ) --	Add a language value for our weapon
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) ) --	Make our spawn icon our kill icon

	function SWEP:CustomDrawHUD( )
	end --	Draw your own custom stuff here
elseif SERVER then
	resource.AddWorkshop( SWEP.WorkshopID )
end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:CustomInitialize( )
	self.HoldMeRight = VNTHType.Rifle -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
end

function SWEP:Initialize( )

	self:CustomInitialize( )

	--	Drop on death
	self.Owner:ShouldDropWeapon( true )
	self:ShouldDropOnDie( true )
	self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )

	if self.WeaponType == 6 then
		self:SetVNTSBLchrLoaded( true )
	end
end --	Called when the weapon is first loaded

------------------------------------------------------
------------------------------------------------------
--	Nothing beyond this needs to be included		--
------------------------------------------------------
------------------------------------------------------
local SpeedToggle = GetConVarNumber( "VNT_SWep_Base_SpeedToggle" )
local MaxRunSpeed = GetConVarNumber( "VNT_SWep_Base_Speed_Run" )
local MaxWalkSpeed = GetConVarNumber( "VNT_SWep_Base_Speed_Walk" )
--local GUISizeScaleFactor = GetConVarNumber( "VNT_SWep_Base_IconSize" )
local CVarTracerToggle = GetConVarNumber( "VNT_SWep_Base_TracerToggle" )

SWEP.Primary.Delay = ( 60 / SWEP.Primary.RPM ) -- (Float) Don't touch
SWEP.Primary.Damage = math.random( SWEP.Primary.PureDmg - 3 , SWEP.Primary.PureDmg + 3 )
SWEP.Primary.ConeCoil = ( SWEP.Primary.Cone / 2 ) -- (Float) Don't touch
SWEP.Primary.Automatic = false  -- (Boolean) Is the primary fire automatic or semi-auto?

SWEP.Secondary.Delay = ( 60 / SWEP.Secondary.RPM ) -- (Float) Don't touch
SWEP.Secondary.Damage = math.random( SWEP.Secondary.PureDmg - 3 , SWEP.Secondary.PureDmg + 3 )
SWEP.Secondary.ConeCoil = ( SWEP.Secondary.Cone / 2 ) -- (Float) Don't touch
SWEP.Secondary.Automatic = false  -- (Boolean) Is the Secondary fire automatic or semi-auto?

SWEP.BurstShots = ( SWEP.BurstCount + 1 ) -- (Integer) Don't touch
SWEP.BurstCounter = 0 -- (Integer) Don't touch
SWEP.BurstTimer = 0 -- (Integer) Don't touch

SWEP.BurstShotsL = ( SWEP.BurstCountLeft + 1 ) -- (Integer) Don't touch
SWEP.BurstCounterL = 0 -- (Integer) Don't touch
SWEP.BurstTimerL = 0 -- (Integer) Don't touch

SWEP.UseWorldAnimations = true -- (Boolean) Enable dynamic hold types

SWEP.HasRTScope = false -- (Boolean) Does this have an RT scope?
SWEP.IsCloseZoomed = false -- (Boolean) Don't touch

function SWEP:SetupDataTables( )
	self:NetworkVar( "Bool" , 0 , "VNTSBHolstered" ) --	Holstered
	self:NetworkVar( "Bool" , 1 , "VNTSBSuppressed" ) --	Suppressed
	self:NetworkVar( "Bool" , 2 , "VNTSBIronSighted" ) --	Ironsights
	self:NetworkVar( "Bool" , 3 , "VNTSBScopedIn" ) --	Scoped
	self:NetworkVar( "Bool" , 4 , "VNTSBJammedL" ) --	Little Jam
	self:NetworkVar( "Bool" , 5 , "VNTSBJammedB" ) --	Big Jam
	self:NetworkVar( "Bool" , 7 , "VNTSBBipod" ) --	Bipod
	self:NetworkVar( "Bool" , 8 , "VNTSBGLauncher" ) --	Grenade Launcher
	self:NetworkVar( "Bool" , 9 , "VNTSBLchrLoaded" ) --	GL is Loaded
	self:NetworkVar( "Bool" , 10 , "VNTSBProne" ) --	Player is Prone
	self:NetworkVar( "Bool" , 11 , "VNTSBShotgunRel" ) --	Shotgun is reloading
	self:NetworkVar( "Bool" , 12 , "VNTSBStock" ) -- Shotgun is reloading
	self:NetworkVar( "Bool" , 13 , "VNTSBRoundInChamber" ) -- Round in the chamber
	self:NetworkVar( "Float" , 0 , "VNTSBHolsterTime" ) --	Holster time delay
	self:NetworkVar( "Float" , 1 , "VNTSBZoom" ) --	Zoom
end --	Setup our networked shit

if CLIENT then
	local IronsightToggleTime = 0.3

	-----------------------------------------------------------
	--	SWEP:DrawHUD()
	--	You can draw to the HUD here. It will only draw when
	--		the client has the weapon deployed.
	-----------------------------------------------------------
	function SWEP:DrawHUD( )
		
		--	Custom function for children
		self:CustomDrawHUD( )

		--	Deployables
		
		local TEX_Bipod = Material( "jessev92/ui/insmic/bipod.png" , "UnlitGeneric" )
		local TEX_Cache = Material( "jessev92/ui/insmic/cache.png" , "UnlitGeneric" )
		local SizeDeployX, SizeDeployY = 128 , 128
		local PosDeployX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_DeployX" ) ) - SizeDeployX/2 )
		local PosDeployY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_DeployY" ) ) - SizeDeployY/2 )

		--	Force Multipliers
		
		local SizeX = ScreenScale( 40 )
		local SizeY = ScreenScale( 40 )

		if self:GetVNTSBGLauncher( ) == true then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Cache )
			surface.DrawTexturedRect( ScrW( ) * 0.925 + GetConVarNumber( "VNT_SWep_Base_CacheX" ) , ScrH( ) * 0.7 + GetConVarNumber( "VNT_SWep_Base_CacheY" ) , SizeX , SizeY )
		end

		if self:GetVNTSBBipod( ) == true then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Bipod )
			surface.DrawTexturedRect( ScrW( ) * 0.925 + GetConVarNumber( "VNT_SWep_Base_CacheX" ) , ScrH( ) * 0.7 + GetConVarNumber( "VNT_SWep_Base_CacheY" ) , SizeX , SizeY )
		end
	
		local SizeStockX, SizeStockY = 128 , 64
		local PosStockX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_DeployX" ) ) - SizeStockX/2 )
		local PosStockY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_DeployY" ) ) - SizeStockY/2 )
		local TEX_StockIn = Material( "jessev92/ui/icons/stock_in.png" , "UnlitGeneric" )
		local TEX_StockOut = Material( "jessev92/ui/icons/stock_out.png" , "UnlitGeneric" )
		
		if self.DeployableType == 4 or self.DeployableType == 5 then
			if self:GetVNTSBStock( ) == true then
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.SetMaterial( TEX_StockOut )
				surface.DrawTexturedRect( PosStockX , PosStockY , SizeStockX , SizeStockY )
			else
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.SetMaterial( TEX_StockIn )
				surface.DrawTexturedRect( PosStockX , PosStockY , SizeStockX , SizeStockY )
			end
		end
		
		--	Suppressors
		
		local TEX_Supp = Material( "jessev92/ui/icons/pistol_sup.png" , "UnlitGeneric" )
		local TEX_UnSupp = Material( "jessev92/ui/icons/pistol_unsup.png" , "UnlitGeneric" )
		local SizeUnSuppX, SizeUnSuppY = 150 , 64
		local SizeSuppX, SizeSuppY = 150 , 64
		local PosSuppX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_SuppX" ) ) - SizeSuppX/2 )
		local PosSuppY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_SuppY" ) ) - SizeSuppY/2 )

		if self.SuppressorType != 0 then
			if self:GetVNTSBSuppressed( ) == true then
				surface.SetMaterial( TEX_Supp )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosSuppX , PosSuppY , SizeSuppX , SizeSuppY )
			else
				surface.SetMaterial( TEX_UnSupp )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosSuppX , PosSuppY , SizeUnSuppX , SizeUnSuppY )
			end
		end
		
		--	Semi-Auto
		
		local TEX_Semi = Material( "jessev92/ui/icons/fm_semi.png" , "UnlitGeneric" )
		local SizeFMSemiX , SizeFMSemiY = 75 , 32
		local PosFMSemiX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFX" ) ) - SizeFMSemiX/2 )
		local PosFMSemiY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFY" ) ) - SizeFMSemiY/2 )
		
		--	Burst
		
		local TEX_Burst = Material( "jessev92/ui/icons/fm_burst.png" , "UnlitGeneric" )
		local SizeFMBurstX, SizeFMBurstY = 150 , 32
		local PosFMBurstX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFX" ) ) - SizeFMBurstX/2 )
		local PosFMBurstY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFY" ) ) - SizeFMBurstY/2 )
		
		--	Auto
		
		local TEX_Auto = Material( "jessev92/ui/icons/fm_auto.png" , "UnlitGeneric" )
		local SizeFMAutoX, SizeFMAutoY = 200 , 32
		local PosFMAutoX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFX" ) ) - SizeFMAutoX/2 )
		local PosFMAutoY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFY" ) ) - SizeFMAutoY/2 )
		
		-- Safety
		
		local TEX_Safe = Material( "jessev92/ui/icons/fm_safety.png" , "UnlitGeneric" )
		local SizeFMSafeX, SizeFMSafeY = 75 , 32
		local PosFMSafeX = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFX" ) ) - SizeFMSafeX/2 )
		local PosFMSafeY = ( ( GetConVarNumber( "VNT_SWep_Base_HUD_RoFY" ) ) - SizeFMSafeY/2 )
		
		if self:GetVNTSBHolstered( ) == false then
			if self.CurrentMode == 1 then
				--	If in Semi-Auto mode then
				surface.SetMaterial( TEX_Semi )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosFMSemiX , PosFMSemiY , SizeFMSemiX , SizeFMSemiY )
			elseif self.CurrentMode == 2 then
				--	If in burst mode then
				surface.SetMaterial( TEX_Burst )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosFMBurstX , PosFMBurstY , SizeFMBurstX , SizeFMBurstY )
			elseif self.CurrentMode == 3 then
				--	If in auto mode then
				surface.SetMaterial( TEX_Auto )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosFMAutoX , PosFMAutoY , SizeFMAutoX , SizeFMAutoY )
			end
		else
			--	If Safety'd then
			surface.SetMaterial( TEX_Safe )
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.DrawTexturedRect( PosFMSafeX , PosFMSafeY , SizeFMSafeX , SizeFMSafeY )
		end

		if self.ScopeType == 1 then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			local SWid = surface.ScreenWidth( )
			local SHei = surface.ScreenHeight( )
			local ScSize = self.ScopeOverlayScale
			local ScMat = self.ScopeMaterial
			local TEX_REDDOT = surface.GetTextureID( "jessev92/ui/scope/crosshair_reddot" )
			local TEX_EOTECH = surface.GetTextureID( "jessev92/ui/scope/crosshair_eotech" )
			local TEX_ACOG = surface.GetTextureID( "jessev92/ui/scope/crosshair_acog" )
			local TEX_SVD = surface.GetTextureID( "jessev92/ui/scope/crosshair_svd" )
			local TEX_M14 = surface.GetTextureID( "jessev92/ui/scope/crosshair_m14" )
			local TEX_L42A1 = surface.GetTextureID( "jessev92/ui/scope/crosshair_l42a1" )
			local TEX_PSG1 = surface.GetTextureID( "jessev92/ui/scope/crosshair_psg1" )
			local TEX_GERMAN = surface.GetTextureID( "jessev92/ui/scope/crosshair_german" )

			if self:GetVNTSBScopedIn( ) == true then
				-- (Integer) Type of overlay, 0=Red Dot, 1=EOTech, 2=ACOG, 3=SVD, 4=M14, 5=L42A1
				if ScopeMaterialCustom != nil then
					surface.SetMaterial( self.ScopeMaterialCustom )
				else
					if ScMat == 0 then
						surface.SetTexture( TEX_REDDOT )
					elseif ScMat == 1 then
						surface.SetTexture( TEX_EOTECH )
					elseif ScMat == 2 then
						surface.SetTexture( TEX_ACOG )
					elseif ScMat == 3 then
						surface.SetTexture( TEX_SVD )
					elseif ScMat == 4 then
						surface.SetTexture( TEX_M14 )
					elseif ScMat == 5 then
						surface.SetTexture( TEX_L42A1 )
					elseif ScMat == 6 then
						surface.SetTexture( TEX_PSG1 )
					elseif ScMat == 7 then
						surface.SetTexture( TEX_GERMAN )
					else
						surface.SetTexture( TEX_EOTECH )
					end
				end
				surface.DrawTexturedRect( ( ( SWid / 2 ) - ( SHei / 2 ) ) , ( 0 ) , SHei , SHei )
			end
		end

		return true
	end

	----------------------------------------------------------
	--	SWEP:GetViewModelPosition() 						--	Allows you to re-position the view model.
	----------------------------------------------------------
	function SWEP:GetViewModelPosition( pos , ang )
		local isIronsighted = self:GetVNTSBIronSighted( )
		local Holster = self:GetVNTSBHolstered( )
		local DashDelta = 0

		if ( ( self.Owner:KeyDown( IN_SPEED ) ) and ( self.Owner:GetVelocity( ):Length( ) > self.Owner:GetWalkSpeed( ) ) ) or self.IsCloseToWall or self:GetVNTSBHolstered( ) == true  then
			if ( not self.DashStartTime ) then
				self.DashStartTime = CurTime( )
			end

			--how much movment when running
			self.SwayScale = 2.0
			self.BobScale = 2.0
			--movment time
			DashDelta = math.Clamp( ( ( CurTime( ) - self.DashStartTime ) / 0.15 ) ^ 1.2 , 0 , 1 )
		else
			if ( self.DashStartTime ) then
				self.DashEndTime = CurTime( )
			end

			--how much movement when in or out of ironsights
			if ( self:GetVNTSBIronSighted( ) == true ) then
				self.SwayScale = 0.1
				self.BobScale = 0.1
			else
				self.SwayScale = 1.0
				self.BobScale = 1.0
			end

			--movment time
			if ( self.DashEndTime ) then
				DashDelta = math.Clamp( ( ( CurTime( ) - self.DashEndTime ) / 0.15 ) ^ 1.2 , 0 , 1 )
				DashDelta = 1 - DashDelta

				if ( DashDelta == 0 ) then
					self.DashEndTime = nil
				end
			end

			self.DashStartTime = nil
		end

		--now all the movment and stuff	
		if ( DashDelta ) then
			local Down = ang:Up( ) * -1
			local Right = ang:Right( )
			local Forward = ang:Forward( )
			local UseVector = false

			if ( not self.RunArmAngle.pitch ) then
				UseVector = true
			end

			if ( UseVector == true ) then
				ang:RotateAroundAxis( ang:Right( ) , self.RunArmAngle.x * DashDelta )
				ang:RotateAroundAxis( ang:Up( ) , self.RunArmAngle.y * DashDelta )
				ang:RotateAroundAxis( ang:Forward( ) , self.RunArmAngle.z * DashDelta )
				pos = pos + self.RunArmOffset.x * ang:Right( ) * DashDelta
				pos = pos + self.RunArmOffset.y * ang:Forward( ) * DashDelta
				pos = pos + self.RunArmOffset.z * ang:Up( ) * DashDelta
			else
				ang:RotateAroundAxis( Right , self.RunArmAngle.pitch * DashDelta )
				ang:RotateAroundAxis( Down , self.RunArmAngle.yaw * DashDelta )
				ang:RotateAroundAxis( Forward , self.RunArmAngle.roll * DashDelta )
				pos = pos + ( Down * self.RunArmOffset.x + Forward * self.RunArmOffset.y + Right * self.RunArmOffset.z ) * DashDelta
			end

			if ( self.DashEndTime ) then return pos , ang end
		end

		if ( self:GetVNTSBIronSighted( ) ~= self.LastIron ) then
			self.LastIron = self:GetVNTSBIronSighted( )
			self.IronTime = CurTime( )

			if ( self:GetVNTSBIronSighted( ) == true ) then
				self.SwayScale = 0.1
				self.BobScale = 0.1
			else
				self.SwayScale = 1.0
				self.BobScale = 1.0
			end
		end

		local IronTime = self.IronTime or 0
		if ( self:GetVNTSBIronSighted( ) == false and IronTime < CurTime( ) - IronsightToggleTime ) then return pos , ang end
		local Mul = 1.0

		if ( IronTime > CurTime( ) - IronsightToggleTime ) then
			Mul = math.Clamp( ( CurTime( ) - IronTime ) / IronsightToggleTime , 0 , 1 )

			if ( not isIronsighted ) then
				Mul = 1 - Mul
			end
		end
		if self:GetVNTSBStock() == true then
			if ( self.StockIronSightsAng ) then
				ang = ang * 1
				ang:RotateAroundAxis( ang:Right( ) , self.StockIronSightsAng.x * Mul )
				ang:RotateAroundAxis( ang:Up( ) , self.StockIronSightsAng.y * Mul )
				ang:RotateAroundAxis( ang:Forward( ) , self.StockIronSightsAng.z * Mul )
			end

			local Right = ang:Right( )
			local Up = ang:Up( )
			local Forward = ang:Forward( )
			pos = pos + self.StockIronSightsPos.x * Right * Mul
			pos = pos + self.StockIronSightsPos.y * Forward * Mul
			pos = pos + self.StockIronSightsPos.z * Up * Mul
		else
			if ( self.IronSightsAng ) then
				ang = ang * 1
				ang:RotateAroundAxis( ang:Right( ) , self.IronSightsAng.x * Mul )
				ang:RotateAroundAxis( ang:Up( ) , self.IronSightsAng.y * Mul )
				ang:RotateAroundAxis( ang:Forward( ) , self.IronSightsAng.z * Mul )
			end

			local Right = ang:Right( )
			local Up = ang:Up( )
			local Forward = ang:Forward( )
			pos = pos + self.IronSightsPos.x * Right * Mul
			pos = pos + self.IronSightsPos.y * Forward * Mul
			pos = pos + self.IronSightsPos.z * Up * Mul
		end
		return pos , ang
	end

	-----------------------------------------------------------
	--	SWEP:AdjustMouseSensitivity()
	--	Allows you to adjust the mouse sensitivity.
	-----------------------------------------------------------
	function SWEP:AdjustMouseSensitivity( )
		if ( self:GetVNTSBScopedIn( ) == true ) then
			if self.IsCloseZoomed == true then
				return 0.05
			else
				return 0.15
			end
		elseif ( self:GetVNTSBIronSighted( ) == true ) then
			if self.ScopeType == 2 then
				return 0.1
			else
				return 0.25
			end
		else
			return 1
		end
	end

	-----------------------------------------------------------
	--	SWEP:GetTracerOrigin()
	--	Allows you to override where the TracerType comes from (in first person view)
	--		returning anything but a vector indicates that you want the default action.
	-----------------------------------------------------------
	function SWEP:GetTracerOrigin( )
	end
end

------------------------------------------------------
--	Primary Fire Functions							--
------------------------------------------------------
function SWEP:CanPrimaryAttack( )
	if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then
		if self:GetVNTSBHolstered( ) == true or self:Clip1( ) <= 0 or self:GetVNTSBJammedB( ) == true or self:GetVNTSBJammedL( ) == true or self.Owner:KeyDown( IN_SPEED ) or self.IsCloseToWall then
			--	mag's empty
			--(self.Primary.ClipSize <= 0 and self.Melee == false) or				--	or we don't use ammo/we're not melee
			--not self.Owner:IsNPC() or											--	or we're not an NPC
			--	or we have a big jam
			--	or we have a small jam
			--	or we're sprinting
			--	or we're near a wall
			--	If the mag is empty, the bolt is back, and we're not a melee then
			if ( self:Clip1( ) <= 0 ) and self.FiringPinForward == false and self.WeaponType ~= 1 then
				if self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true then
				else
				end

				--	play our suppressed dry fire
				--self:SendWeaponAnim( ACT_VM_DRYFIRE_SILENCED )
				--self:SendWeaponAnim(ACT_VM_DRYFIRE)
				if ( self.WeaponType == 2 ) then
					self:EmitSound( "VNT.SWep.Empty6" )
				else
					self:EmitSound( "VNT.SWep.Empty5" )
				end

				self.FiringPinForward = true
			end

			return false --	we can't shoot
		end --	If holstered,
	end

	return true --	we can shoot
end --	Check if we can run +attack


function SWEP:PrimaryAttack( )

	if not IsFirstTimePredicted( ) then return end

	--	Run our melee function
	if self.WeaponType == 1 then
		self:Melee( )

		return false
	end

	--	we can't fire underwater & we're underwater
	if ( self.CanFireUnderwater == false and self.Owner:WaterLevel( ) > 2 ) then
		return false
	else
		if self:GetVNTSBScopedIn( ) == true then
			if self.BoltAction == true then
				if ( self:GetVNTSBScopedIn( ) == true or self:GetVNTSBIronSighted( ) == true ) then
					self:ToggleIronsights( )
				end

				if self.ReturnToScope == true then
					timer.Simple( 0.6 , function( )
						self:ToggleIronsights( )
					end )
				end
			end
		end

		--	If you're pressing Use+Mouse1 and we're not in iron sights, and we're not a melee then
		--if ( self.Owner:KeyDown( IN_USE ) and self:GetVNTSBIronSighted( ) == false and ( self.ViewModelStockOut( ) != nil or self.ViewModelSuppressed( ) != nil or self.WorldModelBipod( ) != nil or self:GetVNTSBGLauncher( ) == false ) ) then
		if ( self.Owner:KeyDown( IN_USE ) and self:GetVNTSBIronSighted( ) == false ) then
			--	If you press Mouse 1 + Use, Toggle our GL or Bipod mode if we have them
			if ( self.DeployableType ~= 0 ) then
				--	If we have a GL
				if self.DeployableType == 1 then
					--	Toggle our GL mode and end the function
					self:ToggleGrenadeMode( )

					return false
				elseif self.DeployableType == 2 or self.DeployableType == 3 then
					--	If we have a bipod
					--	Toggle our bipod deployment and end the function
					self:ToggleBipod( )

					return false
				elseif self.DeployableType == 4 then
					--	If we have a stock
					--	Toggle our stock deployment and end the function
					self:ToggleStock( )

					return false
				else
					-- else if you didn't read and put both of them to true, set them both to false to prevent errors, sorry boys.
					self.DeployableType = 0
				end
			end
		end

		--	Check for various things that say, "hey fucktard, you can't shoot now"
		if not self:CanPrimaryAttack( ) then return end

		--	If we're in GL mode and action delay has expire then
		if self:GetVNTSBGLauncher( ) == true then
			--	If the launcher is empty, and the bolt is back then
			if self:GetVNTSBLchrLoaded( ) == false and self.LauncherPinForward == false then
				--	Emit our empty sound
				self:EmitSound( self.SND_PrimaryDryFire )
				--	Set a delay
				self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
				self:SetNextSecondaryFire( CurTime( ) + self.Primary.Delay )
				--	Bolt is forward
				self.LauncherPinForward = true
			elseif self:GetVNTSBLchrLoaded( ) == true and self.LauncherPinForward == false then

				self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
				self:SetNextSecondaryFire( CurTime( ) + self.Primary.Delay )

				self:TakeSecondaryAmmo( 1 )
				self:SetVNTSBLchrLoaded( false )
				self:EmitSound( self.SND_GrenadeLauncherFire )

				if CLIENT then
					--	If our muzzle flashes are enabled
					if GetConVarNumber( "VNT_SWep_Base_FlashToggle" ) ~= 0 then
						self.Owner:MuzzleFlash( )
						--	Emit our muzzle flash
						local FX = EffectData( )
						FX:SetOrigin( self.Owner:GetShootPos( ) )
						FX:SetEntity( self )
						FX:SetStart( self.Owner:GetShootPos( ) )
						FX:SetNormal( self.Owner:GetAimVector( ) )
						FX:SetAttachment( self.MuzzleAttach )
						--	emit normal rifle smoke
						util.Effect( "fx_smoke_rifle_bf3" , FX )
					end
				end

				self:EntityLauncher( )
			end

			--	Exit our attack function
			return false
		end

		--	If our mag isn't empty
		if self:Clip1( ) > 0 then
			--	If we're suppressed then
			if self:GetVNTSBSuppressed( ) == true then
				--	Emit our suppressed sound
				self:EmitSound( self.SND_PrimarySuppressedFire )
			else
				--	Else emit the normal sound
				self:EmitSound( self.SND_PrimaryFire )
			end

			if self.IsEntityShooter == true then
				self:EntityShooter( )
				self:TakePrimaryAmmo( 1 )
			else
				if self.CurrentMode == 1 then
					self.Primary.Automatic = false
					self:FireBullet( self.Primary.Damage , self.Primary.Cone , self.Primary.NumShots , self.Primary.Force )
					self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
					self:TakePrimaryAmmo( 1 )
				elseif self.CurrentMode == 2 then
					self.Primary.Automatic = false
					self.BurstTimer = CurTime( )
					self.BurstCounter = self.BurstShots - 1
					self:SetNextPrimaryFire( CurTime( ) + 0.5 )
				elseif self.CurrentMode == 3 then
					self.Primary.Automatic = true
					self:FireBullet( self.Primary.Damage , self.Primary.Cone , self.Primary.NumShots , self.Primary.Force )
					self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
					self:TakePrimaryAmmo( 1 )
				end
			end

			--	Muzzle flashes & shells
			self:ShootEffects( )

			--	Play our firing animations
			self:PlayFiringAnimation( )

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + self.Primary.Delay )

			if self:SelectWeightedSequence( ACT_SHOTGUN_PUMP ) and self.PUMPACTION == true then
				self:SGPump( )
			end

			--	If our Jam toggle is set to true then
			if GetConVarNumber( "VNT_SWep_Base_JamToggle" ) ~= 0 then
				--	If we're holstered or mag is empty then quit
				if self:GetVNTSBHolstered( ) == true or self:Clip2( ) <= 1 then return end
				--	Set our Jam chance to be based on our CVar
				local JammingChance = GetConVarNumber( "VNT_SWep_Base_JamChance" )
				JamDice = ( math.random( 1 , JammingChance ) )

				--	If we hit our small jam chance
				if JamDice > ( JamDice - 5 ) then
					--	Set jammed little to true and run the function
					self:SetVNTSBJammedL( true )
					self:Jammed( )
				elseif JamDice <= 1 then
					--	Else if we hit one
					--	Set our big jam to true and run the function
					self:SetVNTSBJammedB( true )
					self:Jammed( )
				end
			end
		end
	end
end --	+attack1 has been pressed.

------------------------------------------------------
--	Secondary Fire Functions						--
------------------------------------------------------
function SWEP:CanSecondaryAttack( )
	if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then
		--if ( self:GetVNTSBHolstered( ) == true ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self:GetVNTSBJammedB( ) == true or self:GetVNTSBJammedL( ) == true or self.Owner:KeyDown( IN_SPEED ) or self.WeaponType == 1 or self.IsCloseToWall then
		if ( self:GetVNTSBHolstered( ) == true ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self:GetVNTSBJammedB( ) == true or self:GetVNTSBJammedL( ) == true or self.Owner:KeyDown( IN_SPEED ) or self.IsCloseToWall then
			--	mag's empty
			--	or we don't use ammo
			--	or we have a big jam
			--	or we have a small jam
			--	or we're sprinting
			--	or we're a melee
			--	or we're near a wall
			return false --	we can't shoot
		else
			return true --	we can shoot
		end --	If holstered,
	end
end --	Check if we can run +attack2

function SWEP:SecondaryAttack( )

	if not IsFirstTimePredicted( ) then return end

	if ( self.WeaponType == 1 ) then
		if self.AltFireMelee == true and self.Owner:KeyDown( IN_USE ) then
			--	if we're a melee, holster
			self:ToggleHolster( )
			return false
		else
			self:Melee()
			return false
		end
	elseif self:GetVNTSBScopedIn( ) == true and ( self.Owner:KeyDown( IN_USE ) ) then
		self:ToggleZoom( )
	else
		if ( self.Owner:KeyDown( IN_USE ) and not self:GetVNTSBScopedIn( ) == true ) then
			--	cycle the fire mode
			self:ToggleFireMode( )
		elseif not ( self.Owner:KeyDown( IN_USE ) ) and self.Owner:KeyDown( IN_WALK ) then
			--	Toggle the suppressor
			self:ToggleSuppressor( )
		elseif self.IsAkimbo == true then
			--	Check for various things that say, "hey fucktard, you can't shoot now"
			if not self:CanSecondaryAttack( ) then return end

			--	If our mag isn't empty
			if self:Clip2( ) > 0 then
				--	If we're suppressed then
				if self:GetVNTSBSuppressed( ) == true then
					--	Emit our suppressed sound
					self:EmitSound( self.SND_PrimarySuppressedFire )
				else
					--	Else emit the normal sound
					self:EmitSound( self.SND_PrimaryFire )
				end

				if self.CurrentMode == 1 then
					self.Secondary.Automatic = false

					if self:CanSecondaryAttack( ) then
						self:FireBulletLeft( self.Secondary.Damage , self.Secondary.Cone , self.Secondary.NumShots , self.Secondary.Force )
						self:SetNextSecondaryFire( CurTime( ) + self.Secondary.Delay )
						self:TakeSecondaryAmmo( 1 )
					end
				elseif self.CurrentMode == 2 then
					self.Secondary.Automatic = false

					if self:CanSecondaryAttack( ) then
						self.BurstTimerL = CurTime( )
						self.BurstCounterL = self.BurstShotsL - 1
						self:SetNextSecondaryFire( CurTime( ) + 0.5 )
					end
				elseif self.CurrentMode == 3 then
					self.Secondary.Automatic = true

					if self:CanSecondaryAttack( ) then
						self:FireBulletLeft( self.Secondary.Damage , self.Secondary.Cone , self.Secondary.NumShots , self.Secondary.Force )
						self:SetNextSecondaryFire( CurTime( ) + self.Secondary.Delay )
						self:TakeSecondaryAmmo( 1 )
					end
				end

				--	Muzzle flashes & shells
				self:ShootEffectsLeftHand( )

				--	Play our firing animations
				self:PlayFiringAnimationLeft( )
				
				--	Add a delay before we fire our next bullet based on RPM
				self.ActionDelay = ( CurTime( ) + self.Primary.Delay + 0.05 )

				--	If our Jam toggle is set to true then
				if GetConVarNumber( "VNT_SWep_Base_JamToggle" ) ~= 0 then
					--	If we're holstered or mag is empty then quit
					if self:GetVNTSBHolstered( ) == true or self:Clip2( ) <= 1 then return end
					--	Set our Jam chance to be based on our CVar
					local JammingChance = GetConVarNumber( "VNT_SWep_Base_JamChance" )
					JamDice = ( math.random( 1 , JammingChance ) )

					--	If we hit our small jam chance
					if JamDice > ( JamDice - 5 ) then
						--	Set jammed little to true and run the function
						self:SetVNTSBJammedL( true )
						self:Jammed( )
					elseif JamDice <= 1 then
						--	Else if we hit one
						--	Set our big jam to true and run the function
						self:SetVNTSBJammedB( true )
						self:Jammed( )
					end
				end
			end

			return false
		else
			--	If we're in iron sights, pull out of them
			self:ToggleIronsights( )
		end
	end
end --	+attack2 has been pressed.

------------------------------------------------------
--	Play Firing Animations							--
------------------------------------------------------
function SWEP:PlayFiringAnimation( )
	--	If we're owner, a player, valid, and alive then
	if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) then
		if ( self:GetVNTSBIronSighted( ) == true ) then
			if ( self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true ) then
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK_SILENCED )
				--self.Owner:ChatPrint("ACT_VM_PRIMARYATTACK_SILENCED")
			elseif ( self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DEPLOYED_FIRE ) and ( self:GetVNTSBGLauncher( ) == true or self:GetVNTSBBipod( ) == true ) ) then
				self:SendWeaponAnim( ACT_VM_DEPLOYED_FIRE )
				--self.Owner:ChatPrint("ACT_VM_DEPLOYED_FIRE")
			elseif self.IsAkimbo == true then
				self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
			--elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_SHOOTLAST ) and self:Clip1() < 1 then
				--self:SendWeaponAnim( ACT_VM_SHOOTLAST )
				--self.Owner:ChatPrint("ACT_VM_SHOOTLAST")
			else
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
				--self.Owner:ChatPrint("ACT_VM_PRIMARYATTACK")
			end
		elseif ( self:GetVNTSBIronSighted( ) == false ) then
			if ( self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true ) and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_PRIMARYATTACK_SILENCED ) then
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK_SILENCED )
			elseif ( self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DEPLOYED_FIRE ) and ( self:GetVNTSBGLauncher( ) == true or self:GetVNTSBBipod( ) == true ) ) then
				self:SendWeaponAnim( ACT_VM_DEPLOYED_FIRE )
				self.Owner:ChatPrint("ACT_VM_DEPLOYED_FIRE")
			elseif self.IsAkimbo == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_SECONDARYATTACK ) then
				self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
			--elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_SHOOTLAST ) and self:Clip1() < 1 then
				--self:SendWeaponAnim( ACT_VM_SHOOTLAST )
				--self.Owner:ChatPrint("shootlasT")
			else
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
			end
		end
	end
end --	Play firing animations

function SWEP:PlayFiringAnimationLeft( )
	--	If we're owner, a player, valid, and alive then
	if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) then
		self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	end
end --	Play firing animations for akimbo weapons

------------------------------------------------------
--	Reload Functions								--
------------------------------------------------------
function SWEP:Reload( )

	--	If action delay is still in effect or we're sprinting, return false and end this function
	if ( self.ActionDelay > CurTime( ) ) or self.Owner:KeyDown( IN_SPEED ) then return false end
	
	--	If we can't reload when not empty and 
	if self.CanReloadWhenNotEmpty == false and self:Clip1() != 0 then return false end

	--	If we're in iron sights, toggle out of them and continue
	if self:GetVNTSBIronSighted( ) == true or self:GetVNTSBScopedIn( ) == true then self:ToggleIronsights( ) end

	--	If we're: Holstered, JamB, JamL, or Mag is superloaded, and you're not pressing USE while holstered, return false and end this function
	if ( self:GetVNTSBJammedB( ) or self:GetVNTSBJammedL( ) ) or ( self:Clip1( ) == ( self:Clip1( ) + self.Primary.ClipSizePlus ) ) then return false end

	--	If you're holstered and you press USE & RELOAD at the same time, toss the weapon away	
	if self:GetVNTSBHolstered( ) == true and self.Owner:KeyDown( IN_USE ) then
	
		--	If you're holstered and you press USE+RELOAD throw our weapon
		--	Play the holster animation
		if self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_HOLSTER ) then
			self:SendWeaponAnim( ACT_VM_HOLSTER )
		end
	
		--	Set a delay so we aren't shooting while throwing
		self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
		self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
		
		self.ActionDelay = ( CurTime( ) + 10 )

		--	Return the ammo from the mag
		--self.Owner:GiveAmmo( self:Clip1( ) , self:GetPrimaryAmmoType( ) , true )
		
		--	Run the throw function
		self:Throw( )

		--	End our function
		return false
		
	end

	-- Custom function for child SWeps
	self:CustomReload( )
	
	--	If we have our GL deployed then
	if self:GetVNTSBGLauncher( ) == true or self.IsEntityShooter == true then
	
		--	If we have ammo for it, and it's not loaded then
		if self.Owner:GetAmmoCount( self.Secondary.Ammo ) > 0 and self:GetVNTSBLchrLoaded( ) == false then
		
			--	Play the specified deploy reload
			if self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_RELOAD_DEPLOYED ) then
				self:SendWeaponAnim( ACT_VM_RELOAD_DEPLOYED )
			end

			if CLIENT then
			
				--	Set our time to fire until after the sequence has played
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				
			elseif SERVER then

				--	Now we're loaded so signal we can fire
				self:SetVNTSBLchrLoaded( true )
				
				--	Our hammer is back
				self.LauncherPinForward = false
				
			end
		end

		--	Return false and end the reload function
		return false
		
	end

	if self.ShellReload == true then
	
		if ( self:Clip1() < self.Primary.ClipSize ) and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0 then

			if self:GetVNTSBShotgunRel( ) == true then return false end
			
			--	Play our anim
			self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START )
			
			self:SetVNTSBShotgunRel( true )
			
			self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			
		end
		
		return false

	end

	--	if mag is < mag size, and we have ammo then
	if (( self:Clip1( ) < self.Primary.ClipSize ) ) and ( self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then
	
		if SERVER then
		
			--	Play a sound in third-person
			if self.SND_Reload != nil then
				self.Owner:EmitSound( self.SND_Reload )
			end
			
		end

		--	Play the next function	
		self:ReloadAnimation( )
	
		return false

	end
	
end --	Reload is being pressed.

function SWEP:ReloadAnimation( )

	--	Call the reload animations so it plays them
	self:DefaultReload( ACT_VM_RELOAD )
	self.Owner:SetAnimation( PLAYER_RELOAD )

	--	If mag is 0 and it has empty animations then
	if ( self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_RELOAD_SILENCED ) ) then
		self:SendWeaponAnim( ACT_VM_RELOAD_SILENCED )
	elseif ( self:Clip1( ) == 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_RELOAD_EMPTY ) ) then
		--	Play the empty reload animation
		self:SendWeaponAnim( ACT_VM_RELOAD_EMPTY )
	else
		--	Else if our mag is empty and we don't have empty anims then
		--	Play our normal reload animation
		self:SendWeaponAnim( ACT_VM_RELOAD )
	end

	if self.IsEntityShooter == true then
		self:SetVNTSBLchrLoaded( true )
	end
	
	--	Else if we can put one in the chamber
	if self:GetVNTSBRoundInChamber( ) == true and self.CanChamber == true then

		--	Run our timer for the round in the chamber
		timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) + 0.75 , function( )
			if ( not IsValid( self.Owner ) or not IsValid( self ) or not self.Owner:Alive( ) or ( self.Owner:GetAmmoCount( self.Primary.Ammo ) < 1 ) ) then return end
			--	Remove the difference from the slot
			self.Owner:RemoveAmmo( 1 , self:GetPrimaryAmmoType( ) )
			--	Set our mag to ClipSizePlus
			self:SetClip1( self:Clip1( ) + self.Primary.ClipSizePlus )
		end )

		return false
	
	end
	
	self:SetVNTSBRoundInChamber( true )

end --	Specialty reload stuff

function SWEP:EndSGReload( )

	self:SetVNTSBShotgunRel( false )

	self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	
	return false
end

function SWEP:SGPump( )

	--	If we have a pump sound defined
	if self.SND_ShotgunPump ~= nil then
		--	Play a finish sound
		self:EmitSound( self.SND_ShotgunPump )
	end

	self:SendWeaponAnim( ACT_SHOTGUN_PUMP )
	self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
	self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )

end

function SWEP:CustomReload( )
	-- Custom function for child SWeps
end

------------------------------------------------------
--	Holster and Deploy Functions					--
------------------------------------------------------
function SWEP:Holster( )
	
	self:CustomHolster( )
	
	--if ( self:Clip1( ) == 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_HOLSTER_EMPTY ) ) then
		--self:SendWeaponAnim( ACT_VM_HOLSTER_EMPTY )
	--else
		--self:SendWeaponAnim( ACT_VM_HOLSTER )
	--end

	return true
end --	We're swapping weapons

function SWEP:CustomHolster( )
	-- Custom function for child SWeps
end

function SWEP:Deploy( )

	self:CustomDeploy( )

	--	Run our special function
	self:DeployAnimation( )

	if SERVER then
		if self.Primary.Cone > self.BaseCone then
			self.Primary.Cone = self.BaseCone
		end

		self.CrouchPane = 1
	elseif CLIENT then
		self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
		self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
		self.ActionDelay = ( CurTime( ) + self.DeployDelay + 0.05 )
	end

	--	If we're in iron sights, toggle out of them and continue
	if self:GetVNTSBIronSighted( ) == true then
		self:ToggleIronsights( )
	end

	--	If we're holstered continue
	if self:GetVNTSBHolstered( ) == true then return true end

	--	If we're a shotgun we're not reloading
	if self.Shotgun == true then
		self:SetVNTSBShotgunRel( false )
	end
end --	We just deployed our weapon

function SWEP:CustomDeploy( )
	-- Custom function for child SWeps
end

function SWEP:DeployAnimation( )
	if ( self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_SILENCED ) ) then
		self:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
	elseif ( self:Clip1( ) == 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_EMPTY ) ) then
		self:SendWeaponAnim( ACT_VM_DRAW_EMPTY )
	else
		self:SendWeaponAnim( ACT_VM_DRAW )
	end
end --	Specialty deploy stuff

------------------------------------------------------
--	Think Functions									--
------------------------------------------------------
function SWEP:Think( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	Run our second think function in the children
			self:CustomThink( )

			--	Get our eye trace
			local EyeTrace = self.Owner:GetEyeTrace( )

			--	If our trace hit a valid ent, an NPC, a Player, and it's a pistol then
			if EyeTrace.Entity:IsValid( ) then
				if EyeTrace.Entity:GetClass( ) == self.GrenadeLauncherEntity then return end

				if ( ( EyeTrace.Entity:IsNPC( ) or EyeTrace.Entity:IsPlayer( ) ) and not ( self.WeaponType == 1 ) ) then
					--	Don't shoot
					self.DontNearWall = true
				else
					--	Else shoot
					self.DontNearWall = false
				end
			end

			if SpeedToggle != 0 then
				--	Bipod out
				if self:GetVNTSBBipod( ) == true then
					-- Divide speed
					self.Owner:SetRunSpeed( MaxRunSpeed / 3 )
					self.Owner:SetWalkSpeed( MaxWalkSpeed / 3 )
				--	Trying to sprint while bipod out
				elseif ( self.Owner:KeyDown( IN_SPEED ) and self:GetVNTSBBipod( ) == true ) then
					--	Toggle out
					self:ToggleBipod( )
				else
					--	set to normal
					self.Owner:SetRunSpeed( MaxRunSpeed )
					self.Owner:SetWalkSpeed( MaxWalkSpeed )
				end
			end
			
			--if (self.BoltAction) and (self.Owner:KeyPressed(IN_ATTACK2) or self.Owner:KeyPressed(IN_RELOAD)) then	self.ReturnToScope = false	end
			if self.CurrentMode == 2 then
				--	Reset our burst counter to prevent it from continuing to fire after reloading
				if self:Clip1( ) <= 0 then
					self.BurstCounter = 0
				end

				if self:Clip2( ) <= 0 then
					self.BurstCounterL = 0
				end

				--	If we're in Burst mode and we can attack then
				if self:CanPrimaryAttack( ) then
					--	If burst timer + delay < CurTime and burst count is > 0 then
					if self.BurstTimer + self.BurstDelay < CurTime( ) and self.BurstCounter > 0 then
						--	If we're suppressed then
						if self:GetVNTSBSuppressed( ) == true then
							--	Emit our suppressed sound
							self:EmitSound( self.SND_PrimarySuppressedFire )
						else
							--	Else emit the normal sound
							self:EmitSound( self.SND_PrimaryFire )
						end

						--	Minus one off
						self.BurstCounter = self.BurstCounter - 1
						--	Reset the timer
						self.BurstTimer = CurTime( )
						--	Run our fire bullet function
						self:FireBullet( self.Primary.Damage , self.Primary.Cone , self.Primary.NumShots , self.Primary.Force )
						--	Set our next fire times
						self:SetNextPrimaryFire( CurTime( ) + self.Primary.Delay )
						--	Take a bullet
						self:TakePrimaryAmmo( 1 )
					end
				end

				--	If we're in Burst mode and we can attack then
				if self:CanSecondaryAttack( ) then
					--	If burst timer + delay < CurTime and burst count is > 0 then
					if self.BurstTimerL + self.BurstDelayLeft < CurTime( ) and self.BurstCounterL > 0 then
						--	If we're suppressed then
						if self:GetVNTSBSuppressed( ) == true then
							--	Emit our suppressed sound
							self:EmitSound( self.SND_PrimarySuppressedFire )
						else
							--	Else emit the normal sound
							self:EmitSound( self.SND_PrimaryFire )
						end

						--	Minus one off
						self.BurstCounterL = self.BurstCounterL - 1
						--	Reset the timer
						self.BurstTimerL = CurTime( )
						--	Run our fire bullet function
						self:FireBullet( self.Primary.Damage , self.Primary.Cone , self.Primary.NumShots , self.Primary.Force )
						--	Set our next fire times
						self:SetNextSecondaryFire( CurTime( ) + self.Primary.Delay )
						--	Take a bullet
						self:TakeSecondaryAmmo( 1 )
					end
				end
			end

			--	If mag isn't empty
			if self:Clip1( ) > 0 then
				--	Prevents the bolt from clicking more than once when the mag is empty
				self.FiringPinForward = false
			end

			--	If trace hit something, and the distance is within range, and we're not near a wall, and don't shoot is false then
			if ( EyeTrace.Hit and EyeTrace.HitPos:Distance( self.Owner:GetShootPos( ) ) < 45 ) and not ( self.IsCloseToWall and self.DontNearWall and self.WeaponType == 1 ) or self:GetVNTSBHolstered( ) == true then
				--	We're near a wall
				self.IsCloseToWall = true

				--	If we're not holstered, we're not sprinting, and we're in iron sights
				if self:GetVNTSBHolstered( ) == false and not self.Owner:KeyDown( IN_SPEED ) and self:GetVNTSBIronSighted( ) == true then
					--	Toggle out of iron sights
					self:ToggleIronsights( )
				end
			elseif EyeTrace.HitPos:Distance( self.Owner:GetShootPos( ) ) > 46 and self.IsCloseToWall then
				--	Else if the trace distance is out of range and we're near a wall then
				--	Do a short wait so we can animate, then set the near to false
				timer.Simple( 0.2 , function( )
					self.IsCloseToWall = false
				end )
			end

			--	If we're iron sighted, and we sprint, toggle out of them
			if self:GetVNTSBIronSighted( ) == true and self.Owner:KeyDown( IN_SPEED ) then
				self:ToggleIronsights( )
			end

			--	Scope think functions
			--	If overlay scope
			if self.ScopeType == 1 then
				self.HasRTScope = false
				--	if scoped in
				if self:GetVNTSBScopedIn( ) == true then
					self.Owner:DrawViewModel( false )
				else
					self.Owner:DrawViewModel( true )
				end
			--	If RT scope
			elseif self.ScopeType == 2 then
				self.HasRTScope = true
				--	If zeroed in
				if self.IsCloseZoomed == true then
					self.DefaultZoom = self.ScopeMultipliers[ 2 ]
				else
					self.DefaultZoom = self.ScopeMultipliers[ 1 ]
				end
			end
			
			--	If reload pressed
			if self.Owner:KeyDown( IN_RELOAD ) then
				if self:GetVNTSBScopedIn( ) == true then
					self.Owner:DrawViewModel( true )
				end
			end
				
			if self:GetVNTSBShotgunRel( ) == true and (self.Owner:KeyPressed( IN_ATTACK ) or self.Owner:KeyPressed( IN_ATTACK2 ) or self.Owner:KeyPressed( IN_SPEED ) ) then
				self:EndSGReload( )
			end
			
			if self.ShellReload == true then
				if self.ActionDelay and CurTime() >= self.ActionDelay and self:GetVNTSBShotgunRel( ) == true then
					if self:Clip1() >= self.Primary.ClipSize or self:Ammo1() <= 0 or self.Owner:KeyReleased( IN_RELOAD ) then
						self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
						self.ActionDelay = CurTime()
						self:SetVNTSBShotgunRel( false )
						self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					elseif self:Clip1() < self.Primary.ClipSize and self:Ammo1() > 0 then
						self:SendWeaponAnim(ACT_VM_RELOAD)
						self.ActionDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
						self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self:SetClip1(self:Clip1() + 1)
						self.Owner:RemoveAmmo( 1, self.Primary.Ammo )
					end
				end
			end

			--	If we press use, and we're not moving then
			if ( self.Owner:KeyPressed( IN_USE ) and self.HASHELPHAND == true ) and not ( self:GetVNTSBScopedIn( ) == true or self:GetVNTSBIronSighted( ) == true ) then
				if CLIENT then
					--	Play the first-person animations
					self:SpecialAnimation( self.ANIHANDOUT )

					timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
						self:SpecialAnimation( self.ANIHANDLOOP )
					end )

					timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
						self:SpecialAnimation( self.ANIHANDIN )
					end )
				elseif SERVER then
					--	Play the world animation
					self.Owner:DoAnimationEvent( self.ANIHANDWORLD )
				end
			end

			if self.UseWorldAnimations == true then
				self:HoldTypeAnimations( )
			end

			if ( self.Owner:KeyDown( IN_WALK ) and self.Owner:KeyDown( IN_RELOAD ) ) and self.ActionDelay <= CurTime( ) then
				self:Melee( )
				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
			end

			self:NextThink( CurTime( ) + 0.5 )
		end
	end
end --	Called every frame

function SWEP:CustomThink( ) --	Called every frame for custom stuff
--	Used in child SWeps
end

------------------------------------------------------
--	Firing Right (Main) Bullet						--
------------------------------------------------------
function SWEP:ShootEffects( )
	--	Play our third-person firing animation
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	--	If we're not valid, it's not predicted, we're dead, return and end the function
	if not ( IsValid( self.Owner ) or IsFirstTimePredicted( ) or self.Owner:Alive( ) ) then return end

	if self:GetVNTSBSuppressed( ) == false then
		--	If our muzzle flashes are enabled
		if GetConVarNumber( "VNT_SWep_Base_FlashToggle" ) ~= 0 then
			self.Owner:MuzzleFlash( )
			--	Emit our muzzle flash
			local FX = EffectData( )
			FX:SetOrigin( self.Owner:GetShootPos( ) )
			FX:SetEntity( self )
			FX:SetStart( self.Owner:GetShootPos( ) )
			FX:SetNormal( self.Owner:GetAimVector( ) )
			FX:SetAttachment( self.MuzzleAttach )
			FX:SetScale( self.MuzzleFlashType )
			FX:SetFlags( 0 )
			util.Effect( self.MuzzleFlashName , FX )
		end
	end

	--	If our shell ejections are enabled
	if GetConVarNumber( "VNT_SWep_Base_ShellToggle" ) ~= 0 then
		--	Wait for our shell delay and then run the function
		timer.Simple( self.ShellDelay , function( )
			--	If we're not valid, it's not predicted, we're dead, return and end the function
			if not ( IsValid( self.Owner ) or IsFirstTimePredicted( ) or self.Owner:Alive( ) ) then return end
			local FX = EffectData( )
			FX:SetEntity( self )
			FX:SetNormal( self.Owner:GetAimVector( ) )
			FX:SetAttachment( self.ShellAttach )
			 -- self.ShellType's integer determines the shell casing/sounds, see Lua/effects/fx_shelleject.lua
			FX:SetScale( self.ShellType )
			util.Effect( self.ShellEffect , FX , true , false )
			----if VNTDEBUG then owner:ChatPrint( "emitting shell casing " .. self.ShellEffect .. " with type of " .. self.ShellType )
		end )
	end
end --	Controls effects like shells and flashes for our right hand weapon

function SWEP:FireBullet( damageinfo , firingCone , numberOfShots , force )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	Set our constants
			local damageinfo = self.Primary.Damage or 1
			local firingCone = self.Primary.Cone or 0.01
			local maxCone = firingCone * GetConVarNumber( "VNT_SWep_Base_AccuracyMul" ) or 10
			local numberOfShots = self.Primary.NumShots or 1
			local force = self.Primary.Force or 5
			local distance = self.Primary.Distance or 56756
			local owner = self.Owner

			if SERVER then
				if not owner:OnGround( ) then
					firingCone = firingCone * 10
				else
					if IsValid( prone ) then 
						--if VNTDEBUG then owner:ChatPrint( "Prone True" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.1
						else
							firingCone = firingCone * 0.25
						end
					elseif owner:Crouching( ) then
						--if VNTDEBUG then owner:ChatPrint( "Crouching" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.5
						else
							firingCone = firingCone * 0.75
						end
					else
						--if VNTDEBUG then owner:ChatPrint( "Standing" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.75
						else
							firingCone = firingCone * 1
						end
					end
				end
			end

			local bulletData = {}
			bulletData.Attacker = owner
			bulletData.Damage = damageinfo
			bulletData.Distance = distance
			bulletData.Dir = owner:GetAimVector( )
			bulletData.Force = force
			bulletData.Num = numberOfShots
			bulletData.Src = owner:GetShootPos( )
			bulletData.Spread = Vector( firingCone , firingCone , 0 )
			if self.UseTracer == true and CVarTracerToggle != 0 then
				if self:GetVNTSBSuppressed( ) == true then
					bulletData.Tracer = 0
				else
					if self.TracerRandomizer == 1 then
						bulletData.Tracer = 1
					else
						bulletData.Tracer = math.random( 0 , self.TracerRandomizer )
					end
				end
			end

			if self.CustomTracer != nil then
				bulletData.TracerName = self.CustomTracer
			end

			bulletData.Callback = function( attacker , tracePen , damageinfo , bounceNum )
				--	My from-scratch version
				--return self:BulletRichochet( attacker , tracePen , damageinfo , bounceNum )
				--	My modded version of Zoey's as a backup until I get mine working
				return self:BPenetration( attacker , tracePen , damageinfo , bounceNum )
			end

			if SERVER then
				owner:LagCompensation( true )
			end

			self:FireBullets( bulletData , true )

			if SERVER then
				owner:LagCompensation( false )
			end
		
			--	Run our view punches
			self:FireViewPunches( )
		end
	end
end

------------------------------------------------------
--	Firing Left Bullet								--
------------------------------------------------------

function SWEP:ShootEffectsLeftHand( )
	--	Play our third-person firing animation
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	--	If we're not valid, it's not predicted, we're dead, return and end the function
	if not ( IsValid( self.Owner ) or IsFirstTimePredicted( ) or self.Owner:Alive( ) ) then return end

	if self:GetVNTSBSuppressed( ) == false then
		--	If our muzzle flashes are enabled
		if GetConVarNumber( "VNT_SWep_Base_FlashToggle" ) ~= 0 then
			self.Owner:MuzzleFlash( )
			--	Emit our muzzle flash
			local FX = EffectData( )
			FX:SetOrigin( self.Owner:GetShootPos( ) )
			FX:SetEntity( self )
			FX:SetStart( self.Owner:GetShootPos( ) )
			FX:SetNormal( self.Owner:GetAimVector( ) )
			FX:SetAttachment( self.MuzzleAttach )
			FX:SetScale( self.MuzzleFlashType )
			FX:SetFlags( 0 )
			util.Effect( self.MuzzleFlashName , FX )
		end
	end

	--	If our shell ejections are enabled
	if GetConVarNumber( "VNT_SWep_Base_ShellToggle" ) ~= 0 then
		--	Wait for our shell delay and then run the function
		timer.Simple( self.ShellDelay , function( )
			--	If we're not valid, it's not predicted, we're dead, return and end the function
			if not ( IsValid( self.Owner ) or IsFirstTimePredicted( ) or self.Owner:Alive( ) ) then return end
			local FX = EffectData( )
			FX:SetEntity( self )
			FX:SetNormal( self.Owner:GetAimVector( ) )
			FX:SetAttachment( self.ShellAttachLeft )
			util.Effect( self.ShellEffect , FX , true , true )
		end )
	end
end --	Controls effects like shells and flashes for our left hand weapon

function SWEP:FireBulletLeft( damageinfo , firingCone , numberOfShots , force )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	Set our constants
			local damageinfo = self.Secondary.Damage or 1
			local firingCone = self.Secondary.Cone or 0.01
			local maxCone = firingCone * GetConVarNumber( "VNT_SWep_Base_AccuracyMul" ) or 10
			local numberOfShots = self.Secondary.NumShots or 1
			local force = self.Secondary.Force or 5
			local distance = self.Secondary.Distance or 56756
			local owner = self.Owner

			if SERVER then
				if not owner:OnGround( ) then
					firingCone = firingCone * 10
				else
					if IsValid( prone ) then 
						--if VNTDEBUG then owner:ChatPrint( "Prone True" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.1
						else
							firingCone = firingCone * 0.25
						end
					elseif owner:Crouching( ) then
						--if VNTDEBUG then owner:ChatPrint( "Crouching" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.5
						else
							firingCone = firingCone * 0.75
						end
					else
						--if VNTDEBUG then owner:ChatPrint( "Standing" ) end
						if self:GetVNTSBIronSighted( ) == true then
							firingCone = firingCone * 0.75
						else
							firingCone = firingCone * 1
						end
					end
				end
			end

			local bulletData = {}
			bulletData.Attacker = owner
			bulletData.Damage = damageinfo
			bulletData.Distance = distance
			bulletData.Dir = owner:GetAimVector( )
			bulletData.Force = force
			bulletData.Num = numberOfShots
			bulletData.Src = owner:GetShootPos( )
			bulletData.Spread = Vector( firingCone , firingCone , 0 )

			if self.UseTracer == true and self:GetVNTSBSuppressed( ) == false then
				bulletData.TracerType = math.random( 0 , self.TracerRandomizer )
			else
				bulletData.TracerType = 0
			end

			if self.CustomTracer != nil then
				bulletData.TracerName = self.CustomTracer
			end

			bulletData.Callback = function( attacker , tracePen , damageinfo , bounceNum )
				--	My from-scratch version
				--return self:BulletRichochet( attacker , tracePen , damageinfo , bounceNum )
				--	My modded version of Zoey's as a backup until I get mine working
				return self:BPenetration( attacker , tracePen , damageinfo , bounceNum )
			end

			if SERVER then
				owner:LagCompensation( true )
			end

			self:FireBullets( bulletData , true )

			if SERVER then
				owner:LagCompensation( false )
			end

			if self.BlackFriday == true and ( trace.Entity:GetClass() == "func_door_rotating" or trace.Entity:GetClass() == "prop_door_rotating" ) then
				self:BlackFridayDoorBusterSales()
			end
			--	Run our view punches
			self:FireViewPunches( )
		end
	end
end

------------------------------------------------------
--	Bullet Tech										--
------------------------------------------------------

--	This is my bullet penetration function, it doesn't work yet
--[[
function SWEP:BulletPenetration( attacker , tracePen , damageinfo , bounceNum )
	
	--	Are we valid?
	if self.CanPenetrate == true then
		
		--	tracePen = Penetration Trace
		--	traceRic = Richochet Trace
		local owner = self.Owner
		local bounceNum = bounceNum or 1
		local penDir = tracePen.Normal * self.StrongPenetration
		local damageMul = 0.5
		local damageInfo = damageInfo or self.Primary.Damage or self.Secondary.Damage
		
		local traceRic = { }
		traceRic.endpos = tracePen.HitPos
		traceRic.start = tracePen.HitPos + penDir
		traceRic.mask = MASK_SHOT
		traceRic.filter = { self.Owner }
		local traceRic = util.TraceLine( traceRic )

		--	if we hit sand or skybox, or we've rebounded too much, or the trace is too thicc
		--if  ( traceRic.StartSolid or traceRic.Fraction >= 1.0 or tracePen.Fraction <= 0.0 ) then
			--if VNTDEBUG then owner:ChatPrint( "Trace ended because it hit something invalid" )
		if ( tracePen.HitSky ) or ( bounceNum > GetConVarNumber( "VNT_SWep_Base_RichochetLimit" ) ) or ( tracePen.MatType == ( bit.bor( MAT_SAND , MAT_DEFAULT ) ) ) then
			--	Quit
			return false
		
		--	else continue
		else

			--	If mat type is a weak type then
			if ( tracePen.MatType == ( bit.bor( MAT_WOOD , MAT_DIRT , MAT_GLASS , MAT_FLESH , MAT_ALIENFLESH , MAT_PLASTIC , MAT_VENT , MAT_COMPUTER ) ) ) then
				--if VNTDEBUG then owner:ChatPrint( "hit a weak pen material" )
				--	Weak pen
				penDir = tracePen.Normal * ( self.WeakPenetration )
			--	if you hit metal
			elseif ( tracePen.MatType == MAT_METAL ) then
				penDir = tracePen.Normal * ( self.StrongPenetration - 3 )
			--if VNTDEBUG then owner:ChatPrint( "hit a metal" )
			end

			
			-- The following controls damage depreciation per penetration
			
			--	Weak materials
			if tracePen.MatType == ( bit.bor( MAT_FOLIAGE , MAT_PLASTIC ) ) then
				damageMul = 0.95
				--if VNTDEBUG then owner:ChatPrint( "hit a weaker material type" )
			elseif tracePen.MatType == ( bit.bor( MAT_CONCRETE , MAT_FLESH , MAT_ALIENFLESH , MAT_GRATE , MAT_COMPUTER , MAT_TILE , MAT_VENT ) ) then
				damageMul = 0.9
				--if VNTDEBUG then owner:ChatPrint( "hit a weak material type" )
			--	Dense materials
			elseif tracePen.MatType == ( bit.bor( MAT_SLOSH , MAT_DIRT , MAT_GRASS , MAT_METAL ) ) then
				damageMul = 0.85
				--if VNTDEBUG then owner:ChatPrint( "hit a dense material type" )
			--	Shields
			elseif tracePen.MatType == ( bit.bor( MAT_WARPSHIELD ) ) then
				damageMul = 0.1
				--if VNTDEBUG then owner:ChatPrint( "hit a shield material type" )
			--	No effect on bullets
			elseif tracePen.MatType == ( bit.bor( MAT_EGGSHELL ) ) then
				damageMul = 1
				--if VNTDEBUG then owner:ChatPrint( "hit a egg material type" )
			--	Standard depreciation
			else
				damageMul = 0.8
			end
		end

		-- tr = traceRic
		-- trace = tracePen

		local distance = self.Primary.Distance or 56756
		local bulletData = {}
		bulletData.Attacker = attacker
		bulletData.Damage = ( damageInfo * damageMul )
		bulletData.Distance = distance
		bulletData.Dir = traceRic.Normal
		bulletData.Force = ( damageInfo * damageMul * 2 )
		bulletData.HullSize = 2
		bulletData.Num = 1
		bulletData.Spread = Vector( 0 , 0 , 0 )
		bulletData.Src = tracePen.HitPos
		bulletData.TracerType = 1

		if self.CustomTracer != nil then
			bulletData.TracerName = self.CustomTracer
		end

		bulletData.Callback = function( attacker , tracePen , damageinfo , bounceNum )
			return self:BulletPenetration( attacker , tracePen , damageinfo , bounceNum + 1 )
		end

		if SERVER then
			util.ScreenShake( traceRic.HitPos , 2.2 , 0.1 , 0.3 , 38 )
		end

		self:FireBullets( bulletData , true )

		return true
	end
end

function SWEP:BulletRichochet( attacker , tracePen , damageInfo , bounceNum )
	return self:BulletPenetration( attacker , tracePen , damageinfo , bounceNum )
end
--]]

function SWEP:FireViewPunches( )
	--	If we're owner, a player, valid, and alive then
	if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) then

		--	If our GL is deployed then
		if self:GetVNTSBGLauncher( ) == true then
			--	Reset our view punch
			self.Owner:ViewPunchReset( )

			--	Add a random punch
			if self.WeaponType > 2 then
				self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , table.Random( self.RiflePunchesX ) * self.Primary.Cone * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , 0 ) )
			elseif self.WeaponType == 2 then
				self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , table.Random( self.PistolPunchesX ) * self.Primary.Cone * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , 0 ) )
			end
		else
			--	else our GL isn't out
			--	If we're in iron sights then
			if self:GetVNTSBIronSighted( ) == true and self.WeaponType ~= 1 then
				--	Reset our view punch
				self.Owner:ViewPunchReset( )

				--	Add a smaller random punch
				if self.WeaponType > 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 0.5 ) , table.Random( self.RiflePunchesX ) * self.Primary.Cone  * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 3 )  , 0 ) )
				elseif self.WeaponType == 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 0.5 )  , table.Random( self.PistolPunchesX ) * self.Primary.Cone  * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 3 )  , 0 ) )
				end
			elseif self:GetVNTSBIronSighted( ) == false and self.WeaponType ~= 1 then
				--	Reset our view punch
				self.Owner:ViewPunchReset( )

				--	Add a bigger random punch
				if self.WeaponType > 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , table.Random( self.RiflePunchesX ) * self.Primary.Cone * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 6 ) , 0 ) )
				elseif self.WeaponType == 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) , table.Random( self.PistolPunchesX ) * self.Primary.Cone * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 6 ) , 0 ) )
				end
			else
				self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 4 ) , table.Random( self.RiflePunchesX ) * self.Primary.Cone * ( GetConVarNumber( "VNT_SWep_Base_RecoilMul" ) * 10 ) , 0 ) )
			end
		end
	end
end

--	This is my mod of Zoey's penetration, it will be removed next patch so don't count on it being around
function SWEP:BulletPenetrate( bouncenum , attacker , tr , dmginfo , isplayer )
	local DoDefaultEffect = true
	if ( tr.MatType == MAT_SAND ) then return end
	if ( bouncenum > 3 ) then return end
	local PenetrationDirection = nil

	if ( tr.MatType == MAT_METAL ) then
		PenetrationDirection = tr.Normal * ( self.StrongPenetration - 3 )
	elseif ( tr.MatType == MAT_DIRT or tr.MatType == MAT_WOOD or tr.MatType == MAT_FLESH or tr.MatType == MAT_ALIENFLESH or tr.MatType == MAT_GLASS or tr.MatType == MAT_PLASTIC or tr.MatType == MAT_VENT or tr.MatType == MAT_COMPUTER ) then
		PenetrationDirection = tr.Normal * ( self.WeakPenetration )
	else
		PenetrationDirection = tr.Normal * self.StrongPenetration
	end

	local trace = { }
	trace.endpos = tr.HitPos
	trace.start = tr.HitPos + PenetrationDirection
	trace.mask = MASK_SHOT
	trace.filter = { self.Owner }
	local trace = util.TraceLine( trace )
	if ( trace.StartSolid or trace.Fraction >= 1.0 or tr.Fraction <= 0.0 ) then return end
	local damageMul = 0.5
	--	Weak materials
	if tr.MatType == ( bit.bor( MAT_FOLIAGE , MAT_PLASTIC ) ) then
		damageMul = 0.95
		--if VNTDEBUG then owner:ChatPrint( "hit a weaker material type" ) end
	elseif tr.MatType == ( bit.bor( MAT_CONCRETE , MAT_FLESH , MAT_ALIENFLESH , MAT_GRATE , MAT_COMPUTER , MAT_TILE , MAT_VENT ) ) then
		damageMul = 0.9
		--if VNTDEBUG then owner:ChatPrint( "hit a weak material type" ) end
	--	Dense materials
	elseif tr.MatType == ( bit.bor( MAT_SLOSH , MAT_DIRT , MAT_GRASS , MAT_METAL ) ) then
		damageMul = 0.85
		--if VNTDEBUG then owner:ChatPrint( "hit a dense material type" ) end
	--	Shields
	elseif tr.MatType == ( bit.bor( MAT_WARPSHIELD ) ) then
		damageMul = 0.1
		--if VNTDEBUG then owner:ChatPrint( "hit a shield material type" ) end
	--	No effect on bullets
	elseif tr.MatType == ( bit.bor( MAT_EGGSHELL ) ) then
		damageMul = 1
		--if VNTDEBUG then owner:ChatPrint( "hit an egg material type" ) end
	--	Standard depreciation
	else
		damageMul = 0.8
	end

	local bullet = {
		Num = 1 ,
		Src = trace.HitPos ,
		Dir = tr.Normal ,
		Spread = Vector( 0 , 0 , 0 ) ,
		TracerType = 1 ,
		Force = 2 * dmginfo:GetDamage( ) * damageMul ,
		Damage = ( dmginfo:GetDamage( ) * damageMul ) ,
		HullSize = 2 ,
		Attacker = attacker
	}

	bullet.Callback = function( a , b , c )
		if ( self.Ricochet ) then return self:RicochetCallback( bouncenum + 1 , a , b , c ) end
	end

	timer.Simple( 0.01 , function( )
		attacker.FireBullets( attacker , bullet , true )
	end )

	return true
end --	Controls penetration

function SWEP:RicochetCallback( bouncenum , attacker , tr , dmginfo )
	local DoDefaultEffect = true
	if ( tr.HitSky ) then return end

	if ( self.CanPenetrate ) and ( self:BulletPenetrate( bouncenum , attacker , tr , dmginfo ) ) then
		return {
			damage = true ,
			effects = DoDefaultEffect
		}
	end

	if ( SERVER ) then
		util.ScreenShake( tr.HitPos , 2.2 , 0.1 , 0.3 , 38 )
	end

	if ( self.Ricochet == true ) then
		return {
			damage = true ,
			effects = DoDefaultEffect
		}
	end

	if ( bouncenum > self.MaxRicochet ) then return end
	local trace = { }
	trace.start = tr.HitPos
	trace.endpos = trace.start + ( tr.HitNormal * 16384 )
	local trace = util.TraceLine( trace )
	local DotProduct = tr.HitNormal:Dot( tr.Normal * -1 )

	local bullet = {
		Num = 1 ,
		Src = tr.HitPos + ( tr.HitNormal * 5 ) ,
		Dir = ( ( 2 * tr.HitNormal * DotProduct ) + tr.Normal ) + ( VectorRand( ) * 0.05 ) ,
		Spread = Vector( 0 , 0 , 0 ) ,
		TracerType = 1 ,
		TracerName = "" ,
		Force = dmginfo:GetDamage( ) * 0.9 ,
		Damage = dmginfo:GetDamage( ) * 0.95 ,
		HullSize = 2 ,
		Attacker = attacker
	}

	bullet.Callback = function( a , b , c )
		if ( self.Ricochet ) then return self:RicochetCallback( bouncenum + 1 , a , b , c ) end
	end

	timer.Simple( 0.01 , function( )
		attacker.FireBullets( attacker , bullet , true )
	end )

	return {
		damage = true ,
		effects = DoDefaultEffect
	}
end --	Controls ricochets

function SWEP:BPenetration( a , b , c )
	return self:RicochetCallback( 0 , a , b , c )
end --	Tech for penetration

------------------------------------------------------
--	Toggles											--
------------------------------------------------------

function SWEP:ChangeModel( )

	--	Reset our view/world models to default if you aren't deployed
	if not (self:GetVNTSBSuppressed( ) == true or self:GetVNTSBBipod( ) == true or self:GetVNTSBStock( ) == true ) then
		--	Reset our models
		if self.ViewModelDefault != nil then
			self.ViewModel = self.ViewModelDefault
		end
		if self.WorldModelDefault != nil then
			self.WorldModel = self.WorldModelDefault
		end
	else
		--	If we're suppressed and we're using a budget suppressor
		if self:GetVNTSBSuppressed( ) == true then
			if self.SuppressorType == 1 then
				--	Set our models to the suppressed versions
				self.ViewModel = self.ViewModelSuppressed
				self.WorldModel = self.WorldModelSuppressed
			elseif self.SuppressorType == 2 then
				--	Set our models to the suppressed versions
				self.WorldModel = self.WorldModelSuppressed
			end
		elseif self:GetVNTSBBipod( ) == true then
			if self.DeployableType == 2 then
				--	Set our models to the bipod versions
				self.WorldModel = self.WorldModelBipod
			elseif self.DeployableType == 3 then
				--	Set our models to the bipod versions
				self.ViewModel = self.ViewModelBipod
				self.WorldModel = self.WorldModelBipod
			end
		elseif self:GetVNTSBStock( ) == true then
			if self.DeployableType == 5 then
				--	Set our models to the bipod versions
				self.WorldModel = self.WorldModelBipod
			elseif self.DeployableType == 4 then
				--	Set our models to the suppressed versions
				self.ViewModel = self.ViewModelStockOut
				self.WorldModel = self.WorldModelStockOut
			end
		end
	end

	if ( reDeploy ) != nil then
		self:ToggleOutAndIn()
		reDeploy = nil
	end
end

function SWEP:ToggleOutAndIn( )
	self:Holster( )

	if SERVER then
		self.Owner:SelectWeapon( "v92_int_blank" )
	end --	This has got to be 

	self:Deploy( )

	if SERVER then
		self.Owner:SelectWeapon( self.WeaponName )
	end --	the dumbest fix,

	self:Deploy( )

	if SERVER then
		self.Owner:SelectWeapon( "v92_int_blank" )
	end --	but damned

	self:Deploy( )

	if SERVER then
		self.Owner:SelectWeapon( self.WeaponName )
	end --	if it works

	self:Deploy( )
end

function SWEP:ToggleStock( )
	--	If we're owner, a player, valid, and alive, and we have a supressor then
	if ( self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) ) then
	
		--	If we're silenced then
		if self:GetVNTSBStock( ) == true then
		
			self:SetVNTSBStock( false )

			self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
			self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
			self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )


			self.Owner:PrintMessage( HUD_PRINTCENTER , "Stock In" )


			--	Add our delay to prevent spam
			self.ActionDelay = CurTime( ) + 1
			
		elseif self:GetVNTSBStock( ) == false then
			--	else if we're not silenced
			self:SetVNTSBStock( true )

			self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
			self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
			self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )


			self.Owner:PrintMessage( HUD_PRINTCENTER , "Stock Out" )


			--	Add our delay for the same reason
			self.ActionDelay = CurTime( ) + 1
			
		end
		
	else
	
		--	If we don't have a supressor or we're not valid, return back and end the function
		return false
		
	end
	
	self:ChangeModel( )
	reDeploy = true

end --	Toggle our supressor

function SWEP:ToggleFireMode( )
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) and self.ActionDelay <= CurTime( ) then
		if self:GetVNTSBIronSighted( ) == true then
			self:ToggleIronsights( )
		end

		--	Cycle to the next mode
		self.CurrentMode = self.CurrentMode + 1

		--	If we're too small, reset it
		if self.CurrentMode <= 1 then
			self.CurrentMode = 1
		end

		--	If our CurrentMode goes higher than 4
		if self.CurrentMode > 4 then
			--	Toggle the holster off
			self:ToggleHolster( )

			--	Play our draw animation and add a delay
			if ( self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_LOWERED_TO_IDLE ) ) then
				self:SendWeaponAnim( ACT_VM_LOWERED_TO_IDLE )
			elseif ( self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_SILENCED ) ) then
				self:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
			elseif self:Clip1( ) <= 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_EMPTY ) then
				self:SendWeaponAnim( ACT_VM_DRAW_EMPTY )
			else
				self:SendWeaponAnim( ACT_VM_DRAW )
			end

			self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
			--	Reset our fire mode to single shot
			self.CurrentMode = 1
		end

		--	This checks if a mode is false; it prevents you having to cycle out of the mode twice
		if self.FireMode[ 2 ] == false and self.CurrentMode == 1 then
			self.CurrentMode = 2
		end

		if self.FireMode[ 3 ] == false and self.CurrentMode == 2 then
			self.CurrentMode = 3
		end

		if self.FireMode[ 4 ] == false and self.CurrentMode == 3 then
			self.CurrentMode = 4
		end

		--	If single fire is true, and current mode is 1 then
		if self.FireMode[ 2 ] == true and self.CurrentMode == 1 then
			--	Tell our player that he's in Semi-Auto

			self.Owner:PrintMessage( HUD_PRINTCENTER , "1 - Semi-Auto" )


			--	Emit our switch sound
			self:EmitSound( "Weapon_SMG1.Special1" )
		elseif self.FireMode[ 3 ] == true and self.CurrentMode == 2 then
			--	If burst fire is true, and current mode is 2 then
			--	Tell our player that he's in Burst

			self.Owner:PrintMessage( HUD_PRINTCENTER , self.BurstCount .. " - Burst" )

			--	Emit our switch sound
			self:EmitSound( "Weapon_SMG1.Special1" )
		elseif self.FireMode[ 4 ] == true and self.CurrentMode == 3 then
			--	If auto fire is true, and current mode is 3 then
			--	Tell our player that he's in Automatic
			self.Owner:PrintMessage( HUD_PRINTCENTER , "A - Automatic" )
			
			--	Emit our switch sound
			self:EmitSound( "Weapon_SMG1.Special1" )
		elseif self.CurrentMode == 4 then
			--	If current mode is 4 then
			--	Toggle our holster
			self:ToggleHolster( )

			--	Tell our player that he's in Safety
			self.Owner:PrintMessage( HUD_PRINTCENTER , "S - Safety" )

			--	Emit our switch sound
			self:EmitSound( "Weapon_SMG1.Special2" )
		end

		--	If we have mode switch anims, and current mode isn't safety then
		if self.CurrentMode ~= 4 then
			--	If we're iron sighted and we have mode anims for irons then
			if ( self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IFIREMODE ) or self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_FIREMODE ) or self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_UNDEPLOY ) ) then
				if self:GetVNTSBIronSighted( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IFIREMODE ) then
					--	Play our specified anim
					self:SendWeaponAnim( ACT_VM_IFIREMODE )
				elseif self:GetVNTSBIronSighted( ) == false and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_FIREMODE ) then
					--	Play our specified anim
					self:SendWeaponAnim( ACT_VM_FIREMODE )
				elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_UNDEPLOY ) then
					--	else we aren't iron sighted or we don't have mode iron anims
					--	Play our specified normal switch fire anim
					self:SendWeaponAnim( ACT_VM_UNDEPLOY )
				end
				--	Add a delay based on animation time
			end
			--	Else add a basic float time
			self:SetNextPrimaryFire( CurTime( ) + 0.2 )
			self:SetNextSecondaryFire( CurTime( ) + 0.2 )
		end

		--	Add a delay before we can swap
		self.ActionDelay = CurTime() + 0.2
	end
end --	Change our fire modes

function SWEP:ToggleSuppressor( )
	--	If we're owner, a player, valid, and alive, and we have a supressor then
	--print("print")
	if ( self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) ) and ( self.SuppressorType ~= 0 ) then
		--	If we're silenced then
		if self:GetVNTSBSuppressed( ) == true then
			self:SetVNTSBSuppressed( false )
			
			if self:GetVNTSBIronSighted( ) == true then
				self:ToggleIronsights( )
			end

			if self.SuppressorType == 1 then

				self:ChangeModel( )
				reDeploy = true
				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )

			elseif self.SuppressorType == 2 then

				--	Take our supressor off
				self:ChangeModel( )
				self:SendWeaponAnim( ACT_VM_DETACH_SILENCER )
				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
	
			end

			self.Owner:PrintMessage( HUD_PRINTCENTER , "Suppressor Off" )

			--	Add our delay to prevent spam
			self.ActionDelay = CurTime( ) + 1
		elseif self:GetVNTSBSuppressed( ) == false then
			--	else if we're not silenced
			self:SetVNTSBSuppressed( true )
			
			if self:GetVNTSBIronSighted( ) == true then
				self:ToggleIronsights( )
			end

			if self.SuppressorType == 1 then
			
				self:ChangeModel( )
				reDeploy = true
				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )

			elseif self.SuppressorType == 2 then
				
				--	Attach the supressor
				self:ChangeModel( )
				self:SendWeaponAnim( ACT_VM_ATTACH_SILENCER )
				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )

			end

			self.Owner:PrintMessage( HUD_PRINTCENTER , "Suppressor On" )

			--	Add our delay for the same reason
			self.ActionDelay = CurTime( ) + 1
		end
	else
		--	If we don't have a supressor or we're not valid, return back and end the function
		return false
	end

end --	Toggle our supressor

function SWEP:ToggleBipod( )
	
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
		
			if self:GetVNTSBBipod( ) == true then
				self:SetVNTSBBipod( false )

				self.Owner:PrintMessage( HUD_PRINTCENTER , "Bipod Up" )

			elseif self:GetVNTSBBipod( ) == false then
				self:SetVNTSBBipod( true )


				self.Owner:PrintMessage( HUD_PRINTCENTER , "Bipod Down" )

			end

			self:ChangeModel( )
			reDeploy = true

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 1
			
		end
	end
end --	Toggle our bipod

function SWEP:ToggleGrenadeMode( )
	--	If we're owner, a player, valid, and alive, and our delay is expired, and we have a GL then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
		
			--	If we're not in GL mode then
			if self:GetVNTSBGLauncher( ) == false then
			
				--	We are now!
				self:SetVNTSBGLauncher( true )

				if self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_DEPLOYED ) then
					--	else play our normal deployed draw anim
					self:SendWeaponAnim( ACT_VM_DRAW_DEPLOYED )
				end

				--	Tell our player that he's in GL mode

				self.Owner:PrintMessage( HUD_PRINTCENTER , "Grenade Launcher On" )

			elseif self:GetVNTSBGLauncher( ) == true then
				--	else if we are in GL mode then
				if self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_HOLSTER_M203 ) then
					--	Play the deploy holster anim
					self:SendWeaponAnim( ACT_VM_HOLSTER_M203 )
				end

				--	Turn off the launcher mode		
				self:SetVNTSBGLauncher( false )

				--	Tell our player that he's in GL mode

				self.Owner:PrintMessage( HUD_PRINTCENTER , "Grenade Launcher Off" )

			end

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 2
			--	Add a delay based on sequence speed
			self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
			self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )

		end
	end
end --	Toggle our grenade launcher

function SWEP:ToggleIronsights( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
			
			--	If we're not iron sighted then
			if self:GetVNTSBIronSighted( ) == false then
				if self.ScopeType == 1 then
					if ( self:GetVNTSBScopedIn( ) == false ) then
						self.Weapon:EmitSound( self.SND_ZoomIn )
						self:SetVNTSBZoom( self.ScopeMultipliers[ 1 ] )
						self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 1 ] , 0.3 )
					end
				elseif self.ScopeType == 2 then
					if ( self:GetVNTSBScopedIn( ) == false ) then
						self.Weapon:EmitSound( self.SND_ZoomIn )
						self.Owner:SetFOV( self.ViewModelFOV - 10 , 0.3 )
					end
				end

				--	Set our FoV
				self.IsCloseZoomed = false
				--	Set our Iron sighted to true
				self:SetVNTSBIronSighted( true )
				self:SetVNTSBScopedIn( true )

				--	if mag is empty and we have empty anims then
				if ( self:Clip1( ) == 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_EMPTY ) ) then
					--	play our empty idle anims
					self:SendWeaponAnim( ACT_VM_IDLE_EMPTY )
					self:SetNextPrimaryFire( CurTime( ) + 0.3 )
					self:SetNextSecondaryFire( CurTime( ) + 0.3 )
				else
					-- else if mag isn't empty or we don't have empty anims then
					--	if we have a suppressor and we're suppressed
					if self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_SILENCED ) then
						--	play our suppressed idle
						self:SendWeaponAnim( ACT_VM_IDLE_SILENCED )
					else
						--	play our normal idle anims
						self:SendWeaponAnim( ACT_VM_IDLE )
					end

					--	add a slight float delay before we can fire since we can't use anim length here
					self:SetNextPrimaryFire( CurTime( ) + 0.3 )
					self:SetNextSecondaryFire( CurTime( ) + 0.3 )
				end

				--	Set our animaion speed to 0 to make aiming easier
				self.Owner:GetViewModel( ):SetPlaybackRate( 0 )
			elseif self:GetVNTSBIronSighted( ) == true then
				if self.ScopeType == 1 then
					if ( self:GetVNTSBScopedIn( ) == true ) then
						self.Weapon:EmitSound( self.SND_ZoomOut )
						self:SetVNTSBZoom( self.DefaultZoom )
						self.Owner:SetFOV( 0 , 0.3 )
					end
				elseif self.ScopeType == 2 then
					if ( self:GetVNTSBScopedIn( ) == true ) then
						self.Weapon:EmitSound( self.SND_ZoomOut )
						self.Owner:SetFOV( 0 , 0.3 )
					end
				end

				--	Reset our FOV
				self.IsCloseZoomed = false
				--	Set our iron sight to false
				self:SetVNTSBIronSighted( false )
				self:SetVNTSBScopedIn( false )

				--	if mag is empty and we have empty anims then
				if ( self:Clip1( ) == 0 and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_EMPTY ) ) then
					--	play our idle empty anim
					self:SendWeaponAnim( ACT_VM_IDLE_EMPTY )
					self:SetNextPrimaryFire( CurTime( ) + 0.3 )
					self:SetNextSecondaryFire( CurTime( ) + 0.3 )
				else
					--	else if mag isn't empty or we don't have empty anims then
					--	if we have a suppressor and we're suppressed
					if self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_SILENCED ) then
						--	play our suppressed idle
						self:SendWeaponAnim( ACT_VM_IDLE_SILENCED )
					else
						--	play our normal idle anims
						self:SendWeaponAnim( ACT_VM_IDLE )
					end

					--	play a delay since we can't use non-existant animation lengths
					self:SetNextPrimaryFire( CurTime( ) + 0.3 )
					self:SetNextSecondaryFire( CurTime( ) + 0.3 )
				end

				--	Reset our snimation speed
				self.Owner:GetViewModel( ):SetPlaybackRate( 1 )
			end
		end

		--	Add a delay before we can swap
		self.ActionDelay = self.ActionDelay + 0.3
	end
end --	Toggle our iron sights

function SWEP:ToggleZoom( )
	--	If we're owner, a player, valid, and alive, and not holstered, and our delay is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
				
			if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) and self:GetVNTSBHolstered( ) == false and self.ActionDelay <= CurTime( ) then
				if self.HasVariableZoom == true then
					if self.ScopeType == 1 then
						if self:GetVNTSBScopedIn( ) == true and self.IsCloseZoomed == false then
							--	Set our FoV
							self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 2 ] , 0.3 )
							self.IsCloseZoomed = true
							self:EmitSound( self.SND_CycleZoomIn )
						elseif self:GetVNTSBScopedIn( ) == true and self.IsCloseZoomed == true then
							--	Set our FoV
							self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 1 ] , 0.3 )
							self.IsCloseZoomed = false
							self:EmitSound( self.SND_CycleZoomOut )
						end
					elseif self.ScopeType == 2 then
						if self:GetVNTSBScopedIn( ) == true and self.IsCloseZoomed == false then
							self.IsCloseZoomed = true
							self:EmitSound( self.SND_CycleZoomIn )
						elseif self:GetVNTSBScopedIn( ) == true and self.IsCloseZoomed == true then
							self.IsCloseZoomed = false
							self:EmitSound( self.SND_CycleZoomOut )
						end
					else
						return false
					end
				else
					return false
				end
			end

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 0.2
		end
	end
end

function SWEP:ToggleHolster( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then

			--	if we're not holstered then
			if self:GetVNTSBHolstered( ) == false then
				--	we are now!
				self:SetVNTSBHolstered( true )

				--	Turn off iron sights if we're in them
				if self:GetVNTSBIronSighted( ) == true then
					self:ToggleIronsights( )
				end

				--	Add a toggle delay
				self.ActionDelay = CurTime( ) + 1

				--	if we have low anims then
				if self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DOWN_M203 ) or self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_LOWERED ) then
					--	if we're in launcher mode then
					if self:GetVNTSBGLauncher( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DOWN_M203 ) then
						--	play the down deployed anim
						self:SendWeaponAnim( ACT_VM_DOWN_M203 )
					elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_LOWERED ) then
						--	else we're not in launcher mode
						--	play the normal down animation
						self:SendWeaponAnim( ACT_VM_IDLE_LOWERED )
					end
				elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_HOLSTER ) then
					--	else we don't have low anims, so just play the holster anim
					self:SendWeaponAnim( ACT_VM_HOLSTER )
				end
			else
				--	if we're holstered
				--	if we have a suppressor and we're suppressed
				if self.SuppressorType == 2 and self:GetVNTSBSuppressed( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_DRAW_SILENCED ) then
					--	play our suppressed draw
					self:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
				elseif self:GetVNTSBGLauncher( ) == true and self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_IDLE_M203 ) then
					--	play the deployed anim
					self:SendWeaponAnim( ACT_VM_IDLE_M203 )
				elseif self.Owner:GetViewModel( ):SelectWeightedSequence( ACT_VM_LOWERED_TO_IDLE ) then
					self:SendWeaponAnim( ACT_VM_LOWERED_TO_IDLE )
				else
					--	Play our normal draw anim
					self:SendWeaponAnim( ACT_VM_DRAW )
				end

				--	set our holster to false
				self:SetVNTSBHolstered( false )
				
			end

			--	add a delay
			self.ActionDelay = CurTime( ) + 1
		end
	end
end --	Toggle our holster

------------------------------------------------------
--	Entity Shooter Functions						--
------------------------------------------------------
function SWEP:EntityShooter( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
		
			--	If the launcher is empty, and the bolt is back then
			if ( self:GetVNTSBLchrLoaded( ) == false and self.LauncherPinForward == false ) then
				--	Emit our empty sound
				self:EmitSound( self.SND_PrimaryDryFire )
				--	Set a delay
				self:SetNextPrimaryFire( CurTime( ) + 0.2 )
				self:SetNextSecondaryFire( CurTime( ) + 0.2 )
				--	Bolt is forward
				self.LauncherPinForward = true
			elseif ( self:GetVNTSBLchrLoaded( ) == true and self.LauncherPinForward == false ) then
				self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				self:TakePrimaryAmmo( 1 )
				self:SetVNTSBLchrLoaded( false )
				self:EmitSound( self.SND_PrimaryFire )

				if CLIENT then
					--	If our muzzle flashes are enabled
					if GetConVarNumber( "VNT_SWep_Base_FlashToggle" ) ~= 0 then
						self.Owner:MuzzleFlash( )
						--	Emit our muzzle flash
						local FX = EffectData( )
						FX:SetOrigin( self.Owner:GetShootPos( ) )
						FX:SetEntity( self )
						FX:SetStart( self.Owner:GetShootPos( ) )
						FX:SetNormal( self.Owner:GetAimVector( ) )
						FX:SetAttachment( self.MuzzleAttach )
						--	emit normal rifle smoke
						util.Effect( "fx_smoke_rifle_ins" , FX )
					end
				end

				self:EntityLauncher( )
			end

			--	Exit our attack function
			return false
		end
	end
end

function SWEP:EntityLauncher( )
	if SERVER then
		local LaunchedGren = ents.Create( self.GrenadeLauncherEntity )
		LaunchedGren:SetPos( self.Owner:GetShootPos( ) + self.Owner:EyeAngles( ):Right( ) * 0 )
		LaunchedGren:SetAngles( self.Owner:EyeAngles( ) + Angle( 0 , 180 , 0 ) )
		LaunchedGren:SetOwner( self.Owner )
		LaunchedGren:Spawn( )
		LaunchedGren:Activate( )
		LaunchedGren:SetVelocity( self.Owner:EyeAngles( ):Forward( ) * self.GrenadeLauncherForce + Vector( 0 , 0 , 50 ) )
	end
end

--[[
function SWEP:BlackFridayDoorBusterSales( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
		
			if trace.Entity:GetClass() == "prop_door_rotating" then
				local pos = Door:GetPos()
				local ang = Door:GetAngles()
				local model = Door:GetModel()
				local skin = Door:GetSkin()

				Door:SetNotSolid(true)
				Door:SetNoDraw(true)

				local function ResetDoor(door, fakedoor)
				if door:IsValid() then
				local mass = door:GetNWInt("DoorHealthMaxHealth")
					door:SetNotSolid(false)
					door:SetNoDraw(false)
					door.DoorHealth = mass
					door:SetNWInt("DoorHealth", door.DoorHealth )
					end
					if fakedoor:IsValid() then
					fakedoor:Remove()
					end
				end

				local ent = ents.Create("prop_physics")
				ent:SetPos(pos)
				ent:SetAngles(ang)
				ent:SetModel(model)
				if skin then
					ent:SetSkin(skin)
				end
				ent:Spawn()
				ent:EmitSound("HL2.Physics.Wood.Furniture.Break")
				ent:SetVelocity(attacker:GetAimVector() * (amount * GetConVarNumber("kick_blowdoorforce")) * GetConVarNumber("kick_blowdoormulforce"))
				ent:GetPhysicsObject():ApplyForceCenter(attacker:GetAimVector() * (amount * GetConVarNumber("kick_blowdoorforce")) * GetConVarNumber("kick_blowdoormulforce"))
			else
				ply.oldname = ply:GetName()

				ply:SetName( "kickingpl" .. ply:EntIndex() )

				trace.Entity:SetKeyValue( "Speed", "768" )
				trace.Entity:SetKeyValue( "Open Direction", "Both directions" )
				trace.Entity:Fire( "unlock", "", .01 )
				trace.Entity:Fire( "openawayfrom", "kickingpl" .. ply:EntIndex() , .01 )

				timer.Simple(0.02, function()
					if IsValid(ply) then
						ply:SetName(ply.oldname)
					end
				end)

				timer.Simple(0.3, function()
					if IsValid(trace.Entity) then
						trace.Entity:SetKeyValue( "Speed", "100" )
					end
				end)
			end
			ply:EmitSound("BF3.Foley.DoorBust")
		end
	end
end
--]]
------------------------------------------------------
--	Toss Weapon Functions							--
------------------------------------------------------
--function SWEP:Equip()end
function SWEP:OnDrop( )
	return false
end

function SWEP:Throw( )
	--	If we're owner, a player, valid, and alive then
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
				
			--	Play our holster animation
			
			if self:SelectWeightedSequence( ACT_VM_HOLSTER ) then
				self:SendWeaponAnim( ACT_VM_HOLSTER )
			end
			
			--	Run our drop animation 
			self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_ITEM_GIVE )
			self:EmitSound( "VNT.SWep.Throw1" )
			
			--	Get our position
			local pos = self.Owner:GetShootPos( )
			pos = pos + self.Owner:GetForward( ) * 24
			pos = pos + self.Owner:GetRight( ) * 0
			pos = pos + self.Owner:GetUp( ) * 2

			-- ents.Create only exists in the server realm
			--	Create our weapon entity
			local Tosser = ents.Create( tostring(self.WeaponEntityName) )
			Tosser:SetAngles( self.Owner:EyeAngles( ) )
			Tosser:SetPos( pos )
			Tosser:Spawn( )
			Tosser:Activate( )
			--	Activate our physics
			local phys = Tosser:GetPhysicsObject( )
			phys:SetVelocity( self.Owner:GetAimVector( ) * 64 )
			phys:AddAngleVelocity( Vector( 47 , 0 , 0 ) )
			--	Remove the weapon from our slots
			self.Owner:StripWeapon( self.WeaponName )
			--	And return to the last used weapon
			if SERVER then
				RunConsoleCommand( "lastinv" )
			end
		end
	end
end --	Throw our weapon

------------------------------------------------------
--	Jamming Functions								--
------------------------------------------------------
function SWEP:Jammed( )
	--	If we're owner, a player, valid, and alive then
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
				
			--	If we're a small jam then
			if self:GetVNTSBJammedL( ) == true then
				--	Print the text

				self.Owner:PrintMessage( HUD_PRINTCENTER , "Magazine Jam!" )


				--	Toggle out of iron sights
				if self:GetVNTSBIronSighted( ) == true then
					self:ToggleIronsights( )
				end

				--	get the duration of the sequence and run the function
				timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
					--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
					if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end

					--	play the holster animation
					--self:SendWeaponAnim( ACT_VM_HOLSTER )
					--	if we're a pistol then
					if ( self.WeaponType == 2 ) then
						--	play the pistol jam sound
						self:EmitSound( self.SND_JamSmallPistol )
					else
						--	else play the rifle jam sound
						self:EmitSound( self.SND_JamSmall )
					end

					--	get our sequence + 2 and run func
					timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) + 2 , function( )
						--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
						if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end

						if self.SuppressorType == 2 then
						else
						end

						--self:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
						--self:SendWeaponAnim( ACT_VM_DRAW )
						--	get the sequence duration of the draw anim
						timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
							--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
							if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end
							--	clear the chamber
							self:TakePrimaryAmmo( 1 )
							--	we're not jammed
							self:SetVNTSBJammedL( false )
						end )
					end )
				end )
			end

			--	If we're a big jam then
			if self:GetVNTSBJammedB( ) == true then
				--	Print the text

				self.Owner:PrintMessage( HUD_PRINTCENTER , "Function Jam!" )


				--	Toggle out of iron sights
				if self:GetVNTSBIronSighted( ) == true then
					self:ToggleIronsights( )
				end

				--	get the duration of the sequence and run the function
				timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
					--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
					if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end

					--	play the holster animation
					--self:SendWeaponAnim( ACT_VM_HOLSTER )
					--	if we're a pistol then
					if ( self.WeaponType == 2 ) then
						--	play the pistol jam sound
						self:EmitSound( self.SND_JamLargePistol )
					else
						--	else play the rifle jam sound
						self:EmitSound( self.SND_JamLarge )
					end

					--	get our sequence + 2 and run func
					timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) + 2 , function( )
						--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
						if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end

						if self.SuppressorType == 2 then
						else
						end

						--self:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
						--self:SendWeaponAnim( ACT_VM_DRAW )
						--	get the sequence duration of the draw anim
						timer.Simple( self.Owner:GetViewModel( ):SequenceDuration( ) , function( )
							--	if the player or weapon isn't valid, and we're not predicted, and the owner isn't alive then quit
							if ( not IsValid( self.Owner ) or not IsValid( self ) ) or ( not IsFirstTimePredicted( ) or not self.Owner:Alive( ) ) then return end
							--	clear the chamber
							self:TakePrimaryAmmo( 1 )
							--	we're not jammed
							self:SetVNTSBJammedB( false )
						end )
					end )
				end )
			end
		end
	end
end --	Run our Jammed functions

------------------------------------------------------
--	Melee Functions									--
------------------------------------------------------
function SWEP:Melee( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if not ( self.Owner:KeyDown( IN_SPEED ) or self:GetVNTSBHolstered( ) == true ) then
				local tr = { }
				tr.start = self.Owner:GetShootPos( )
				tr.endpos = self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * self.MeleeRange )
				tr.filter = self.Owner
				tr.mask = MASK_SHOT
				local trace = util.TraceLine( tr )
				local trEnt = trace.Entity
				if ( trace.HitSky ) then return end
				-- Play the melee attack animation
				if self.MeleeAnimType == 2 then
					self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND )
				elseif self.MeleeAnimType == 1 then
					self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND )
				end

				if trace.Hit then
					if trEnt:IsWorld( ) then
						--print("Melee hit world!")
						
						--	Play hit sound
						if self.HasMeleeAttack != false then
							self:EmitSound( self.SND_PistolWhipHit )
						else
							self:EmitSound( self.SND_MeleeHitWall )
						end
							
						--	Play animation
						self:SendWeaponAnim( ACT_VM_HITCENTER )

						--	Make sparks
						local FX = EffectData( )
						FX:SetOrigin( trace.HitPos )
						FX:SetEntity( self.ViewModel )
						FX:SetStart( trace.HitPos )
						FX:SetNormal( trace.HitNormal )
						FX:SetAngles( ( self.Owner:GetForward( ) * -16 ):Angle( ) )
						FX:SetScale( 1.5 )
						FX:SetRadius( 0.9 )
						FX:SetMagnitude( 0.6 )
						if self.IsBladedMelee == true then
							--	make decal
							util.Effect( "Sparks" , FX )
							util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
						end
					elseif trEnt:IsNPC( ) or trEnt:IsPlayer( ) then
						--print("Melee hit character!")
						
						--	Play hit sound
						if self.HasMeleeAttack != false then
							self:EmitSound( self.SND_PistolWhipHit )
							self:SendWeaponAnim( ACT_VM_HITCENTER )
						else
							self:EmitSound( self.SND_MeleeHitCharacter )
						end
						
						--	Play animation
						self:SendWeaponAnim( ACT_VM_HITCENTER )
						
						--	Make blood
						local FX = EffectData( )
						FX:SetOrigin( trace.HitPos )
						FX:SetEntity( self.ViewModel )
						FX:SetStart( trace.HitPos )
						FX:SetNormal( trace.HitNormal )
						FX:SetAngles( ( self.Owner:GetForward( ) * -16 ):Angle( ) )
						FX:SetScale( 1.5 )
						FX:SetRadius( 0.9 )
						FX:SetMagnitude( 0.6 )
						if self.IsBladedMelee == true then
							--	make decal
							util.Effect( "Blood" , FX )
							util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
						end
						--	Do our damage
						if SERVER then
							local dmg = DamageInfo( )
							dmg:SetDamage( self.Primary.Damage )
							dmg:SetAttacker( self.Owner )
							dmg:SetInflictor( self )
							dmg:SetDamageForce( self.Owner:GetAimVector( ) * 300 )
							dmg:SetDamagePosition( trace.HitPos )
							dmg:SetDamageType( DMG_SLASH )
							--	Apply damage to target
							self.Owner:LagCompensation( true )
							trEnt:TakeDamageInfo( dmg )
							self.Owner:LagCompensation( false )
						end
					elseif trEnt:GetPhysicsObject( ):IsValid( ) and not ( trEnt:IsPlayer( ) or trEnt:IsNPC( ) or trEnt:IsWorld( ) ) then
						
						--print("Melee hit physics object!")
						
						--	Play hit sound
						if self.HasMeleeAttack != false then
							self:EmitSound( self.SND_PistolWhipHit )
						else
							self:EmitSound( self.SND_MeleeHitWall )
						end
						
						--	Play animation
						self:SendWeaponAnim( ACT_VM_HITCENTER )

						if self.IsBladedMelee == true then
							--	make decal
							util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
						end
						--	Apply force
						trEnt:GetPhysicsObject( ):ApplyForceOffset( self.Owner:GetAimVector( ) * 80 * trEnt:GetPhysicsObject( ):GetMass( ) , trace.HitPos )

						--	Do our damage
						if SERVER then
							local dmg = DamageInfo( )
							dmg:SetDamage( self.Primary.Damage / 4 )
							dmg:SetAttacker( self.Owner )
							dmg:SetInflictor( self )
							dmg:SetDamageForce( self.Owner:GetAimVector( ) * 300 )
							dmg:SetDamagePosition( trace.HitPos )
							dmg:SetDamageType( DMG_SLASH )
							--	Apply damage to target
							self.Owner:LagCompensation( true )
							trEnt:TakeDamageInfo( dmg )
							self.Owner:LagCompensation( false )
						end
					end
				else
					--print("Melee missed!")
					--	Play animation
					--self:SendWeaponAnim( ACT_VM_MISSCENTER )
					--	Play hit sound
				
					if self.HasMeleeAttack != false then
						self:EmitSound( self.SND_PistolWhipMiss )
						self:EmitSound( self.SND_MeleeMissed )
						self:SendWeaponAnim( ACT_VM_HITCENTER )
					else
						self:EmitSound( self.SND_MeleeMissed )
						self:SendWeaponAnim( ACT_VM_MISSCENTER )
					end
				end

				--	Play our third-person firing animation
				self.Owner:SetAnimation( PLAYER_ATTACK1 )
				--	Play normal sound
				--	Make ViewModel pistol whip effect
				self:FireViewPunches( )
				self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
			end
		end
	end
end --	Are we a melee weapon

------------------------------------------------------
--	Animation Functions								--
------------------------------------------------------

function SWEP:HoldTypeAnimations( )

	--	If we're owner, a player, valid, and alive then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Setup a small shortcut
			local owner = self.Owner
			
			if self:GetVNTSBHolstered() == true then
				if owner:Crouching() == true then
					self:SetWeaponHoldType( self.HoldMeRight[9] )
				else
					self:SetWeaponHoldType( self.HoldMeRight[8] )
				end
			else			
				if self:GetVNTSBIronSighted() == true then
					if self:GetVNTSBBipod() == true then
						if owner:Crouching( ) then
							self:SetWeaponHoldType( VNTHType.LMG[ 4 ] )
						else
							self:SetWeaponHoldType( VNTHType.LMG[ 2 ] )
						end
					elseif self:GetVNTSBGLauncher() == true then
						if owner:Crouching( ) then
							self:SetWeaponHoldType( VNTHType.GLauncher[ 4 ] )
						else
							self:SetWeaponHoldType( VNTHType.GLauncher[ 2 ] )
						end					
					else
						if owner:Crouching() == true then
							self:SetWeaponHoldType( self.HoldMeRight[4] )
						else
							self:SetWeaponHoldType( self.HoldMeRight[2] )
						end
					end
				else
					if self:GetVNTSBBipod() == true then
						if owner:Crouching( ) then
							self:SetWeaponHoldType( VNTHType.LMG[ 3 ] )
						else
							self:SetWeaponHoldType( VNTHType.LMG[ 1 ] )
						end
					elseif self:GetVNTSBGLauncher() == true then
						if owner:Crouching( ) then
							self:SetWeaponHoldType( VNTHType.GLauncher[ 3 ] )
						else
							self:SetWeaponHoldType( VNTHType.GLauncher[ 1 ] )
						end		
					else
						if owner:Crouching() == true then
							self:SetWeaponHoldType( self.HoldMeRight[3] )
						else
							self:SetWeaponHoldType( self.HoldMeRight[1] )
						end
					end
				end
			end
		end
	end
end

function SWEP:SpecialAnimation( anim )
	self.ViewModel:SetSequence( self.ViewModel:LookupSequence( anim ) )
	--self.ViewModel:SetCycle(0)
	self:SetCycle( 0 )
end --	Play animations not normally called by ACT_VM_*