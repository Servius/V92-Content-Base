
AddCSLuaFile( )
------------------------------------------------------
--	Prevent this file from loading if for some odd reason the base Lua isn't loaded
if not VNTCB then return false end
------------------------------------------------------
--	Jesse V92's Custom SWep Base
--	Start Date:	2016/07/14
--	Purpose: Create a good SWep base
------------------------------------------------------
--	If you want to make weapons, you need to change
--		only the values listed with comments below.
--	The rest of it has been coded so it will read
--		these values and react properly.
--	If you want to make SWeps, refer to samples.
--	Those will show you in how to make SWeps.
--	When in doubt, contact me.
------------------------------------------------------
--	REMOVE LINES YOU DID NOT CHANGE!
--	THIS WILL SPEED UP LOAD TIMES!
------------------------------------------------------
--	Spawn settings
--	Can we spawn this?
------------------------------------------------------

SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information
--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.WeaponName = VNTCB.Bases.Wep -- (String) Name of the weapon script
SWEP.WeaponEntityName = nil -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "V92's Custom SWep Base" -- (String) Printed name on menu
SWEP.Manufacturer = VNTCB.Manufacturer.VNT -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.USA -- (String) Country of origin
SWEP.MagazineName = VNTCB.Magazine.magNATO556 -- (String) The name of the magazine the weapon uses - used in my Weapon Magazine System
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.Slot = VNTCB.Bucket.Utility -- (Integer) Bucket to place weapon in, See autorun/sh_v92_code_base.lua; 1 to 6
SWEP.SlotPos = VNTCB.Slot.Utility -- (Integer) Bucket position, See autorun/sh_v92_code_base.lua
SWEP.InventorySlot = VNTCB.Type.None -- (String) Weapon type, See autorun/sh_v92_code_base.lua; Primary, Secondary, Melee, GrenadeOne, GrenadeTwo, Mine, Supply, None
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.
SWEP.HUDIconIsPNG = false -- (Boolean) Is the HUD bucket icon a .png in the materials/entities/ folder?

------------------------------------------------------
--	Model Information
--	Model settings and infomation
------------------------------------------------------

SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "models/weapons/c_slam.mdl" ) -- (String) View model - v_*
SWEP.ViewModelDefault = nil -- (String) View model - v_* ; used to reset the view model since self.ViewModel isn't recallable
SWEP.WorldModel = Model( "models/weapons/w_slam.mdl" ) -- (String) World model - w_*
SWEP.WorldModelDefault = nil -- (String) World model - w_* ; used to reset the world model since self.WorldModel isn't recallable
SWEP.UseHands = false -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Gun Types
--	Set the type of weapon
------------------------------------------------------

SWEP.WeaponType = 1 -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Entity Shooter, 7=Rocket Launcher
SWEP.HoldType = "ar2" -- (String) Fallback hold type

SWEP.DeployableType = 0 -- (Integer) 0=None, 1=Grenade Launcher, 2=Bipod, 3=Model Swap Bipod, 4=Model Swap Stock Deploy, 5=Deployable

SWEP.ViewModelBipod = nil -- (String) Model swap bipod view model
SWEP.WorldModelBipod = nil -- (String) Model swap bipod world model

SWEP.SuppressorType = 0 -- (Integer) 0=No Suppressor, 1=Model Swap, 2=Animation

SWEP.ViewModelSuppressed = nil -- (String) The Suppressed view model
SWEP.WorldModelSuppressed = nil -- (String) The Suppressed world model

SWEP.ViewModelLaser = nil -- (String) The Laser view model
SWEP.WorldModelLaser = nil -- (String) The Laser world model

SWEP.ViewModelLaserSuppressed = nil -- (String) The Laser & Suppressed view model
SWEP.WorldModelLaserSuppressed = nil -- (String) The Laser & Suppressed world model

SWEP.ViewModelStockOut = nil -- (String) The Suppressed view model
SWEP.WorldModelStockOut = nil -- (String) The Suppressed world model

SWEP.DeployedModeUsesStockIrons = false -- (Boolean) The deployed mode uses the vectors for the folded/unfolded stock irons?

------------------------------------------------------
--	Bodygroup Settings
------------------------------------------------------

SWEP.StockBG = nil -- (Table: View Model BG Number, World Model BG Number) Stock Bodygroup
SWEP.BipodBG = nil -- (Table: View Model BG Number, World Model BG Number) Bipod Bodygroup
SWEP.SuppressorBG = nil -- (Table: View Model BG Number, World Model BG Number) Suppressor Bodygroup
SWEP.LaserBG = nil -- (Table: View Model BG Number, World Model BG Number) Laser Aiming Module Bodygroup
SWEP.LaserUsesWorldSprite = true -- (Boolean) Does this project a world sprite?

------------------------------------------------------
--	Primary Fire Settings
--	Settings for the primary fire of the weapon
------------------------------------------------------

SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = -1 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.ClipSizePlus = 1 -- (Integer) How many extra bullets to add if CanChamber is true
SWEP.Primary.Ammo = "none" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.RPM = 1 -- (Integer) Go to a Wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Primary.PureDmg = 1 -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Primary.NumShots = 1 -- (Integer) How many bullets per shot; think of this as a shotgun shell, higher integer, more pellets
SWEP.Primary.Force = 15 -- (Integer) Amount of force for the bullet to emit on impact
SWEP.Primary.Distance = 56756 -- (Integer) Distance to before the bullet stops; max is 56756

------------------------------------------------------
--	Secondary Fire Settings
--	Settings for the alt-fire; if it has none, leave this be
------------------------------------------------------

SWEP.Secondary.ClipSize = -1 -- (Integer) Size of a secondary magazine; if no alt-fire, set to -1
SWEP.Secondary.DefaultClip = -1 -- (Integer) Default number of projectiles in the alt fire mag; if none, set to -1
SWEP.Secondary.ClipSizePlus = 1 -- (Integer) How many extra bullets to add if CanChamber is true
SWEP.Secondary.Ammo = "none" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Secondary.RPM = 1 -- (Integer) Go to a Wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Secondary.PureDmg = 1 -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Secondary.NumShots = 1  -- (Integer) How many bullets per shot; think of this as a shotgun shell, higher integer, more pellets
SWEP.Secondary.Recoil = 1 -- (Float) Amount of recoil per shot
SWEP.Secondary.Force = 15 -- (Integer) Amount of force for the bullet to emit on impact
SWEP.Secondary.Distance = 56756 -- (Integer) Distance to before the bullet stops; max is 56756

------------------------------------------------------
--	Grenades
--	These'll come in handy
------------------------------------------------------

SWEP.GrenadeLauncherEntity = VNTCB.Bases.Grenade -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 4000 -- (Integer) Force of grenade launchers and shell throwers like that.
SWEP.CanCookGrenade = true -- (Boolean) Can we cook it?
SWEP.FireDelay = 1.5 -- (Float) Delay between tosses
SWEP.FuseTime = 5 -- (Float) Timer on the fuse before detonation

------------------------------------------------------
--	Gun Mechanics
--	Various things to tweak the effects and feedback
------------------------------------------------------

SWEP.AllowDepthMod = GetConVarNumber( "VNT_Base_SWep_DepthModToggle" ) -- (Boolean) Does this weapon lower when you're too close to a wall?
SWEP.CanReloadWhenNotEmpty = true -- (Boolean) Can we reload when not empty? true=M16, false=M1 Garand
SWEP.CanChamber = true -- (Boolean) Can we load a round into the chamber?
SWEP.FireMode = { false , true , false , false } -- (Table: Boolean, Boolean, Boolean, Boolean ) Enable different fire modes on the weapon; Has modes, Has Single, Has Burst, Has Auto - in that order. You can have more than one, but the first must be true
SWEP.HasSpecialFireMode = { false , true , 1 , 650 } -- (Table: Boolean, Boolean, Integer, Integer) Has special fire mode, Is auto, burst count, special mode RPM; used on the Browning Automatic Rifle
SWEP.SpecialModeMessage = "FA - Fast Automatic" -- (String) Message printed when switching to the special mode
SWEP.CurrentMode = 1 -- (Integer) Current fire mode of the weapon; used to set the default mode; corresponds to the FireMode table
SWEP.DeployDelay = 0 -- (Float) Time for the deploy animation to play; this isn't needed, may remove it
SWEP.Weight = 0 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.CanPenetrate = true -- (Boolean) Should the bullets CanPenetrate through surfaces?
SWEP.Ricochet = true -- (Boolean) Should the bullet richochet?
SWEP.CanFireUnderwater = false -- (Boolean) Can we shoot underwater?
SWEP.StrongPenetration = VNTCB.Ammo.a9x19mmNATO[2] -- (Integer) Max penetration
SWEP.WeakPenetration = VNTCB.Ammo.a9x19mmNATO[3] -- (Integer) Max wood penetration
SWEP.CanPenetrate = true -- (Boolean) Can the weapon penetrate?
SWEP.BurstCount = 3 -- (Integer) Amounts of shots to be fired by burst
SWEP.BurstDelay = 0.05 -- (Float) Time between bolt cycles in the burst
SWEP.StripWhenEmpty = false -- (Boolean) Should this weapon be stripped when you have no ammo left.
SWEP.EffectiveRange = 500 -- (Integer) Effective range of the weapon in metres.
SWEP.RevolverAction = nil  -- (Integer) Revolver action style, nil=disregard, 1=Single-Action, 2=Double-Action
SWEP.BlackFriday = false -- (Boolean) Black Friday Doorbuster Sales
SWEP.StoppageRate = 500 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.
SWEP.DisableHoldIronToggle = false -- (Boolean) Force this weapon to use toggle irons instead of hold irons
SWEP.CanIronWhenUnDeployed = true -- (Boolean) Can this weapon use iron sights when not deployed?
SWEP.CanShootWhenUnDeployed = true -- (Boolean) Can this weapon fire when not deployed?
SWEP.CanReloadWhenUnDeployed = true -- (Boolean) Can this weapon reload when not deployed?
SWEP.InvertedReloadEnumNames = false -- (Boolean) Does this weapon have inverted reload enumerations? I.E. the empty reload is named ACT_VM_RELOAD and the normal is named ACT_VM_RELOAD_EMPTY

------------------------------------------------------
--	Special FX
--	Muzzle flashes, shell casings, etc
------------------------------------------------------

SWEP.MuzzleAttach = 1 -- (Integer) The number of the attachment point for muzzle flashes, typically "1"
SWEP.MuzzleFlashName = "fx_muzzleflash" -- (String) The name of the Lua/effects/effect.Lua file
SWEP.MuzzleFlashType = 1 -- (Integer) The number of the muzzle flash to use; see Lua/Effects/fx_muzzleflash.Lua
SWEP.ShellAttach = 2 -- (Integer) The number of the attachment point for shell ejections, typically "2"
SWEP.ShellEffect = "fx_shelleject" -- (String) Name of the file in Lua/effects/shelleject.lua to use for shell ejections; leave blank for none
SWEP.ShellType = nil -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.EjectLastShell = true -- (Boolean) Does the weapon eject the last shell casing? I.E. in DoD:S pack, the ACT_VM_FIRELAST doesn't pull the bolt to eject, so we don't want to eject a shell casing
SWEP.ClipEjection = nil -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.ShellDelay = 0 -- (Float) Time between shot firing and shell ejection; useful for bolt-actions and things like that that need a delay
SWEP.UseTracer = true -- (Boolean) Do we use tracers?
SWEP.TracerRandomizer = 1 -- (Integer) Between 0 and this number, chance to make a TracerType if UseTracer is true
SWEP.CustomTracer = nil -- (String) Custom TracerType effect; lua/effects/*.lua
SWEP.RevolverShells = nil -- (Integer) Set to any integer to enable 'revolver' style shell ejections; I.E. when you reload it dumps all of them at once. Integer should be shell count.

------------------------------------------------------
--	Machine Gun Settings
--	Things typically used on machine guns
------------------------------------------------------

SWEP.BeltFed = false -- (Boolean) Is it belt fed?
SWEP.BeltLinkNumbers = { 16 , 17 } -- (Table: Integer, Integer) Belt entity in Lua/effects/fx_shelleject.Lua; 1=First Link, 2=Link; 16/17 5.56 links, 19/20 7.62 links
SWEP.BeltFedAnimatedDoD = false -- (Boolean) Is the belt empty/full set up via animations like DoD:S?
SWEP.BeltFedAnimatedINS = { false , 2 , 0 , 10 } -- ( Table: Bool , Int , Int , Int ) Has Belt BG , Is animated belt , sub-group start , sub-group end; used for guns that have bodygroups for the bullets on the belt depleting; I.E., INS M249
SWEP.DoesOverheat = { false , 1 , 100 , 4 , 2 } -- ( Table: Bool , Int , Int , Int , Int ) Overheats , Amount of heat per bullet , max heat , cooldown time , cooldown per second 

------------------------------------------------------
--	Shotgun Settings
--	Settings for shotguns
------------------------------------------------------

SWEP.PumpAction = false -- (Boolean) Is the shotgun pump action?
SWEP.ShellReload = false -- (Boolean) Does this weapon use individual shells?
SWEP.ShellReloadCustom = false -- (Boolean) Does this weapon use custom shell reload animation names? Exists because the ENUMS for the DoD:S shell insert animations aren't in GMod
SWEP.ShellReloadCustomSequences = { "reload_start" , "reload_loop" , "reload_end" } -- ( Table: String , String , String ) Start reload sequence name , single insert sequence name , end reload sequence name

------------------------------------------------------
--	Sniper Settings
--	Settings for sniper rifles
------------------------------------------------------

SWEP.ScopeType = 0 -- (Integer) Type of scope, 0=none, 1=overlay, 2=Render Target
SWEP.ScopeMaterial = 0 -- (Integer) Type of overlay, 0=Red Dot, 1=EOTech, 2=ACOG, 3=SVD, 4=M14, 5=L42A1, 6=PSG1, 7=German tri-bar
SWEP.ScopeMaterialCustom = nil -- (String: Material) Path to the scope overlay you want to use if you use an overlay scope
SWEP.ScopeMultipliers = { 1 , 8 , 4 } -- (Table: Float, Float, Float) Zoom Muliplier, Default Zoom x, Close Zoom x
SWEP.BoltAction = false -- (Boolean) Is this bolt action? Removes the player from the scope after firing
SWEP.ReturnToScope = false -- (Boolean) Return to scope after cycling the bolt?
SWEP.HasVariableZoom = false -- (Boolean) Does the weapon have variable zoom?
SWEP.ManualCocking = false -- (Boolean) Does the weapon have the bolt pull assigned to ACT_VM_PULLPIN
SWEP.HasRTScope = false -- Has RT scope?
SWEP.RTScopeCrosshair = Material( "jessev92/ui/scope/crosshair_psg1" ) -- The crosshair texture to use - check jessev92/ui/scope/ for textures
SWEP.RTScopeDirt = Material( "jessev92/ui/scope/scope_dirt" ) -- The dirt texture to use as an overlay
SWEP.RTScopeShadowMask = Material( "jessev92/ui/scope/scope_shadowmask" ) -- The shadow texture to use around the edges of the view

------------------------------------------------------
--	Launcher Settings
------------------------------------------------------

SWEP.RocketLauncherAnimatedDoD = false -- (Boolean) Is the weapon animated like the rocket launchers in DoD:S?
SWEP.BackBlastAttach = 2 -- (Integer) Number of the backblast attachment

------------------------------------------------------
--	Melee Settings
------------------------------------------------------

SWEP.MeleeAnimType = 0 -- (Integer) Melee type; 0=holdtype animation, 1=pistol whip, 2=rifle butt, 3=random between them
SWEP.MeleeRange = 70 -- (Integer) Range of melee weapon swings
SWEP.HasMeleeAttack = false -- (Boolean) Does this weapon have a pistol whip or rifle butt animation?
SWEP.AltFireMelee = false -- (Boolean) Is the alt fire a melee attack?
SWEP.IsBladedMelee = false -- (Boolean) Is the melee a blade?
SWEP.ThrowPower = 256 -- (Integer) The throw power of weapons being thrown, higher values than this can be used for throwing knives and such

------------------------------------------------------
-- Sequence Settings
------------------------------------------------------

SWEP.SeqPrimaryEmpty = nil
SWEP.SeqPrimarySupp = nil

SWEP.SeqPrimary = nil
SWEP.SeqPrimary1 = nil
SWEP.SeqPrimary2 = nil
SWEP.SeqPrimary3 = nil
SWEP.SeqPrimary4 = nil
SWEP.SeqPrimary5 = nil
SWEP.SeqPrimary6 = nil
SWEP.SeqPrimary7 = nil
SWEP.SeqPrimary8 = nil

SWEP.SeqDeployedFire = nil
SWEP.SeqDeployedFire1 = nil
SWEP.SeqDeployedFire2 = nil
SWEP.SeqDeployedFire3 = nil
SWEP.SeqDeployedFire4 = nil
SWEP.SeqDeployedFire5 = nil
SWEP.SeqDeployedFire6 = nil
SWEP.SeqDeployedFire7 = nil
SWEP.SeqDeployedFire8 = nil

SWEP.SeqDeploy = nil
SWEP.SeqDeploy1 = nil
SWEP.SeqDeploy2 = nil
SWEP.SeqDeploy3 = nil
SWEP.SeqDeploy4 = nil
SWEP.SeqDeploy5 = nil
SWEP.SeqDeploy6 = nil
SWEP.SeqDeploy7 = nil
SWEP.SeqDeploy8 = nil

SWEP.SeqIdleDeployed = nil
SWEP.SeqIdleDeployed1 = nil
SWEP.SeqIdleDeployed2 = nil
SWEP.SeqIdleDeployed3 = nil
SWEP.SeqIdleDeployed4 = nil
SWEP.SeqIdleDeployed5 = nil
SWEP.SeqIdleDeployed6 = nil
SWEP.SeqIdleDeployed7 = nil
SWEP.SeqIdleDeployed8 = nil

SWEP.SeqUnDeploy = nil
SWEP.SeqUnDeploy1 = nil
SWEP.SeqUnDeploy2 = nil
SWEP.SeqUnDeploy3 = nil
SWEP.SeqUnDeploy4 = nil
SWEP.SeqUnDeploy5 = nil
SWEP.SeqUnDeploy6 = nil
SWEP.SeqUnDeploy7 = nil
SWEP.SeqUnDeploy8 = nil

SWEP.SeqIdleUnDeployed = nil
SWEP.SeqIdleUnDeployed1 = nil
SWEP.SeqIdleUnDeployed2 = nil
SWEP.SeqIdleUnDeployed3 = nil
SWEP.SeqIdleUnDeployed4 = nil
SWEP.SeqIdleUnDeployed5 = nil
SWEP.SeqIdleUnDeployed6 = nil
SWEP.SeqIdleUnDeployed7 = nil
SWEP.SeqIdleUnDeployed8 = nil

SWEP.SeqReloadDeployed = nil

SWEP.SeqSecondary = nil

SWEP.SeqIdle = nil
SWEP.SeqIdleEmpty = nil
SWEP.SeqIdleEmptyLeft = nil
SWEP.SeqIdleSupp = nil
SWEP.SeqIdleM203 = nil

SWEP.SeqIronIn = nil
SWEP.SeqIronInSupp = nil
SWEP.SeqIronInEmpty = nil
SWEP.SeqIronInEmptySupp = nil
SWEP.SeqIronOut = nil
SWEP.SeqIronOutSupp = nil
SWEP.SeqIronOutEmpty = nil
SWEP.SeqIronOutEmptySupp = nil
SWEP.SeqIronIdle = nil
SWEP.SeqIronIdleSupp = nil
SWEP.SeqIronIdleEmpty = nil
SWEP.SeqIronIdleEmptySupp = nil
SWEP.SeqIronPrimary = nil
SWEP.SeqIronPrimarySupp = nil
SWEP.SeqIronPrimaryEmpty = nil
SWEP.SeqIronPrimaryEmptySupp = nil
SWEP.SeqIronPrimaryLast = nil
SWEP.SeqIronPrimaryLastSupp = nil

SWEP.SeqIronMode = nil
SWEP.SeqIronModeSupp = nil
SWEP.SeqIronModeEmpty = nil
SWEP.SeqIronModeEmptySupp = nil

SWEP.SeqMode = nil
SWEP.SeqModeSupp = nil
SWEP.SeqModeEmpty = nil
SWEP.SeqModeEmptySupp = nil

SWEP.SeqShootLast = nil
SWEP.SeqShootLastSupp = nil --"shootlast"

SWEP.SeqHolster = nil
SWEP.SeqHolsterM203 = nil

SWEP.SeqReload = nil --"reload"
SWEP.SeqReloadEmpty = nil --"reload_empty"
SWEP.SeqReloadSupp = nil --"reload_silenced"
SWEP.SeqReloadM203 = nil --"reload_m203"
SWEP.SeqReloadStart = nil --"reload_start"
SWEP.SeqReloadLoop = nil --"reload_loop"
SWEP.SeqReloadEnd = nil --"reload_end"

SWEP.SeqDraw = nil --"draw"
SWEP.SeqDrawEmpty = nil --"draw_empty"
SWEP.SeqDrawSupp = nil --"draw_silenced"
SWEP.SeqDrawDeployed = nil
SWEP.SeqDraw203 = nil

SWEP.SeqIdleToLow = nil --"idletolow"
SWEP.SeqLowIdle = nil --"lowidle"
SWEP.SeqLowToIdle = nil --"lowtoidle"

SWEP.SeqHitCenter = nil
SWEP.SeqHitCenter2 = nil
SWEP.SeqHitLeft = nil
SWEP.SeqHitLeft2 = nil
SWEP.SeqHitRight = nil
SWEP.SeqHitRight2 = nil
SWEP.SeqMissCenter = nil
SWEP.SeqMissCenter2 = nil
SWEP.SeqMissLeft = nil
SWEP.SeqMissLeft2 = nil
SWEP.SeqMissRight = nil
SWEP.SeqMissRight2 = nil

SWEP.SeqShotgunPump = nil
SWEP.SeqPullPin = nil
SWEP.SeqThrow = nil

SWEP.SeqSuppOn = nil --"add_suppressor"
SWEP.SeqSuppOff = nil --"detach_suppressor"

------------------------------------------------------
--	Custom Sounds									
--	Setup sounds here!
------------------------------------------------------

SWEP.Sounds = {
	["Primary"] = Sound( "Weapon_SMG1.Single" ) , -- (String) Primary shoot sound
	["PrimarySup"] = Sound( "Weapon_SMG1.Special1" ) , -- (String) Primary suppressed shoot sound
	["PrimaryDry"] = Sound( "Weapon_SMG1.Special2" ) , -- (String) Primary dry fire sound
	["PrimaryLastSound"] = Sound( "common/null.wav" ) , -- (String) Sound that plays when the last round is fired, I.E. M1 Garand's PING! sound
	["GrenadeLauncher"] = Sound( "Weapon_SMG1.Double" ) , -- (String) Grenade launcher sound
	["Reload"] = Sound( "common/null.wav" ) ,-- (String) Reload sound
	["ShotgunReloadStart"] = Sound( "common/null.wav" ) , -- (String) Foley sound for ACT_SHOTGUN_RELOAD_START if the model doesn't have one defined internally
	["ShotgunShellInsert"] = Sound( "common/null.wav" ) , -- (String) Shell insert sound for ACT_VM_RELOAD if the model doesn't have one defined internally
	["ShotgunReloadEnd"] = Sound( "common/null.wav" ) , -- (String) Foley sound for ACT_SHOTGUN_RELOAD_FINISH if the model doesn't have one defined internally
	["ShotgunPump"] = Sound( "common/null.wav" ) , -- (String) Pump sound for ACT_SHOTGUN_PUMP if the model doesn't have one defined internally
	["JamSmallPistol"] = Sound( "Jam.Short.Pistol" ) , -- (String) Little jam sound for pistols
	["JamLargePistol"] = Sound( "Jam.Long.Pistol" ) , -- (String) Big jam sound for pistols
	["JamSmall"] = Sound( "Jam.Short.Rifle" ) , -- (String) Little jam sound for everything else
	["JamLarge"] = Sound( "Jam.Long.Rifle" ) , -- (String) Big jam sound for everything else
	["IronsightIn"] = Sound( "BF3.Weapons.Ironsights" ) , -- (String) Sound for going into steel sight
	["IronsightOut"] = Sound( "BF3.Weapons.Ironsights" ) , -- (String) Sound for going out of steel sight
	["WhipHitCharacter"] = Sound( "VNTCB.SWep.Melee.WhipHit" ) , -- (String) Sound for pistol whip hits
	["WhipHitWall"] = Sound( "VNTCB.SWep.Melee.WhipHit" ) , -- (String) Sound for pistol whip hits
	["WhipMiss"] = Sound( "VNTCB.SWep.Melee.WhipMiss" ) , -- (String) Sound for pistol whip misses
	["MeleeHitWall"] = Sound( "VNTCB.SWep.Melee.HitWall" ) , -- (String) Sound for melee world hits
	["MeleeHitCharacteracter"] = Sound( "VNTCB.SWep.Melee.HitFlesh" ) , -- (String) Sound for melee flesh hits
	["MeleeMiss"] = Sound( "VNTCB.SWep.Melee.Slash" ) , -- (String) Sound for melee misses
	["ZoomIn"] = Sound( "VNTCB.SWep.ZoomIn" ) , -- (String) Sound used when zooming into a scope
	["ZoomOut"] = Sound( "VNTCB.SWep.ZoomOut" ) , -- (String) Sound used when zooming out of a scope
	["CycleZoomIn"] = Sound( "VNTCB.SWep.ZoomCycleIn" ) , -- (String) Sound used when cycling the zoom level of a scope
	["CycleZoomOut"] = Sound( "VNTCB.SWep.ZoomCycleOut" ) , -- (String) Sound used when cycling the zoom level of a scope
	["Draw"] = Sound( "BF3.Weapons.GenericDeploy" ) , -- (String) Sound played when drawing the weapon
	["Holster"] = Sound( "BF3.Weapons.GenericDeploy" ) , -- (String) Sound played when drawing the weapon
	["Throw"] = Sound( "VNT.SWep.Throw1" ) , -- (String) Sound played when Throwing away
	["FiringPinPistol"] = Sound( "VNTCB.SWep.Empty6" ) , -- (String) Sound played for pistols when the firing pin hits the chamber
	["FiringPin"] = Sound( "BF3.Weapons.TriggerClick" ) , -- (String) Sound played for everything else when the firing pin hits the chamber
	["ModeSemiUS"] = Sound( "BF3.Weapons.FireMode.US.Semi" ) , -- (String) Semi-Mode selector switch sound
	["ModeBurstUS"] = Sound( "BF3.Weapons.FireMode.US.Burst" ) , -- (String) Burst-Mode selector switch sound
	["ModeAutoUS"] = Sound( "BF3.Weapons.FireMode.US.Auto" ) , -- (String) Auto-Mode selector switch sound
	["ModeSafetyUS"] = Sound( "BF3.Weapons.FireMode.US.Safety" ) , -- (String) Safety-Mode selector switch sound
	["ModeSemiRU"] = Sound( "BF3.Weapons.FireMode.RU.Semi" ) , -- (String) Semi-Mode selector switch sound
	["ModeBurstRU"] = Sound( "BF3.Weapons.FireMode.RU.Burst" ) , -- (String) Burst-Mode selector switch sound
	["ModeAutoRU"] = Sound( "BF3.Weapons.FireMode.RU.Auto" ) , -- (String) Auto-Mode selector switch sound
	["ModeSafetyRU"] = Sound( "BF3.Weapons.FireMode.RU.Safety" ) , -- (String) Safety-Mode selector switch sound

	["SonicBoom"] = Sound( "BF3.BulletCraft.FlyBy.SonicBoom" ) , -- (String)
	["SonicBoom_Sup"] = Sound( "BF3.BulletCraft.FlyBy.SonicBoom.Suppressed" ) , -- (String)
	["Noise_Close"] = Sound( "BF3.BulletCraft.Noise.Rifle.Close" ) , -- (String)
	["Noise_Close_Sup"] = Sound( "BF3.BulletCraft.Noise.Suppressed.Close" ) , -- (String)
	["Noise_Distant"] = Sound( "BF3.BulletCraft.Noise.Forest.Distant" ) , -- (String)
	["Noise_Far"] = Sound( "BF3.BulletCraft.Noise.Forest.Far" ) , -- (String)
	["CoreBass_Close"] = Sound( "BF3.BulletCraft.CoreBass.Close.OneShot_1" ) , -- (String)
	["CoreBass_Distant"] = Sound( "BF3.BulletCraft.CoreBass.Distant.OneShot_1" ) , -- (String)
	["HiFi"] = Sound( "BF3.BulletCraft.HiFi.M4" ) , -- (String)
	["Reflection_Close"] = Sound( "BF3.BulletCraft.Reflection.Forest.Close" ) , -- (String)
	["Reflection_Far"] = Sound( "BF3.BulletCraft.Reflection.Forest.Far" ) , -- (String)
	["LFE"] = Sound( "BF3.BulletCraft.LFE" ) , -- (String)

}

SWEP.ReloadSNDDelay = 0 -- (Float) Reload sound delay
SWEP.SelectorSwitchSNDType = 1 -- (Integer) 1=US , 2=RU
SWEP.UsesSuperSonicAmmo = true -- (Boolean) Is the weapon using supersonic or subsonic ammo?

------------------------------------------------------
--	Ironsight & Run Positions						
--	Set our model transforms for running and ironsights
------------------------------------------------------
SWEP.IronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Transform
SWEP.IronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Rotation
SWEP.StockIronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Unfolded Stock Ironsight XYZ Transform
SWEP.StockIronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Unfolded Stock Ironsight XYZ Rotation
SWEP.RunArmOffset = Vector( 0 , -0 , 1.5 ) -- (Vector) Sprinting XYZ Transform
SWEP.RunArmAngle = Vector( -35 , -3 , 0 ) -- (Vector) Sprinting XYZ Rotation

------------------------------------------------------
--	Setup
------------------------------------------------------
SWEP.DisableDuplicator = true
SWEP.FirstDraw = GetConVarNumber( "VNT_Base_SWep_DrawToggle" )
SWEP.LauncherLoaded = false
SWEP.FiringPinForward = false
SWEP.LauncherPinForward = false
SWEP.ActionDelay = CurTime()
SWEP.PistolPunchesX = { -0.6 , -0.5 , -0.4 , -0.3 , 0.3 , 0.4 , 0.5 , 0.6 }
SWEP.PistolPunchesY = { -1 , -0.9 , -0.8 , -0.7 , -0.6 , -0.5 , -0.4 }
SWEP.RiflePunchesX = { -0.6 , -0.5 , -0.4 , -0.3 , 0.3 , 0.4 , 0.5 , 0.6 }
SWEP.RiflePunchesY = { -0.7 , -0.6 , -0.5 , -0.4 }

if CLIENT then
	
	-- Put this line in your child SWep

	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
	--killicon.Add( SWEP.WeaponEntityName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
	killicon.Add( SWEP.GrenadeLauncherEntity , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )

	function SWEP:CustomDrawHUD( )
	end --	Draw your own custom stuff here
	
elseif SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )
	
end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:CustomInitialize( )

	self.HoldMeRight = VNTCB.HoldType.Rifle -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua

end

function SWEP:CustomReload( )
	-- Custom function for child SWeps
end

function SWEP:CustomThink( ) --	Called every frame for custom stuff
--	Used in child SWeps
end

function SWEP:CustomHolster( )
	-- Custom function for child SWeps
end

function SWEP:CustomDeploy( )
	-- Custom function for child SWeps
end

------------------------------------------------------
------------------------------------------------------
--	Nothing beyond this needs to be included		--
------------------------------------------------------
------------------------------------------------------
SWEP.Primary.Automatic = false  -- (Boolean) Is the primary fire automatic or semi-auto?
SWEP.Secondary.Automatic = false  -- (Boolean) Is the Secondary fire automatic or semi-auto?

SWEP.BurstShots = ( SWEP.BurstCount + 1 ) -- (Integer) Don't touch
SWEP.BurstCounter = 0 -- (Integer) Don't touch
SWEP.BurstTimer = 0 -- (Integer) Don't touch

SWEP.UseWorldAnimations = true -- (Boolean) Enable dynamic hold types
SWEP.HasFiredFirstBeltLink = false -- (Boolean) Have we fired the first belt link? Don't Touch!
SWEP.IsCloseZoomed = false -- (Boolean) Don't touch
SWEP.ZoomAmount = nil -- (Float) Don't Touch
SWEP.SmallJamDuration = 2 -- (Integer) Don't Touch
SWEP.LargeJamDuration = 5 -- (Integer) Don't Touch

SWEP.HasFiredFirstBeltLink = false -- (Boolean) Don't touch

function SWEP:addSounds()

	self.sounds = {}
	
	for name, value in pairs(self.Sounds) do
	
		if name != "BaseClass" then
		
			sound.Add(
				{
					["name"] = "VNT."..self.ClassName.."."..name ,
					["channel"] = CHAN_STATIC ,
					["soundlevel"] = math.random( 98 , 102 ) ,
					["pitch"] = math.random( 95 , 100 ) ,
					["sound"] = value ,
				}
			)
			
			self.sounds[name] = CreateSound(self, "VNT."..self.ClassName.."."..name)

			if name == "Primary" then

				self.sounds[name]:SetSoundLevel( math.random( 117 , 123 ) )
				
			elseif name == "PrimarySup" then

				self.sounds[name]:SetSoundLevel( math.random( 68 , 72 ) )

			end

		end
	end
end

function SWEP:Initialize( )

	self:CustomInitialize( )
	--self:AddBulletCraftSounds()

	self:addSounds( )
	
	--self.Owner:ShouldDropWeapon( true ) --	(Boolean) Drop on death

	self.ActionDelay = ( CurTime( ) + 0.25 )

	if self.WeaponType == VNTCB.WeaponType.GLauncher then
		self:Set_IsGrenadeLauncherLoaded( true )
		self.LauncherPinForward = false
	end

end --	Called when the weapon is first loaded

function SWEP:SetupDataTables( )
	self:NetworkVar( "Bool" , 0 , "_IsHolstered" ) --	Holstered
	self:NetworkVar( "Bool" , 1 , "_IsSuppressorAttached" ) --	Suppressed
	self:NetworkVar( "Bool" , 2 , "_IsInIronSights" ) --	Ironsights
	self:NetworkVar( "Bool" , 3 , "_IsInScope" ) --	Scoped
	self:NetworkVar( "Bool" , 4 , "_HasSmallJam" ) --	Little Jam
	self:NetworkVar( "Bool" , 5 , "_HasLargeJam" ) --	Big Jam
	self:NetworkVar( "Bool" , 7 , "_IsBipodDeployed" ) --	Bipod
	self:NetworkVar( "Bool" , 8 , "_IsGrenadeLauncherDeployed" ) --	Grenade Launcher
	self:NetworkVar( "Bool" , 9 , "_IsGrenadeLauncherLoaded" ) --	GL is Loaded
	self:NetworkVar( "Bool" , 11 , "_IsShotgunReloading" ) --	Shotgun is reloading
	self:NetworkVar( "Bool" , 12 , "_IsStockExtended" ) -- Shotgun is reloading
	self:NetworkVar( "Bool" , 13 , "_HasRoundInChamber" ) -- Round in the chamber
	self:NetworkVar( "Bool" , 14 , "_IsReloading" ) -- Is reloading
	self:NetworkVar( "Bool" , 15 , "_DoomMode" ) -- E1M1
	self:NetworkVar( "Bool" , 16 , "_HasSmallJamLeft" ) --	Little Jam
	self:NetworkVar( "Bool" , 17 , "_HasLargeJamLeft" ) --	Big Jam
	self:NetworkVar( "Bool" , 18 , "_IsGenericDeployed" ) --	Deployed
	self:NetworkVar( "Bool" , 19 , "_IsLaserAttached" ) --	Laser Pointer
	self:NetworkVar( "Bool" , 20 , "_IsChambering" ) --	Laser Pointer
	self:NetworkVar( "Float" , 0 , "_HolsterTime" ) --	Holster time delay
	self:NetworkVar( "Float" , 1 , "_ZoomAmount" ) --	Zoom
end --	Setup our networked shit

if CLIENT then

	SWEP.WepSelectIconFallBack = Material( "jessev92/insmic/default_weapon.png" , "unlitgeneric" )

	SWEP.DrawWeaponInfoBox = true
	SWEP.BounceWeaponIcon = false
	SWEP.DrawAmmo = true
	SWEP.DrawCrosshair = false
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
		
	function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha )
		
		-- Set us up the texture
		surface.SetDrawColor( 255, 255, 255, alpha )
		if self.WepSelectIcon != nil then
		
			--if self.HUDIconIsPNG then
				--surface.SetMaterial( self.WepSelectIcon , "unlitgeneric" )
			--else
				surface.SetTexture( self.WepSelectIcon )
			--end
		else
		
			surface.SetMaterial( self.WepSelectIconFallBack )

		end
		
		-- Lets get a sin wave to make it bounce
		local fsin = 0
		
		--if ( self.BounceWeaponIcon ) then end
		
		-- Borders
		y = y + 10
		x = x + 10
		wide = wide - 20
		
		-- Draw that mother
		surface.DrawTexturedRect( x + (fsin), y - (fsin),  wide-fsin*2 , ( wide / 2 ) + (fsin) )
		
		-- Draw weapon info box
		self:PrintWeaponInfo( x + wide + 20, y + tall * 0.95, alpha )
		
	end

	--[[
	function SWEP:PrintWeaponInfo( x, y, alpha )

		--if ( self.DrawWeaponInfoBox == false ) then return end

		if (self.InfoMarkup == nil ) then
			local str
			local title_color = "<color=230,230,230,255>"
			local text_color = "<color=150,150,150,255>"
			
			str = "<font=HudSelectionText>"
			if ( self.Author != "" ) then str = str .. title_color .. "Author:</color>\t"..text_color..self.Author.."</color>\n" end
			if ( self.Contact != "" ) then str = str .. title_color .. "Contact:</color>\t"..text_color..self.Contact.."</color>\n\n" end
			if ( self.Purpose != "" ) then str = str .. title_color .. "Purpose:</color>\n"..text_color..self.Purpose.."</color>\n\n" end
			if ( self.Instructions != "" ) then str = str .. title_color .. "Instructions:</color>\n"..text_color..self.Instructions.."</color>\n" end
			str = str .. "</font>"
			
			self.InfoMarkup = markup.Parse( str, 250 )
		end
		
		surface.SetDrawColor( 60, 60, 60, alpha )
		surface.SetTexture( self.SpeechBubbleLid )
		
		surface.DrawTexturedRect( x, y - 64 - 5, 128, 64 ) 
		draw.RoundedBox( 8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, Color( 60, 60, 60, alpha ) )
		
		self.InfoMarkup:Draw( x+5, y+5, nil, nil, alpha )
		
	end
	--]]

	local IronsightToggleTime = 0.3

	-----------------------------------------------------------
	--	SWEP:DrawHUD()
	--	You can draw to the HUD here. It will only draw when
	--		the client has the weapon deployed.
	-----------------------------------------------------------
	function SWEP:DrawHUD( )
		
		--	Custom function for children
		self:CustomDrawHUD( )

		if self.ScopeType == 1 and not self.HasRTScope then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			local SWid = surface.ScreenWidth( )
			local SHei = surface.ScreenHeight( )
			local ScMat = self.ScopeMaterial
			local TEX_REDDOT = surface.GetTextureID( "jessev92/ui/scope/crosshair_reddot" )
			local TEX_EOTECH = surface.GetTextureID( "jessev92/ui/scope/crosshair_eotech" )
			local TEX_ACOG = surface.GetTextureID( "jessev92/ui/scope/crosshair_acog" )
			local TEX_SVD = surface.GetTextureID( "jessev92/ui/scope/crosshair_svd" )
			local TEX_M14 = surface.GetTextureID( "jessev92/ui/scope/crosshair_m14" )
			local TEX_L42A1 = surface.GetTextureID( "jessev92/ui/scope/crosshair_l42a1" )
			local TEX_PSG1 = surface.GetTextureID( "jessev92/ui/scope/crosshair_psg1" )
			local TEX_GERMAN = surface.GetTextureID( "jessev92/ui/scope/crosshair_german" )

			if self:Get_IsInScope( ) then

				local SWid 	= surface.ScreenWidth()
				local SHei 	= surface.ScreenHeight()

				local SCOPEFADE_TIME = 0.4

				if self:Get_IsInScope( ) ~= self.bLastScope then // Are we turning the scope off/on?
					self.bLastScope = self:Get_IsInScope( )
					self.ScopeFadeTime = CurTime()
				elseif self:Get_IsInScope( ) then
					local fScopeZoom = self.Weapon:GetNetworkedFloat("ScopeZoom")

					if fScopeZoom ~= self.fLastScopeZoom then // Are we changing the scope zoom level?
				
						self.fLastScopeZoom = fScopeZoom
						self.ScopeFadeTime = CurTime()
					end
				end
					
				local ScopeFadeTime = self.ScopeFadeTime or 0

				if ScopeFadeTime > CurTime() - SCOPEFADE_TIME then
				
					local Mul = 1.0 -- This scales the alpha
					Mul = 1 - math.Clamp((CurTime() - ScopeFadeTime) / SCOPEFADE_TIME, 0, 1)
				
					surface.SetDrawColor(0, 0, 0, 255 * Mul) // Draw a black rect over everything and scale the alpha for a neat fadein effect
					surface.DrawRect(0, 0, SWid,SHei)
				end

				if (self:Get_IsInScope( )) then 

					// Put the texture
					surface.SetDrawColor(0, 0, 0, 255)
				
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

					-- Shamelessly borrowing this math from Siminov because I barely scraped through math in school
					
					self.ScopeScale = 0.5
					
					local SWid 	= surface.ScreenWidth()
					local SHei 	= surface.ScreenHeight()

					self.ScopeTable 		= {}
					self.ScopeTable.l 	= (SHei + 1) * self.ScopeScale

					self.QuadTable 		= {}
					self.QuadTable.x1 	= 0
					self.QuadTable.y1 	= 0
					self.QuadTable.w1 	= SWid
					self.QuadTable.h1 	= 0.5 * SHei - self.ScopeTable.l
					self.QuadTable.x2 	= 0
					self.QuadTable.y2 	= 0.5 * SHei + self.ScopeTable.l
					self.QuadTable.w2 	= self.QuadTable.w1
					self.QuadTable.h2 	= self.QuadTable.h1
					self.QuadTable.x3 	= 0
					self.QuadTable.y3 	= 0
					self.QuadTable.w3 	= 0.5 * SWid - self.ScopeTable.l
					self.QuadTable.h3 	= SHei
					self.QuadTable.x4 	= 0.5 * SWid + self.ScopeTable.l
					self.QuadTable.y4 	= 0
					self.QuadTable.w4 	= self.QuadTable.w3
					self.QuadTable.h4 	= self.QuadTable.h3

					// Fill in everything else
					surface.SetDrawColor(0, 0, 0, 255)
					surface.DrawRect(self.QuadTable.x1 - 2.5, self.QuadTable.y1 - 2.5, self.QuadTable.w1 + 5, self.QuadTable.h1 + 5)
					surface.DrawRect(self.QuadTable.x2 - 2.5, self.QuadTable.y2 - 2.5, self.QuadTable.w2 + 5, self.QuadTable.h2 + 5)
					surface.DrawRect(self.QuadTable.x3 - 2.5, self.QuadTable.y3 - 2.5, self.QuadTable.w3 + 5, self.QuadTable.h3 + 5)
					surface.DrawRect(self.QuadTable.x4 - 2.5, self.QuadTable.y4 - 2.5, self.QuadTable.w4 + 5, self.QuadTable.h4 + 5)
				end				

			end

		end

		--	Force Multipliers
		
		local SizeX = ScreenScale( 40 )
		local SizeY = ScreenScale( 40 )

		--	Stances
		local TEX_Standing = Material( "jessev92/ui/icons/stance_stand.png" , "UnlitGeneric" )
		local TEX_Crouch = Material( "jessev92/ui/icons/stance_crouch.png" , "UnlitGeneric" )
		local TEX_Prone = Material( "jessev92/ui/icons/stance_prone.png" , "UnlitGeneric" )
		local SizeStanceX, SizeStanceY = 256 , 256
		local PosStanceX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_StanceX" ) ) - SizeStanceX/2 )
		local PosStanceY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_StanceY" ) ) - SizeStanceY/2 )
		
		--	Stance HUD elements
		
		if prone and self.Owner:IsProne() then 
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Prone )
			surface.DrawTexturedRect( GetConVarNumber( "VNT_Base_SWep_HUD_StanceX" ) , GetConVarNumber( "VNT_Base_SWep_HUD_StanceY" ) , SizeX , SizeY )
		elseif self.Owner:Crouching() then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Crouch )
			surface.DrawTexturedRect( GetConVarNumber( "VNT_Base_SWep_HUD_StanceX" ) , GetConVarNumber( "VNT_Base_SWep_HUD_StanceY" ) , SizeX , SizeY )
		else
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Standing )
			surface.DrawTexturedRect( GetConVarNumber( "VNT_Base_SWep_HUD_StanceX" ) , GetConVarNumber( "VNT_Base_SWep_HUD_StanceY" ) , SizeX , SizeY )
		end

		--	Deployables
		
		local SizeDeployX, SizeDeployY = 128 , 128
		local TEX_Bipod = Material( "jessev92/ui/insmic/bipod.png" , "UnlitGeneric" )
		local PosBipodX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_BipodX" ) ) - SizeDeployX/2 )
		local PosBipodY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_BipodY" ) ) - SizeDeployY/2 )
		local TEX_Cache = Material( "jessev92/ui/insmic/cache.png" , "UnlitGeneric" )
		local PosGLMX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_GLMX" ) ) - SizeDeployX/2 )
		local PosGLMY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_GLMY" ) ) - SizeDeployY/2 )

		if self:Get_IsGrenadeLauncherDeployed( ) then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Cache )
			surface.DrawTexturedRect( PosGLMX , PosGLMY , SizeX , SizeY )
		end

		if self:Get_IsBipodDeployed( ) then
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.SetMaterial( TEX_Bipod )
			surface.DrawTexturedRect( PosBipodX , PosBipodY , SizeX , SizeY )
		end
	
		local SizeStockX, SizeStockY = 128 , 64
		local PosStockX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_StockX" ) ) - SizeStockX/2 )
		local PosStockY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_StockY" ) ) - SizeStockY/2 )
		local TEX_StockIn = Material( "jessev92/ui/icons/stock_in.png" , "UnlitGeneric" )
		local TEX_StockOut = Material( "jessev92/ui/icons/stock_out.png" , "UnlitGeneric" )
		
		if self.DeployableType == 4 or self.DeployableType == 5 then
			if self:Get_IsStockExtended( ) or self:Get_IsGenericDeployed( ) then
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
		local PosSuppX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_SuppX" ) ) - SizeSuppX/2 )
		local PosSuppY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_SuppY" ) ) - SizeSuppY/2 )

		if self.SuppressorType != 0 then
			if self:Get_IsSuppressorAttached( ) then
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
		local PosFMSemiX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" ) ) - SizeFMSemiX/2 )
		local PosFMSemiY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" ) ) - SizeFMSemiY/2 )
		
		--	Burst
		
		local TEX_Burst = Material( "jessev92/ui/icons/fm_burst.png" , "UnlitGeneric" )
		local SizeFMBurstX, SizeFMBurstY = 150 , 32
		local PosFMBurstX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" ) ) - SizeFMBurstX/2 )
		local PosFMBurstY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" ) ) - SizeFMBurstY/2 )
		
		--	Auto
		
		local TEX_Auto = Material( "jessev92/ui/icons/fm_auto.png" , "UnlitGeneric" )
		local SizeFMAutoX, SizeFMAutoY = 200 , 32
		local PosFMAutoX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" ) ) - SizeFMAutoX/2 )
		local PosFMAutoY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" ) ) - SizeFMAutoY/2 )
		
		--	Special
		
		local TEX_Special = Material( "jessev92/ui/icons/fm_auto.png" , "UnlitGeneric" )
		local SizeFMAutoX, SizeFMAutoY = 200 , 32
		local PosFMAutoX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" ) ) - SizeFMAutoX/2 )
		local PosFMAutoY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" ) ) - SizeFMAutoY/2 )
		
		-- Safety
		
		local TEX_Safe = Material( "jessev92/ui/icons/fm_safety.png" , "UnlitGeneric" )
		local SizeFMSafeX, SizeFMSafeY = 75 , 32
		local PosFMSafeX = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFX" ) ) - SizeFMSafeX/2 )
		local PosFMSafeY = ( ( GetConVarNumber( "VNT_Base_SWep_HUD_RoFY" ) ) - SizeFMSafeY/2 )
		
		if self:Get_IsHolstered( ) == false and ( self.WeaponType != 1 or self.WeaponType != 9 ) then
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
			elseif self.HasSpecialFireMode[1] and self.CurrentMode == 4 then
				--	If in auto mode then
				surface.SetMaterial( TEX_Special )
				surface.SetDrawColor( 255 , 255 , 255 , 255 )
				surface.DrawTexturedRect( PosFMAutoX , PosFMAutoY , SizeFMAutoX , SizeFMAutoY )
			end
		else
			--	If Safety'd then
			surface.SetMaterial( TEX_Safe )
			surface.SetDrawColor( 255 , 255 , 255 , 255 )
			surface.DrawTexturedRect( PosFMSafeX , PosFMSafeY , SizeFMSafeX , SizeFMSafeY )
		end

		return true
	end

	----------------------------------------------------------
	--	SWEP:GetViewModelPosition() 						--	Allows you to re-position the view model.
	----------------------------------------------------------
	--[[
	function SWEP:GetViewModelPosition( pos , ang )

		--	Set constants
		
		local IronToggleTime = 0.3
		
		local Holstered = self:Get_IsHolstered( )
		local Ironsighted = self:Get_IsInIronSights( )
		local Scoped = self:Get_IsInScope( )
		local StockOut = self:Get_IsStockExtended( )
		local DoomMode = self:Get_DoomMode( )

		local AnimDelta = 0
		local AnimStartTime = RealFrameTime( )
		local AnimEndTime = RealFrameTime( )
		local AnimIronTransTime = 0.3
		local AnimRunTransTime = 0.5

		local ZeroPos = Vector( 0 , 0 , 0 )
		local ZeroAng = Angle( 0 , 0 , 0 )
		local DoomPosOffset = Vector( 0 , 5 , -3 )
		local MoveForwardPos = Vector( -3 , 0 , 0 )
		local MoveBackPos = Vector( -5 , 0 , 0 )
		local MoveLeftPos = Vector( 0 , 2 , 10 )
		local MoveRightPos = Vector( 0 , -2 , -10 )
		
		local RunPos = self.RunArmOffset or ZeroPos
		local RunAng = self.RunArmAngle or ZeroPos
		local IronPos = self.IronSightsPos or ZeroPos
		local IronAng = self.IronSightsAng or ZeroPos
		local StockPos = self.StockIronSightsPos or ZeroPos
		local StockAng = self.StockIronSightsAng or ZeroPos
		local DoomPos = DoomPosOffset or ZeroPos
		local PosMul = 1
		local Forward = ang:Forward( ) or ZeroPos.x
		local Right = ang:Right( ) or ZeroPos.y
		local Up = ang:Up( ) or ZeroPos.z
		
		--	Set the sway and bobbing values

		local ViewBobMul = 1.0
		
		local CurrentSway = 1
		local CurrentBob = 1

		local SwayLerp = 2
		local BobLerp = 1
		
		local SwayLerpIron = 0.5
		local BobLerpIron = 0.5
		
		local SwayLerpScoped = 0.1
		local BobLerpScoped = 0.25
		
		local SwayLerpSprinting = 3
		local BobLerpSprinting = 2
		
		local SwayLerpIronSprinting = 1.5
		local BobLerpIronSprinting = 1.5
		
		local SwayLerpScopedSprinting = 1.1
		local BobLerpScopedSprinting = 1.25
	
		local SwayLerpDoom = 0
		local BobLerpDoom = 5

		--	Set some randomized ["pitch"] angles
		local PitchAngs = {
			-0.3,
			-0.2,
			-0.1,
			0.1,
			0.2,
			0.3,	
		}
		
		--	Set some randomized roll angles
		local RollAngs = {
			0.2,
			0.15,
			0.1,
			-0.1,
			-0.15,
			-0.2,
		}

		local MTDampT = {}
		local function MTDamp(id, val, speed) -- dampens a variable by dividing its delta
			if(MTDampT[id] == nil) then
				MTDampT[id] = 0
			end
				
			local tickdmul = 33/(1/engine.TickInterval()) -- make sure speeds are consistent across tickrates, base is 33
			
			local tickdamp = MTDampT[id]
			tickdamp = tickdamp + ((val-tickdamp) / (speed * tickdmul))
			MTDampT[id] = tickdamp
			return MTDampT[id]
			
		end	
		
		local MTDeltaT = {}
		local function MTDelta(id, val) -- gets the delta of a variable
			if(MTDeltaT[id] == nil) then
				MTDeltaT[id] = 0
			end
			
			local lastval = MTDeltaT[id]
			local delta = val - lastval
			MTDeltaT[id] = val
			
			return delta, lastval -- return lastval incase you need to use the last executions value instead, like when jumping from two sides of an angle
			
		end
		
		--	If we're not in Doom mode then
		if not DoomMode then

			--	Create these for use
			local MoveOffsetForwardBack = nil
			local MoveOffsetLeftRight = nil

			--	Set the vector for forward/back
			if self.Owner:KeyDown( IN_FORWARD ) then
				MoveOffsetForwardBack = MoveForwardPos
			elseif self.Owner:KeyDown( IN_BACK ) then
				MoveOffsetForwardBack = MoveBackPos
			else
				MoveOffsetForwardBack = ZeroPos
			end
			
			--	Set the vector for left/right
			if self.Owner:KeyDown( IN_MOVELEFT ) then
				MoveOffsetLeftRight = MoveLeftPos
			elseif self.Owner:KeyDown( IN_MOVERIGHT ) then
				MoveOffsetLeftRight = MoveRightPos
			else
				MoveOffsetLeftRight = ZeroPos
			end
			
			--self.Owner:ChatPrint( tostring( MoveOffsetForwardBack ) )
			--self.Owner:ChatPrint( tostring( MoveOffsetLeftRight ) )

			--	If we're sprinting
			if GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) == 0 then
			
				if not self.Owner:KeyDown( IN_SPEED ) then
				
					--	If we're in iron sights, then
					if Ironsighted then
					
						--	If we're in the scope
						if Scoped then
						
							--	Set the sway when looking around
							self.SwayScale = SwayLerpScoped
							
							--	Set the bob when walking around
							self.BobScale = BobLerpScoped
							
						else
							
							--	Set the sway when looking around
							self.SwayScale = SwayLerpIron
							
							--	Set the bob when walking around
							self.BobScale = BobLerpIron

						end

						--	If our stock is in, and we're in iron sights
						if self:Get_IsStockExtended() or ( self.DeployedModeUsesStockIrons and self:Get_IsGenericDeployed( ) ) then
						
							--	Use the StockIronSightsAng and 
							ang = ang * 1
							ang:RotateAroundAxis( ang:Right( ) , self.StockIronSightsAng.x * PosMul * MoveOffsetForwardBack.x * MoveOffsetLeftRight.x )
							ang:RotateAroundAxis( ang:Up( ) , self.StockIronSightsAng.y * PosMul * MoveOffsetForwardBack.y * MoveOffsetLeftRight.y )
							ang:RotateAroundAxis( ang:Forward( ) , self.StockIronSightsAng.z * PosMul * MoveOffsetForwardBack.z * MoveOffsetLeftRight.z )

							--	Use the StockIronSightsPos values
							pos = pos + self.StockIronSightsPos.x * Right * PosMul
							pos = pos + self.StockIronSightsPos.y * Forward * PosMul
							pos = pos + self.StockIronSightsPos.z * Up * PosMul
							
							--	Debug
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Stock Folded Irons" ) end

						--	Else if the stock is extended/not valid and we need iron sights...
						else
						
							--	Use the IronSightsAng and 
							ang = ang * 1
							ang:RotateAroundAxis( ang:Right( ) , self.IronSightsAng.x * PosMul * MoveOffsetForwardBack.x * MoveOffsetLeftRight.x )
							ang:RotateAroundAxis( ang:Up( ) , self.IronSightsAng.y * PosMul * MoveOffsetForwardBack.y * MoveOffsetLeftRight.y )
							ang:RotateAroundAxis( ang:Forward( ) , self.IronSightsAng.z * PosMul * MoveOffsetForwardBack.z * MoveOffsetLeftRight.z )
							
							--	Use the IronSightsPos values
							pos = pos + self.IronSightsPos.x * Right * PosMul
							pos = pos + self.IronSightsPos.y * Forward * PosMul
							pos = pos + self.IronSightsPos.z * Up * PosMul
							
							--	Debug
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Normal Irons" ) end
							
						end
						
					--	Else we're not ironsighted
					else
						
						--	Set the sway when looking around
						self.SwayScale = 2
						
						--	Set the bob when walking around
						self.BobScale = 1

						--	Else we're normally moving		
						--	Use the MoveOffsetForwardBack and 
						ang = ang * 1
						ang:RotateAroundAxis( ang:Right( ) , PosMul * MoveOffsetForwardBack.x * MoveOffsetLeftRight.x )
						ang:RotateAroundAxis( ang:Up( ) , PosMul * MoveOffsetForwardBack.y * MoveOffsetLeftRight.y )
						ang:RotateAroundAxis( ang:Forward( ) , PosMul * MoveOffsetForwardBack.z * MoveOffsetLeftRight.z )
						
						--	Use the MoveOffsetForwardBack values
						pos = pos + Right * PosMul
						pos = pos + Forward * PosMul
						pos = pos + Up * PosMul

					end
					
				--	else we can't shoot n sprint and we're sprinting
				else

					--	Set our RunAng * PosMul
					ang = ang * 1
					ang:RotateAroundAxis( ang:Right( ) , ZeroPos.x * RunAng.x * PosMul )
					ang:RotateAroundAxis( ang:Up( ) , ZeroPos.y * RunAng.y * PosMul )
					ang:RotateAroundAxis( ang:Forward( ) , ZeroPos.z * RunAng.z * PosMul )
					
					--	Set our RunPos * PosMul
					pos = pos + RunPos.x * Right * PosMul
					pos = pos + RunPos.y * Forward * PosMul
					pos = pos + RunPos.z * Up * PosMul		
					
					--	Debug
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Sprinting" ) end

				end
			
			--	Else we can sprint and shoot
			else

				--	If we're in iron sights, then
				if Ironsighted then
				
					--	If we're in the scope
					if Scoped then
					
						--	Set the sway when looking around
						self.SwayScale = SwayLerpScopedSprinting
						
						--	Set the bob when walking around
						self.BobScale = BobLerpScopedSprinting
						
					else
						
						--	Set the sway when looking around
						self.SwayScale = SwayLerpSprinting
						
						--	Set the bob when walking around
						self.BobScale = BobLerpSprinting

					end
					
				--	Else we're not in iron sights
				else

					--	Set the sway when looking around
					self.SwayScale = SwayLerpSprinting
					
					--	Set the bob when walking around
					self.BobScale = BobLerpSprinting
					
				end

				local IronTime = IronTime or 0

				if (not Ironsighted and IronTime < CurTime() - IronToggleTime) then 
					return pos, ang
				end
				
				local PosMul = 1.0
				
				if (IronTime > CurTime() - IronToggleTime) then
					PosMul = math.Clamp((CurTime() - IronTime) / IronToggleTime, 0, 1)

					if (not Ironsighted) then PosMul = 1 - PosMul end
				end

				--	If our stock is in, and we're in iron sights
				if self:Get_IsStockExtended() then
				
					--	Use the StockIronSightsAng and 
					ang = ang * 1
					ang:RotateAroundAxis( ang:Right( ) , self.StockIronSightsAng.x * PosMu * MoveOffsetForwardBack.x * MoveOffsetLeftRight.x )
					ang:RotateAroundAxis( ang:Up( ) , self.StockIronSightsAng.y * PosMul * MoveOffsetForwardBack.y * MoveOffsetLeftRight.y )
					ang:RotateAroundAxis( ang:Forward( ) , self.StockIronSightsAng.z * PosMul * MoveOffsetForwardBack.z * MoveOffsetLeftRight.z )

					--	Use the StockIronSightsPos values
					pos = pos + self.StockIronSightsPos.x * Right * PosMul
					pos = pos + self.StockIronSightsPos.y * Forward * PosMul
					pos = pos + self.StockIronSightsPos.z * Up * PosMul
					
					--	Debug
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Stock Folded Irons" ) end

				--	Else if the stock is extended/not valid and we need iron sights...
				else
				
					--	Use the IronSightsAng and 
					ang = ang * 1
					ang:RotateAroundAxis( ang:Right( ) , self.IronSightsAng.x * PosMul * MoveOffsetForwardBack.x * MoveOffsetLeftRight.x )
					ang:RotateAroundAxis( ang:Up( ) , self.IronSightsAng.y * PosMul * MoveOffsetForwardBack.y * MoveOffsetLeftRight.y )
					ang:RotateAroundAxis( ang:Forward( ) , self.IronSightsAng.z * PosMul * MoveOffsetForwardBack.z * MoveOffsetLeftRight.z )
					
					--	Use the IronSightsPos values
					pos = pos + self.IronSightsPos.x * Right * PosMul
					pos = pos + self.IronSightsPos.y * Forward * PosMul
					pos = pos + self.IronSightsPos.z * Up * PosMul
					
					--	Debug
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Normal Irons" ) end
					
				end

			end
		--	Else we're in Doom Mode
		else
		
			--	Set the sway when looking around
			self.SwayScale = SwayLerpDoom
			
			--	Set the bob when walking around
			self.BobScale = BobLerpDoom
			
			ang = ang * 1
			ang:RotateAroundAxis( ang:Right( ) , PosMul )
			ang:RotateAroundAxis( ang:Up( ) , PosMul )
			ang:RotateAroundAxis( ang:Forward( ) , PosMul )
			pos = pos + DoomPos.x * Right * PosMul
			pos = pos + DoomPos.y * Forward * PosMul
			pos = pos + DoomPos.z * Up * PosMul					
			
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Doom Mode" ) end

		end

		return pos , ang
	end

	--]]

	----------------------------------------------------------
	--	SWEP:GetViewModelPosition() 						--	Allows you to re-position the view model.
	----------------------------------------------------------
	--
	function SWEP:GetViewModelPosition( pos , ang )
		local isIronsighted = self:Get_IsInIronSights( )
		local Holster = self:Get_IsHolstered( )
		local DashDelta = 0

		if ( ( self.Owner:KeyDown( IN_SPEED ) and self.Owner:GetVelocity( ):Length( ) > self.Owner:GetWalkSpeed( ) and GetConVarNumber( "VNT_SWep_Base_Doom_Toggle" ) == 0 ) ) or self.IsCloseToWall or self:Get_IsHolstered( ) == true then
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
			if ( self:Get_IsInIronSights( ) == true ) then
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

		if ( self:Get_IsInIronSights( ) ~= self.LastIron ) then
			self.LastIron = self:Get_IsInIronSights( )
			self.IronTime = CurTime( )

			if ( self:Get_IsInIronSights( ) == true ) then
				self.SwayScale = 0.1
				self.BobScale = 0.1
			else
				self.SwayScale = 1.0
				self.BobScale = 1.0
			end
		end

		--	Ironsight toggle time is ditto or 0 as fallback
		local IronTime = self.IronTime or 0
		if ( self:Get_IsInIronSights( ) == false and IronTime < CurTime( ) - IronsightToggleTime ) and GetConVarNumber( "VNT_SWep_Base_Doom_Toggle" ) == 0 then 
			return pos , ang
		end
		local Mul = 1.0

		if ( IronTime > CurTime( ) - IronsightToggleTime ) then
			Mul = math.Clamp( ( CurTime( ) - IronTime ) / IronsightToggleTime , 0 , 1 )

			if ( not isIronsighted ) then
				Mul = 1 - Mul
			end
		end
		if self:Get_IsStockExtended() == true then
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
		elseif GetConVarNumber( "VNT_SWep_Base_Doom_Toggle" ) != 0 then
			if ( self.IronSightsAng ) then
				ang = ang * 1
				ang:RotateAroundAxis( ang:Right( ) , self.IronSightsAng.x * Mul )
				ang:RotateAroundAxis( ang:Up( ) , self.IronSightsAng.y * Mul )
				ang:RotateAroundAxis( ang:Forward( ) , self.IronSightsAng.z * Mul )
			end

			local Right = ang:Right( )
			local Up = ang:Up( )
			local Forward = ang:Forward( )
			pos = pos + self.DoomSightsPos.x * Right * Mul + self.IronSightsPos.x * Right * Mul
			pos = pos + self.DoomSightsPos.y * Forward * Mul + self.IronSightsPos.y * Forward * Mul
			pos = pos + self.DoomSightsPos.z * Up * Mul + self.IronSightsPos.z * Up * Mul
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

	--]]
	
	-----------------------------------------------------------
	--	SWEP:AdjustMouseSensitivity()
	--	Allows you to adjust the mouse sensitivity.
	-----------------------------------------------------------
	function SWEP:AdjustMouseSensitivity( )
	
		if ( self:Get_IsInScope( ) ) then
		
			if self.IsCloseZoomed then
			
				return GetConVarNumber("VNT_Base_SWep_IronSight_Sensitivity")
				
			else
			
				return GetConVarNumber("VNT_Base_SWep_IronSight_Sensitivity") / 4
				
			end
			
		elseif ( self:Get_IsInIronSights( ) ) then
		
			if self.ScopeType == 2 then
			
				return GetConVarNumber("VNT_Base_SWep_IronSight_Sensitivity") / 2
				
			else
			
				return GetConVarNumber("VNT_Base_SWep_IronSight_Sensitivity")
				
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

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			-- If the bolt pull is assigned to another anim, this case ACT_VM_PULLPIN

			if self.ManualCocking then

				--print( "manual bolt" )

				if self:Clip1() > 0 then

					--print( "mag > 0" )

					if not self:Get_HasRoundInChamber() then

						--print( "not round in chamber" )
				
						--print( self:Get_HasRoundInChamber() )
				
						self:BoltPullCallBack()
				
						return false

					end
					
				end

			end

			if self.PumpAction then

				--print( "manual bolt" )

				if self:Clip1() > 0 then

					--print( "mag > 0" )

					if not self:Get_HasRoundInChamber() then

						--print( "not round in chamber" )
				
						--print( self:Get_HasRoundInChamber() )
				
						self:PumpActionCallBack()
				
						return false

					end
					
				end

			end

			if not self:Get_HasRoundInChamber() then
			
				--print( "round not in chamber" )
			
				return false
				
			end
			
			--	If we're reloading return false
			--if self:Get_IsReloading() or self:Get_IsShotgunReloading( )  then
			if self:Get_IsReloading()  then
				
				--self.Owner:ChatPrint( "GetReloading == true" )
				return false

			end

			if not self.CanShootWhenUnDeployed and self:Get_IsGenericDeployed() == false then
			
				return false
			
			end
		
			if self:Get_HasSmallJam( ) then

				self:MessagePrint( "PrimarySmall" )
				
				return false
				
			end
			
			if self:Get_HasLargeJam( ) then

				self:MessagePrint( "PrimaryLarge" )
				
				return false

			end
			
			if self:Get_IsHolstered( ) or self:Clip1( ) <= 0 or self.IsCloseToWall or ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) == 0 and self.Owner:KeyDown( IN_SPEED ) ) then
				--	mag's empty
				--(self.Primary.ClipSize <= 0 and self.Melee == false) or				--	or we don't use ammo/we're not melee
				--not self.Owner:IsNPC() or											--	or we're not an NPC
				--	or we have a big jam
				--	or we have a small jam
				--	or we're sprinting
				--	or we're near a wall
				--	If the mag is empty, the bolt is back, and we're not a melee then
				if ( self:Clip1( ) <= 1 ) and self.FiringPinForward == false and self.WeaponType ~= 1 then

					--	play our suppressed dry fire
					if ( self.WeaponType == 2 ) then

						self:EmitSound( self.Sounds.FiringPinPistol )

						if SERVER then

							--self:PlaySounds( "FiringPinPistol" )

						end
						
					else

						self:EmitSound( self.Sounds.FiringPin )

						if SERVER then

							--self:PlaySounds( "FiringPin" )

						end

					end

					self.FiringPinForward = true
					
				end

				return false --	we can't shoot
	
			end
			
			return true --	we can shoot

		end
		
	end

end --	Check if we can run +attack

function SWEP:BoltPullCallBack()

	if IsValid( self ) and IsValid( self.Owner ) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			-- If the bolt pull is assigned to another anim, this case ACT_VM_PULLPIN
			if self.ManualCocking then
				
				local VModel = self.Owner:GetViewModel( )
				
				local BoltDelay = VModel:SequenceDuration() + 0.1

				--	Play the bolt animation
				self:SpecialAnimation( table.Random( self.SeqPullPin ) )

				self:SetNextPrimaryFire( CurTime() + VModel:SequenceDuration() + 0.1 )
				self:SetNextSecondaryFire( CurTime() + VModel:SequenceDuration() + 0.1 )
				
				--	If our shells are enabled
				if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) == 1 then

					if self:Clip1() > -1 then

						--	Get our self.ShellDelay and make a timer
						timer.Simple( self.ShellDelay , function( )
							
							--	If we've already run this exit out
							if not IsFirstTimePredicted() then return end

							--	If we have a custom shell
							if self.ShellType != nil then

								local ShellFX = EffectData( )	--	Create our shell data
								ShellFX:SetEntity( self )	--	Set the parent
								ShellFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ShellFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ShellFX:SetScale( self.ShellType )	--	Get our shell type
								util.Effect( self.ShellEffect , ShellFX , true , false )	--	Create the damn effect

							end

							--	Belt fed?
							if self.BeltFed and self.BeltLinkNumbers != nil then

								local BeltLinkFX = EffectData( )	--	Create our shell data
								BeltLinkFX:SetEntity( self )	--	Set the parent
								BeltLinkFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								BeltLinkFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								
								--	If we haven't had our first link ejected
								if not self.HasFiredFirstBeltLink then
								
									--	Set the shell type to the 1st link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[1] )
									
									--	Set the has fired first link
									self.HasFiredFirstBeltLink = true

								--	Else we have fired the first link
								else
								
									--	Eject the normal link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[2] )

								end
								
								util.Effect( self.ShellEffect , BeltLinkFX , true , false )	--	Create the damn effect

							end

							if self.ClipEjection != nil and self:Clip1() < 1 then

								--self:EmitSound( self.Sounds.PrimaryLast )

								if SERVER then
								
									self:PlaySounds( "PrimaryLast" )
									
								end
							
								local ClipFX = EffectData( )	--	Create our shell data
								ClipFX:SetEntity( self )	--	Set the parent
								ClipFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ClipFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ClipFX:SetScale( self.ClipEjection )	--	Get our shell type
								
								util.Effect( self.ShellEffect , ClipFX , true , false )	--	Create the damn effect

							end

						end )

					end

				end

				timer.Simple( BoltDelay , function( )
				
					self:Set_HasRoundInChamber( true )
					
				end )

			end
			
		end
		
	end

end

function SWEP:PumpActionCallBack()

	if IsValid( self ) and IsValid( self.Owner ) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			-- If the bolt pull is assigned to another anim, this case ACT_VM_PULLPIN
			if self.PumpAction then
				
				local VModel = self.Owner:GetViewModel( )
				
				local BoltDelay = VModel:SequenceDuration() + 0.1

				--	Play the bolt animation
				self:SpecialAnimation( table.Random( self.SeqShotgunPump ) )

				self:SetNextPrimaryFire( CurTime() + VModel:SequenceDuration() + 0.1 )
				self:SetNextSecondaryFire( CurTime() + VModel:SequenceDuration() + 0.1 )
				
				--	If our shells are enabled
				if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) == 1 then

					if self:Clip1() > -1 then

						--	Get our self.ShellDelay and make a timer
						timer.Simple( self.ShellDelay , function( )
							
							--	If we've already run this exit out
							if not IsFirstTimePredicted() then return end

							--	If we have a custom shell
							if self.ShellType != nil then

								local ShellFX = EffectData( )	--	Create our shell data
								ShellFX:SetEntity( self )	--	Set the parent
								ShellFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ShellFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ShellFX:SetScale( self.ShellType )	--	Get our shell type
								util.Effect( self.ShellEffect , ShellFX , true , false )	--	Create the damn effect

							end

							--	Belt fed?
							if self.BeltFed and self.BeltLinkNumbers != nil then

								local BeltLinkFX = EffectData( )	--	Create our shell data
								BeltLinkFX:SetEntity( self )	--	Set the parent
								BeltLinkFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								BeltLinkFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								
								--	If we haven't had our first link ejected
								if not self.HasFiredFirstBeltLink then
								
									--	Set the shell type to the 1st link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[1] )
									
									--	Set the has fired first link
									self.HasFiredFirstBeltLink = true

								--	Else we have fired the first link
								else
								
									--	Eject the normal link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[2] )

								end
								
								util.Effect( self.ShellEffect , BeltLinkFX , true , false )	--	Create the damn effect

							end

							if self.ClipEjection != nil and self:Clip1() < 1 then

								--self:EmitSound( self.Sounds.PrimaryLast )

								if SERVER then
								
									self:PlaySounds( "PrimaryLast" )
									
								end
							
								local ClipFX = EffectData( )	--	Create our shell data
								ClipFX:SetEntity( self )	--	Set the parent
								ClipFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ClipFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ClipFX:SetScale( self.ClipEjection )	--	Get our shell type
								
								util.Effect( self.ShellEffect , ClipFX , true , false )	--	Create the damn effect

							end

						end )

					end

				end

				timer.Simple( BoltDelay , function( )
				
					self:Set_HasRoundInChamber( true )
					
				end )

			end
			
		end
		
	end

end

function SWEP:PrimaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then

				return false

			end

			if self.AltFireMelee == false and self.HasMeleeAttack and ( self.Owner:KeyDown( IN_WALK ) and self.ActionDelay <= CurTime( ) ) then

				self:MeleeBashThink( )
				
				return false

			end

			if ( self.Owner:KeyDown( IN_USE ) and self:Get_IsInIronSights( ) == false ) and self.ActionDelay < CurTime() then

				self:DeployFunctionCallBack( )

				return false

			end

			if self:Get_IsGrenadeLauncherDeployed( ) or self.WeaponType == VNTCB.WeaponType.GLauncher then

				self:EntityShooter( )

				return false
				
			end

			--	we can't fire underwater & we're underwater
			if ( self.CanFireUnderwater == false and self.Owner:WaterLevel( ) > 2 ) then
			
				return false
				
			else

				--	Check for various things that say, "hey fucktard, you can't shoot now"
				if not self:CanPrimaryAttack( ) then return end

				--	If our mag isn't empty
				if self:Clip1( ) > 0  then
					
					self:PrimaryAttackFireCallBack()

					if self:Get_IsInScope( ) then

						self:BoltActionCallBack( )
						
					end
			
				end

				-- If the bolt pull is assigned to another anim, this case ACT_VM_PULLPIN
				if self.ManualCocking then

					self:Set_HasRoundInChamber( false )

				end

			end
			
		end
		
	end
	
end --	+attack1 has been pressed.

function SWEP:PrimaryAttackFireCallBack( )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			local PrimaryDelay = ( 60 / self.Primary.RPM ) -- (Float) Don't touch
			local PrimaryDamage = ( math.random( self.Primary.PureDmg - 3 , self.Primary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

			if self.CurrentMode == 1 then

				self.Primary.Automatic = false
				
				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end
				
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				self:TakePrimaryAmmo( 1 )
				
			elseif self.CurrentMode == 2 then

				self.Primary.Automatic = false
				self.BurstTimer = CurTime( )
				self.BurstCounter = self.BurstShots - 1
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				
			elseif self.CurrentMode == 3 then

				self.Primary.Automatic = true
				
				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end
				
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				self:TakePrimaryAmmo( 1 )

			elseif self.HasSpecialFireMode[1] and self.CurrentMode == 4 then

				self.Primary.Automatic = self.HasSpecialFireMode[2]

				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end

				local SpecialDelay = ( 60 / self.HasSpecialFireMode[4] ) -- (Float) Don't touch
				self:SetNextPrimaryFire( CurTime( ) + SpecialDelay )
				self:TakePrimaryAmmo( 1 )
				
			end

			--	Play our firing animations
			if self.SeqPrimarySupp != nil and self:Get_IsSuppressorAttached( ) then

				self:SpecialAnimation( table.Random( self.SeqPrimarySupp ) )

			elseif self.SeqPrimaryEmpty != nil and self:Clip1() <= 0 then

				self:SpecialAnimation( table.Random( self.SeqPrimaryEmpty ) )

			elseif self.SeqPrimary != nil then

				self:SpecialAnimation( table.Random( self.SeqPrimary ) )

			end

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + PrimaryDelay )

			--	If our Jam toggle is set to true then
			if not GetConVarNumber( "VNT_Base_SWep_JamToggle" ) == 0 and not self.StoppageRate == 0 then
				--	If we're holstered or mag is empty then qui	t
				if self:Get_IsHolstered( ) or self:Clip1( ) <= 1 then return end
				--	Set our Jam chance to be based on our CVa	r
				local JamDice = math.random( 1 , self.StoppageRate )
				if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( JamDice ) end

				--	If we hit our small jam chance
				if JamDice > ( self.StoppageRate - 5 ) then
					--	Set jammed little to true and run the function
					self:Set_HasSmallJam( true )

					self:MessagePrint( "PrimarySmall" )
				
				elseif JamDice <= 1 then
					--	Else if we hit one
					--	Set our big jam to true and run the function
					self:Set_HasLargeJam( true )

					self:MessagePrint( "PrimaryLarge" )
				
				end

			end
			
		end

	end

end

function SWEP:CanSecondaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	If we're reloading return false
			--if self:Get_IsReloading() or self:Get_IsShotgunReloading( )  then
			if self:Get_IsReloading()  then
				
				--print( "can't sec fire reloading" )
				return false

			end

			if not self.CanIronWhenUnDeployed and self:Get_IsGenericDeployed() == false then
			
				--print( "can't sec fire canironwhenundeployed" )
				return false
			
			end

			if self:Get_HasSmallJamLeft( ) then

				self:MessagePrint( "SecondarySmall" )
				
				return false
				
			end
			
			if self:Get_HasLargeJamLeft( ) then
	
				self:MessagePrint( "SecondaryLarge" )
				
				return false

			end
				
			--if ( self:Get_IsHolstered( ) ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self:Get_HasLargeJam( ) or self:Get_HasSmallJam( ) or self.Owner:KeyDown( IN_SPEED ) or self.WeaponType == 1 or self.IsCloseToWall then
			if ( self:Get_IsHolstered( ) ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self.IsCloseToWall or ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) != 0 and self.Owner:KeyDown( IN_SPEED ) )  then
				--	mag's empty
				--	or we don't use ammo
				--	or we have a big jam
				--	or we have a small jam
				--	or we're sprinting
				--	or we're a melee
				--	or we're near a wall
				--print( "can't sec fire look at long condition" )
				return false --	we can't shoot
			else
				return true --	we can shoot
			end --	If holstered,
		end
	end
end --	Check if we can run +attack2

function SWEP:SecondaryAttack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end
	
			--	If +ATTACK2 and grenade

			--	If throwable
			if self.WeaponType == 9 then

				--	Use the grenade base instead mate

				return false

			end

			if ( self.Owner:KeyDown( IN_USE ) ) then
			
				if not ( self:Get_IsInScope( ) or self:Get_IsInIronSights( ) ) then

					--	cycle the fire mode
					self:ToggleFireMode( )
					return false
					
				else
				
					--	Cycle our sniper scope zoom factor
					self:ToggleZoom( )
					return false
					
				end
				
			end
			
			if not ( self.Owner:KeyDown( IN_USE ) ) and self.Owner:KeyDown( IN_WALK ) then
				
				--	Toggle the suppressor
				self:ToggleSuppressor( )
				
			end
		
			if not self.Owner:KeyDown( IN_SPEED ) then

				self:ToggleIronsights()

			end

		end
		
	end
	
end --	+attack2 has been pressed.

function SWEP:SecondaryAttackFireCallBack( )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local SecondaryDelay = ( 60 / self.Secondary.RPM ) -- (Float) Don't touch
			local SecondaryDamage = ( ( math.random( self.Secondary.PureDmg - 3 , self.Secondary.PureDmg + 3 ) ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

			--	If we're suppressed then
			if self:Get_IsSuppressorAttached( ) then

				--self:EmitSound( self.Sounds.PrimarySuppressed )
			
				--	Emit our suppressed sound
				if SERVER then

					self:PlaySounds( "PrimarySup" )
					
				end
				
			else

				--self:EmitSound( self.Sounds.Primary )
			
				--	Else emit the normal sound
				if SERVER then

					self:PlaySounds( "Primary" )
					
				end
				
			end

			if self.CurrentMode == 1 then
			
				self.Secondary.Automatic = false
				
				if self:CanSecondaryAttack( ) then
					
					if SERVER then
					
						self:FireBullet( SecondaryDamage , self.EffectiveRange , self.Secondary.NumShots , self.Secondary.Force , "Left" )
						
					end
					
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					self:TakeSecondaryAmmo( 1 )
					
				end
				
			elseif self.CurrentMode == 2 then
			
				self.Secondary.Automatic = false
				
				if self:CanSecondaryAttack( ) then
				
					self.BurstTimerL = CurTime( )
					self.BurstCounterL = self.BurstShotsL - 1
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					
				end
				
			elseif self.CurrentMode == 3 then
			
				self.Secondary.Automatic = true
				
				if self:CanSecondaryAttack( ) then
					
					if SERVER then
					
						self:FireBullet( SecondaryDamage , self.EffectiveRange , self.Secondary.NumShots , self.Secondary.Force , "Left" )
						
					end
					
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					self:TakeSecondaryAmmo( 1 )
					
				end
				
			end

			--	Play our firing animations
			if self.SeqSecondary != nil then

				self:SpecialAnimation( table.Random( self.SeqSecondary ) )

			end

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + SecondaryDelay )

			--	If our Jam toggle is set to true then
			if not GetConVarNumber( "VNT_Base_SWep_JamToggle" ) == 0 and not self.StoppageRate == 0 then
				--	If we're holstered or mag is empty then qui	t
				if self:Get_IsHolstered( ) or self:Clip2( ) <= 1 then return end
				--	Set our Jam chance to be based on our CVa	r
				local JamDice = (math.random( 1 , self.StoppageRate ))

				--	If we hit our small jam chance
				if JamDice > ( JamDice - 5 ) then
				
					--	Set jammed little to true and run the function
					self:Set_HasSmallJamLeft( true )

					self:MessagePrint( "LeftSmall" )
				
				--	Else if we hit one
				elseif JamDice <= 1 then
				
					--	Set our big jam to true and run the function
					self:Set_HasLargeJamLeft( true )

					self:MessagePrint( "LeftLarge" )
					
				end

			end

			return false
			
		end
		
	end

end

function SWEP:FireAnimationEvent( pos, ang, event, options )

	-- Disables animation based muzzle event
	if ( event == 21 ) then return true end

	-- Disable default shell ejection
	if ( event == 6001 ) then return true end
	
	-- Disable thirdperson muzzle flash
	if ( event == 5001 ) then return true end
	if ( event == 5003 ) then return true end
	if ( event == 5011 ) then return true end
	if ( event == 5021 ) then return true end
	if ( event == 5031 ) then return true end
	
end

function SWEP:PlayFiringAnimation( Type , MagazineCount )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Not the first time we predicted this? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			self:PlayBulletCraft()
			
			--	Play our third-person firing animation
			self.Owner:SetAnimation( PLAYER_ATTACK1 )
			
			--	Transfer the Type to a readable Hand string
			local Hand = Type or "Right"
			
			--	If we passed it lefty
			if Hand == "Left" then
				
				--	Make sure it's Akimbo
				if self.Akimbo then
				
					--	Mag not empty?
					if self:Clip1( ) > 0 and self.SeqPrimary != nil then

						self:SpecialAnimation( table.Random( self.SeqPrimary ) )
						
					--	If mag is empty in not valid, and we have an empty sequence
					elseif self:Clip1( ) <= 0 and self.SeqIdleEmptyLeft != nil then
					
						self:SpecialAnimation( table.Random( self.SeqIdleEmptyLeft ) )
						
					end					
					
					--	If our sheckles are enabled
					if not GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) == 0 then

						if not self.RevolverShells then

							if self.EjectLastShell and self:Clip2() > -1 then

								--  Get our self.ShellDelay and make a timer
								timer.Simple( self.ShellDelay , function( )

									--	If we have a custom shell
									if self.ShellType != nil then

										local ShellLeftFX = EffectData( )   --  Create our shell data
										ShellLeftFX:SetEntity( self )   --  Set the parent
										ShellLeftFX:SetNormal( self.Owner:GetAimVector( ) ) --  Get our aim vector
										ShellLeftFX:SetAttachment( self.ShellAttachLeft )   --  Get our attachment point
										ShellLeftFX:SetScale( self.ShellType )  --  Get our shell type
										util.Effect( self.ShellEffect , ShellLeftFX , true , false )    --  Create the damn effect
										
									end
									
									if self.BeltFed and self.BeltLinkNumbers != nil then
									   
										local BeltLinkLeftFX = EffectData( )    --  Create our shell data
										BeltLinkLeftFX:SetEntity( self )    --  Set the parent
										BeltLinkLeftFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
										BeltLinkLeftFX:SetAttachment( self.ShellAttachLeft )    --  Get our attachment point

										--  If we haven't had our first link ejected
										if not self.HasFiredFirstBeltLink then

											--  Set the shell type to the 1st link
											BeltLinkLeftFX:SetScale( self.BeltLinkNumbers[1] )

											--  Set the has fired first link
											self.HasFiredFirstBeltLink = true

										--  Else we have fired the first link
										else

											--  Eject the normal link
											BeltLinkLeftFX:SetScale( self.BeltLinkNumbers[2] )

										end

										util.Effect( self.ShellEffect , BeltLinkLeftFX , true , false ) --  Create the damn effect

									end
									
								end )

							end

						end
						
					end

					--	If our muzzle flashes are enabled
					if not ( self:Get_IsSuppressorAttached( ) and GetConVarNumber( "VNT_Base_SWep_FlashToggle" ) == 0 ) and not ( self.WeaponType == 1 or self.WeaponType == 9 ) then

						self:EmitMuzzleFlash( "MuzzleLeft" )
						self:EmitMuzzleLight( "Left" )

					end

				end

			--	Else it's the usual right handed monopoly
			elseif Hand == "Right" then

				--	If we have an animated suppressor and it's attached
				if self.SuppressorType == 2 and self:Get_IsSuppressorAttached( )  then
				
					if self:Clip1() > 1 then

						if self:Get_IsInIronSights() and self.SeqIronPrimarySupp != nil then

							self:SpecialAnimation( table.Random( self.SeqIronPrimarySupp ) )

						elseif self.SeqPrimarySupp != nil then

							self:SpecialAnimation( table.Random( self.SeqPrimarySupp ) )

						end

					elseif self:Clip1() <= 1 then

						if self:Get_IsInIronSights() and self.SeqIronPrimarySupp != nil then

							self:SpecialAnimation( table.Random( self.SeqIronPrimaryLastSupp ) )

						elseif self.SeqPrimarySupp != nil then

							self:SpecialAnimation( table.Random( self.SeqShootLastSupp ) )

						end

					end

				--	If we have an empty animation and the mag is empty
				elseif self:Clip1( ) <= 0 then

					if self:Get_IsInIronSights() and self.SeqIronPrimaryEmpty != nil then

						self:SpecialAnimation( table.Random( self.SeqIronPrimaryEmpty ) )

					elseif self.SeqPrimaryEmpty != nil then

						self:SpecialAnimation( table.Random( self.SeqPrimaryEmpty ) )

					end

				--	If we have a shoot last anim and the mag is empty
				elseif self:Clip1( ) <= 0 then

					if self:Get_IsInIronSights() and self.SeqIronPrimaryLast != nil then
					
						self:SpecialAnimation( table.Random( self.SeqIronPrimaryLast ) )

					elseif self.SeqShootLast != nil then

						self:SpecialAnimation( table.Random( self.SeqShootLast ) )

					elseif self.SeqPrimaryEmpty != nil then

						self:SpecialAnimation( table.Random( self.SeqPrimaryEmpty ) )

					end

				--	If we have a deployed fire anim and we have either a bipod or GLM deployed
				-- elseif ( self:Clip1( ) <= 0 and self.SeqDeployedFire != nil ) then

					-- self:SpecialAnimation( table.Random( self.SeqDeployedFire ) )

				--	If it's Akimbo then we use the backwards control
				elseif self.IsAkimbo and self.SeqSecondary != nil then

					self:SpecialAnimation( table.Random( self.SeqSecondary ) )

				--	Else go normal
				elseif self.SeqPrimary != nil then

					self:SpecialAnimation( table.Random( self.SeqPrimary ) )

				end

				--	If our shells are enabled
				if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) == 1 then

					if self.ShellType == nil or self.RevolverShells != nil then
					
						return
						
					end

					if self:Clip1() > -1 and not self.ManualCocking then

						--	Get our self.ShellDelay and make a timer
						timer.Simple( self.ShellDelay , function( )

							--	If we've already run this exit out
							if not IsFirstTimePredicted() then return end

							--	If we have a custom shell
							if self.ShellType != nil then
								local ShellFX = EffectData( )	--	Create our shell data
								ShellFX:SetEntity( self )	--	Set the parent
								ShellFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ShellFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ShellFX:SetScale( self.ShellType )	--	Get our shell type
								util.Effect( self.ShellEffect , ShellFX , true , false )	--	Create the damn effect

							end

							--	Belt fed?
							if self.BeltFed and self.BeltLinkNumbers != nil then

								local BeltLinkFX = EffectData( )	--	Create our shell data
								BeltLinkFX:SetEntity( self )	--	Set the parent
								BeltLinkFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								BeltLinkFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								
								--	If we haven't had our first link ejected
								if not self.HasFiredFirstBeltLink then
								
									--	Set the shell type to the 1st link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[1] )
									
									--	Set the has fired first link
									self.HasFiredFirstBeltLink = true

								--	Else we have fired the first link
								else
								
									--	Eject the normal link
									BeltLinkFX:SetScale( self.BeltLinkNumbers[2] )

								end
								
								util.Effect( self.ShellEffect , BeltLinkFX , true , false )	--	Create the damn effect

							end

							if self.ClipEjection != nil and self:Clip1() < 1 then

								--self:EmitSound( self.Sounds.PrimaryLast )

								if SERVER then
								
									self:PlaySounds( "PrimaryLast" )
									
								end
							
								local ClipFX = EffectData( )	--	Create our shell data
								ClipFX:SetEntity( self )	--	Set the parent
								ClipFX:SetNormal( self.Owner:GetAimVector( ) )	--	Get our aim vector
								ClipFX:SetAttachment( self.ShellAttach )	--	Get our attachment point
								ClipFX:SetScale( self.ClipEjection )	--	Get our shell type
								
								util.Effect( self.ShellEffect , ClipFX , true , false )	--	Create the damn effect

							end

						end )

					end

				end

				--	If our muzzle flashes are enabled
				if not self:Get_IsSuppressorAttached( ) and GetConVarNumber( "VNT_Base_SWep_FlashToggle" ) == 1 and not ( self.WeaponType == 1 or self.WeaponType == 9 ) then

					self:EmitMuzzleFlash( "MuzzleRight" )
					self:EmitMuzzleLight( "Right" )

				end

				
			end

		end
	
	end
	
end --	Play firing animations

------------------------------------------------------
--	Grenade Functions								--
------------------------------------------------------

------------------------------------------------------
--	Reload Functions								--
------------------------------------------------------

function SWEP:Reload( )
	
	--	We valid?
	if IsValid( self ) and IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end

			--	Set our time to fire until after the sequence has played
			local VModel = self.Owner:GetViewModel( )

			if not self.CanReloadWhenNotEmpty and self:Clip1() > 0 then
			
				return false
				
			end
			
			--	If jammed, we're not reloading, we're clearing a jam
			if ( self:Get_HasLargeJam( ) or self:Get_HasSmallJam( ) or self:Get_HasLargeJam(Left ) or self:Get_HasSmallJamLeft( ) )  then

				self:MessagePrint( "ClearingJam" )

				--	Run the shitty jammed functon
				self:WeaponJammed()

				self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				
				--	End this function
				return false
				
			elseif self.Owner:KeyDown( IN_USE ) and self:Get_IsHolstered( ) then
			
				--	Run the throw function
				self:Throw( )

				--	End our function
				return false
				
			elseif	--	And Here... We... Go...
			
				( self:Get_IsReloading() or self:Get_IsShotgunReloading( ) ) or
				( ( self.ActionDelay > CurTime( ) ) or ( self.Owner:KeyDown( IN_SPEED ) ) ) or
				( ( self:Clip1() ) >= ( self.Primary.ClipSize + self.Primary.ClipSizePlus ) ) or
				( ( self:Ammo1() <= 0 ) ) or
				not ( ( self.CanReloadWhenUnDeployed and self:Get_IsGenericDeployed() == false ) ) then
				
				--	End our function
				return false

			end
	
			if ( self:Get_IsInScope( ) ) and not ( self.ScopeType == 2 ) then
				
				self:ToggleViewModelDraw( "DrawItForMe" )
				
			end

			--	If we're in iron sights, toggle out of them and continue
			if self:Get_IsInIronSights( ) or self:Get_IsInScope( ) then self:ToggleIronsights( ) end

			--	If we have our GL deployed then
			if self:Get_IsGrenadeLauncherDeployed( ) or ( self.WeaponType == VNTCB.WeaponType.GLauncher ) then
			
				if self.WeaponType == VNTCB.WeaponType.GLauncher then

					--	If we have ammo for it, and it's not loaded then
					if self:Ammo1() > 0 and self:Get_IsGrenadeLauncherLoaded( ) == false then

						--	Play the specified deploy reload
						-- if VModel:SelectWeightedSequence( ACT_VM_RELOAD ) then
						if self.SeqReload != nil then

							self:SpecialAnimation( table.Random( self.SeqReload ) )

						end

					end

				else

					--	If we have ammo for it, and it's not loaded then
					if self:Ammo2() > 0 and self:Get_IsGrenadeLauncherLoaded( ) == false then

						--	Play the specified deploy reload

						if self.SeqReloadM203 != nil then

							self:SpecialAnimation( table.Random( self.SeqReloadM203 ) )

						elseif self.SeqReload != nil then

							self:SpecialAnimation( table.Random( self.SeqReload ) )

						end

					end

				end

				if SERVER then

					--	Now we're loaded so signal we can fire
					self:Set_IsGrenadeLauncherLoaded( true )
					
					--	Our hammer is back
					self.LauncherPinForward = false
					
				end

				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				--	Return false and end the reload function
				return false

			end

			if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) ~= 0 and ( self.WeaponType != 1 or self.WeaponType != 9 ) then

				if self.ShellType != nil and self.RevolverShells != nil then

					local RevolverFX = EffectData( )    --  Create our shell data
					RevolverFX:SetEntity( self )    --  Set the parent
					RevolverFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
					RevolverFX:SetAttachment( self.ShellAttach )    --  Get our attachment point
					RevolverFX:SetScale( self.ShellType )   --  Get our shell type

					--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
					for ShellLoopCount =  1 , self.RevolverShells do

						timer.Simple( self.ShellDelay , function( )

							--	If we've already run this exit out
							if not IsFirstTimePredicted() then return end

							if IsValid( self ) and IsValid( self.Owner ) then

								util.Effect( self.ShellEffect , RevolverFX , true , false )

							end

						end )

						if ShellLoopCount > self.RevolverShells then

							break

						end

					end

					if self.Akimbo then

						local RevolverLeftFX = EffectData( )    --  Create our shell data
						RevolverLeftFX:SetEntity( self )    --  Set the parent
						RevolverLeftFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
						RevolverLeftFX:SetAttachment( self.MuzzleAttachLeft )   --  Get our attachment point
						RevolverLeftFX:SetScale( self.ShellType )   --  Get our shell type

						--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
						for ShellLoopCount =  1 , self.RevolverShells do

							timer.Simple( self.ShellDelay , function( )

								if IsValid( self ) and IsValid( self.Owner ) then

									util.Effect( self.ShellEffect , RevolverFX , true , false )

								end

							end )

							if ShellLoopCount > self.RevolverShells then

								break

							end

						end

					end
					
				end
				
			end

			if self:Get_IsChambering( ) then 

				print( "reloading chambered round" )
				return false

			end

			--	Play the next function	
			self:Set_IsReloading( true )

			self:ReloadAnimation( )
			
			if self.CanChamber then

				self:ChamberRound( self:Clip1() , self:Clip2() )
				
			end

			local VModel = self.Owner:GetViewModel( )

			self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )

			-- Custom function for child SWeps
			self:CustomReload( )
	
		end
	
	end

end --	Reload is being pressed.

function SWEP:ChamberRound( MagOne , MagTwo )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			--	Else if we can put one in the chamber
			if MagOne > 0 then

				self:Set_IsChambering( true )

				--	Run our timer for the round in the chamber
				timer.Simple( VModel:SequenceDuration( ) + 0.75 , function( )
				
					if IsValid( self ) and self:Ammo1() > 0 then

						--	Remove the difference from the slot
						self.Owner:RemoveAmmo( 1 , self:GetPrimaryAmmoType( ) )
						--	Set our mag to ClipSizePlus
						self:SetClip1( self:Clip1( ) + self.Primary.ClipSizePlus )

						self:Set_IsChambering( false )

					end

				end )
				
			end

			--	Else if we can put one in the chamber
			if MagTwo > 0 then

				self:Set_IsChambering( true )

				--	Run our timer for the round in the chamber
				timer.Simple( VModel:SequenceDuration( ) + 0.75 , function( )

					if IsValid( self ) and self:Ammo2() > 0 then

						--	Remove the difference from the slot
						self.Owner:RemoveAmmo( 1 , self:GetSecondaryAmmoType( ) )
						--	Set our mag to ClipSizePlus
						self:SetClip2( self:Clip2( ) + self.Secondary.ClipSizePlus )

						self:Set_IsChambering( false )

					end

				end )
				
			end

		end
		
	end

end

function SWEP:ReloadAnimation( )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Set the preset reload animation
			if self:Get_IsReloading( ) then
			
				if self.Owner:Crouching() then
				
					self:SetHoldType( self.HoldMeRight[6] )
					
				else
				
					self:SetHoldType( self.HoldMeRight[5] )
					
				end		

			end

			--	Make sure some jackass didn't try to fuck me over
			if self.ReloadSNDDelay != nil then
				
				--	Play a sound in third-person
				timer.Simple( self.ReloadSNDDelay , function( )
					
					if self.Sounds.Reload != nil then

						if SERVER then
						
							--self:PlaySounds( "Reload" )
							
						end

						self:EmitSound( self.Sounds.Reload )

					end

				end )
				
			end

		
			--	Call the reload animations so it plays them
			self:DefaultReload( ACT_VM_RELOAD )
			self.Owner:SetAnimation( PLAYER_RELOAD )

			--	If mag is 0 and it has empty animations then

			local VModel = self.Owner:GetViewModel( )

			local ReloadEmptyCheck = VModel:SelectWeightedSequence(ACT_VM_RELOAD_EMPTY)
			local ReloadEmptySeq = self:LookupSequence( ReloadEmptyCheck )

			-- if self.BeltFedAnimatedDoD then
			if self.SeqReloadDeployed != nil then

				self:SpecialAnimation( table.Random( self.SeqReloadDeployed ) )

				if not ( self:Get_IsGenericDeployed( ) and self.SeqUnDeploy8 != nil ) then
				
					timer.Simple( VModel:SequenceDuration( ) + 0.01 , function( )

						self:SpecialAnimation( table.Random( self.SeqUnDeploy8 ) )

					end)
				
				end

			-- elseif ( self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and VModel:SelectWeightedSequence( ACT_VM_RELOAD_SILENCED ) ) then
			elseif ( self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqReloadSupp != nil ) then

				self:SpecialAnimation( table.Random( self.SeqReloadSupp ) )

			elseif ( self:Get_IsGrenadeLauncherDeployed( ) and self.SeqReloadM203 != nil ) then

				-- if self:GetSequence( SEQ ) != -1 then
				if self.SeqReloadM203 != nil then

					--print( "reload" )
					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqReloadM203 ) )

				elseif self.SeqReload != nil then

					--print( "reload empty" )
					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqReload ) )

				end

			-- elseif self:Clip1( ) == 0 and ReloadEmptySeq != -1 then
			elseif self:Clip1( ) == 0 and self.SeqReloadEmpty != nil then

				--print( "reload empty" )
				--	Play the empty reload animation
				self:SpecialAnimation( table.Random( self.SeqReloadEmpty ) )

			elseif self.SeqReload != nil then

				--	Else if our mag is empty and we don't have empty anims then
				--	Play our normal reload animation
				self:SpecialAnimation( table.Random( self.SeqReload ) )

			end

			if ( self:Get_IsGrenadeLauncherDeployed( ) or self.WeaponType == VNTCB.WeaponType.GLauncher ) then
			
				print( "GLM loaded: " .. tostring( self:Get_IsGrenadeLauncherLoaded() ) )
				self:Set_IsGrenadeLauncherLoaded( true )
				
			end
			
			self:Set_IsShotgunReloading( false )
			self:Set_IsReloading( false )

			if not self.ManualCocking then

				self:Set_HasRoundInChamber( true )
				--	Set the has fired first link
				self.HasFiredFirstBeltLink = false
				
			end

			--return false
			
		end
		
	end
	
end --	Specialty reload stuff

------------------------------------------------------
--	Holstered and Deploy Functions					--
------------------------------------------------------

function SWEP:Holster()

	if self:Get_IsReloading() or self:Get_IsShotgunReloading() or self.IsGrenadePrimed then
	
		return false
		
	else
	
		return true
	
	end

end

function SWEP:Holstered( )

	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			self:CustomHolster( )
			
			self:EmitSound( self.Sounds.Holster )

			--	Play our holster  sound in the world
			if SERVER then

				--self:PlaySounds( "Holster" )
				
			end

			--return true
			
		end
	
	end

end --	We're swapping weapons

function SWEP:Deploy( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			self:CustomDeploy( )

			self:EmitSound( self.Sounds.Draw )

			--	Play our draw sound in the world
			if SERVER then

				--self:PlaySounds( "Draw" )
				
			end
			
			--	Run our special function
			self:DeployAnimation( )

			if SERVER then
				self.CrouchPane = 1
			elseif CLIENT then
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )
				self.ActionDelay = ( CurTime( ) + self.DeployDelay + 0.05 )
			end

			--	If we're in iron sights, toggle out of them and continue
			if self:Get_IsInIronSights( ) then
				self:ToggleIronsights( )
			end

			--	If we're holstered continue
			if self:Get_IsHolstered( ) then return true end

			--	If we're a shotgun we're not reloading
			if self.Shotgun then
				self:Set_IsShotgunReloading( false )
			end
			
		end
		
	end
	
end --	We just deployed our weapon

function SWEP:DeployAnimation( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if ( self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqDrawSupp != nil ) then

				self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

			elseif ( self:Clip1( ) == 0 and self.SeqDrawEmpty != nil ) then

				self:SpecialAnimation( table.Random( self.SeqDrawEmpty ) )

			elseif self.SeqDraw != nil then

				self:SpecialAnimation( table.Random( self.SeqDraw ) )

			end
			
		end
		
	end
	
end --	Specialty deploy stuff

function SWEP:BoltActionCallBack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
		
			if self.BoltAction then

				--[[
				timer.Simple( 1 , function( )
				
					self:ToggleIronsights( )

				end)
				--]]

			end
			
		end
		
	end
	
end

function SWEP:DeployFunctionCallBack( )
	
	--	We valid?
	if IsValid( self ) and IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	If you press Mouse 1 + Use, Toggle our GL or Bipod mode if we have them
			if ( self.DeployableType ~= 0 ) then

				print( "Deploy Type not 0" )

				--	If we have a GL						
				if self.DeployableType == 1 then

					print( "Deploy Type GLM" )
				
					--	Toggle our GL mode and end the function
					self:ToggleGrenadeMode( )

				elseif self.DeployableType == 2 or self.DeployableType == 3 then
				
					print( "Deploy Type Bipod" )
				
					--	If we have a bipod
					--	Toggle our bipod deployment and end the function
					self:ToggleBipod( )

				elseif self.DeployableType == 4 then
				
					print( "Deploy Type Stock" )
				
					--	If we have a stock
					--	Toggle our stock deployment and end the function
					self:ToggleStock( )

				elseif self.DeployableType == 5 then
				
					print( "Deploy Type Deploy mode" )
				
					--	If we have a Deployable
					--	Toggle our deployed mode and end the function
					self:ToggleDeployedMode( self:Clip1() )

				elseif self.DeployableType == 6 then
				
					print( "Deploy Type Laser" )
				
					--	If we have a Deployable
					--	Toggle our deployed mode and end the function
					self:ToggleLaserSight( )

				else
				
					print( "Deploy Type 0" )
				
					-- else if you didn't read and put both of them to true, set them both to false to prevent errors, sorry boys.
					self.DeployableType = 0
					
				end
			end
			
			self:SetNextPrimaryFire( CurTime( ) + self.ActionDelay )
			
		end
		
	end
	
end

------------------------------------------------------
--	Think Functions									--
------------------------------------------------------

function SWEP:Think( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	Run our second think function in the children
			self:CustomThink( )
				
			--print( "test" )

			--	This tells the reload function if we have a round in the chamber, so that we can use self.CanChamber
			if self:Clip1() <= 0 then
			
				self:Set_HasRoundInChamber( false )
				
				--print( "mag 1 <= 0 " )
				
			else

				--print( "mag 1 > 0 " )
			
				--	Prevents the bolt from clicking more than once when the mag is empty
				self.FiringPinForward = false
				
				-- If not manual bolt pulling
				if not self.ManualCocking then
				
					--print( self:Get_HasRoundInChamber( ) )

					self:Set_HasRoundInChamber( true )
				
				end

			end
			
			--	Scope think functions
			if self.ScopeType != 0 then
			
				self:ScopeThink()
				
			end
			
			if self.ShellReload and self:Get_IsShotgunReloading() then
			
				self:ShellReloadCallback()
				
			end

			--	If throwable
			if self.WeaponType == 9 then

				self:GrenadeThink( )
			
			end

			if self.UseWorldAnimations then

				self:HoldTypeAnimations( )

			end

			if GetConVarNumber( "VNT_Base_SWep_SpeedToggle" ) != 0 then

				self:SpeedModThink( )
				
			end
			
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
					local PrimaryDelay = ( 60 / self.Primary.RPM ) -- (Float) Don't touch
					local PrimaryDamage = ( math.random( self.Primary.PureDmg - 3 , self.Primary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )
					--	If burst timer + delay < CurTime and burst count is > 0 then
					if self.BurstTimer + self.BurstDelay < CurTime( ) and self.BurstCounter > 0 then

						--	Minus one off
						self.BurstCounter = self.BurstCounter - 1
						--	Reset the timer
						self.BurstTimer = CurTime( )
						--	Run our fire bullet function
					
						if SERVER then
							self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
						end
						
						--	Set our next fire times
						self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
						--	Take a bullet
						self:TakePrimaryAmmo( 1 )
						
					end
				end

				--	If we're in Burst mode and we can attack then
				if self:CanSecondaryAttack( ) then
					--	If burst timer + delay < CurTime and burst count is > 0 then
					if self.BurstTimerL + self.BurstDelayLeft < CurTime( ) and self.BurstCounterL > 0 then
						--	If we're suppressed then
						if self:Get_IsSuppressorAttached( ) then
						
							--	Emit our suppressed sound
							if SERVER then

								self:PlaySounds( "PrimarySup" )
								
							end
							
						else
						
							--	Else emit the normal sound
							if SERVER then

								self:PlaySounds( "Primary" )
							
							end
							
						end
						--	Minus one off
						self.BurstCounterL = self.BurstCounterL - 1
						--	Reset the timer
						self.BurstTimerL = CurTime( )
						--	Run our fire bullet function
					
						if SERVER then
							self:FireBullet( SecondaryDamage , self.EffectiveRange , self.Secondary.NumShots , self.Secondary.Force , "Left" )
						end
						
						--	Set our next fire times
						self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
						--	Take a bullet
						self:TakeSecondaryAmmo( 1 )
					end
				end
				
			end

			--	Near wall pull back code
			--	If we have burst shots left in out counter, or we're in a vehicle...
			--if ( self.BurstCounter > 0 or self.BurstCounter > 0 ) or ( self.Owner:InVehicle() ) or GetConVarNumber( "VNT_Base_SWep_Doom_Toggle" ) != 0 then			
			if ( self.BurstCounter > 0 or self.BurstCounter > 0 ) or GetConVarNumber( "VNT_Base_SWep_Doom_Toggle" ) != 0 then			
				return	--	... return so we don't end up finishing the burst after we pull back
			else	--	Else we continue
				self:ToggleDepthMod( )
			end

			--	If we're iron sighted, and we sprint, toggle out of them
			if self:Get_IsInIronSights( ) and ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) != 0 and self.Owner:KeyDown( IN_SPEED ) ) then
			
				self:ToggleIronsights( )
				
			end

			--	If we press use, and we're not moving then
			if self.HasHelpingHanims then 
			
				self:HelpingHandThink( )
			
			end

			self:NextThink( CurTime( ) + 0.5 )
			
		end
		
	end
	
end --	Called every frame

function SWEP:GrenadeThink( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
	
			if self:Ammo1( ) <= 0 then

				if SERVER then
				
					--	if we don't have ammo strip the weapon
					self.Owner:StripWeapon( self.WeaponName )

				end
	
				--	And return to the last used weapon
				RunConsoleCommand( "lastinv" )
				
				return false
				
			end
			
		end
		
	end

end

function SWEP:SpeedModThink( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Bipod out
			if self:Get_IsBipodDeployed( ) then
			
				-- Divide speed
				self.Owner:SetRunSpeed( GetConVarNumber( "VNT_Base_SWep_Speed_Run" ) / 3 )
				self.Owner:SetWalkSpeed( GetConVarNumber( "VNT_Base_SWep_Speed_Walk" ) / 3 )
				
			--	Trying to sprint while bipod out
			elseif ( ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) != 0 and self.Owner:KeyDown( IN_SPEED ) ) and self:Get_IsBipodDeployed( ) ) then
			
				--	Toggle out
				self:ToggleBipod( )
				
			else
			
				--	set to normal
				self.Owner:SetRunSpeed( GetConVarNumber( "VNT_Base_SWep_Speed_Run" ) )
				self.Owner:SetWalkSpeed( GetConVarNumber( "VNT_Base_SWep_Speed_Walk" ) )
				
			end
			
		end
		
	end

end

function SWEP:MeleeBashThink( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )
	
			self:Melee( "Bash" )
			self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + 0.25 )
			self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.25 )
			self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.25 )
			
			return false
			
		end
		
	end

end

function SWEP:ScopeThink( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	If overlay scope
			if self.ScopeType == 1 then
			
				self.HasRTScope = false

				--	if scoped in
				if self:Get_IsInScope( ) then
				
					self:ToggleViewModelDraw( "HideItForMe" )
					
				else
				
					self:ToggleViewModelDraw( "DrawItForMe" )
					
				end
				
			--	If RT scope
			elseif self.ScopeType == 2 then
			
				self.HasRTScope = true

				--	If zeroed in
				if self.IsCloseZoomed then
				
					self.ZoomAmount = self.ScopeMultipliers[ 3 ]
					
				else
				
					self.ZoomAmount = self.ScopeMultipliers[ 2 ]
					
				end

			end
			
		end
		
	end

end

function SWEP:HelpingHandThink( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			if CLIENT then
			
				if self.Owner:KeyPressed( IN_USE ) and not ( self:Get_IsInScope( ) or self:Get_IsInIronSights( ) ) then

					--	Play the first-person animations
					self:SendViewModelMatchingSequence( self.ANIHANDOUT )

					timer.Simple( VModel:SequenceDuration( ) , function( )
						self:SendViewModelMatchingSequence( self.ANIHANDLOOP )
					end )

					timer.Simple( VModel:SequenceDuration( ) , function( )
						self:SendViewModelMatchingSequence( self.ANIHANDIN )
					end )
					
				end
					
			elseif SERVER then
			
				--	Play the world animation
				self.Owner:DoAnimationEvent( self.ANIHANDWORLD )
				
			end
			
		end
		
	end

end

------------------------------------------------------
--	Toggles											--
------------------------------------------------------

function SWEP:ToggleViewModelDraw( Toggle )
		
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end	

			if Toggle == "DrawItForMe" then

				--print( "DRAW!")
				self.Owner:DrawViewModel( true )
			
			elseif Toggle == "HideItForMe" then
				
				--print( "FILL YOUR HANDS YOU SON OF A BITCH!" )
				self.Owner:DrawViewModel( false )

			end
			
		end
		
	end

end

function SWEP:ChangeModel( Command )

	--	Reset our view/world models to default if you aren't deployed
	if not (self:Get_IsSuppressorAttached( ) or self:Get_IsBipodDeployed( ) or self:Get_IsStockExtended( ) or self:Get_IsLaserAttached( ) ) then
	
		--	Reset our models
		if self.ViewModelDefault != nil then
		
			self.ViewModel = self.ViewModelDefault
			
		end
		
		if self.WorldModelDefault != nil then
		
			self.WorldModel = self.WorldModelDefault
			
		end
		
	else
	
		--	If we're suppressed and we're using a budget suppressor
		if self:Get_IsSuppressorAttached( ) then

			if self:Get_IsLaserAttached() then
			
				--	Set our models to the suppressed versions
				self.WorldModel = self.ViewModelLaserSuppressed
				self.WorldModel = self.WorldModelLaserSuppressed

			else

				if self.SuppressorType == 1 then
				
					--	Set our models to the suppressed versions
					self.ViewModel = self.ViewModelSuppressed

				end

				--	Set our models to the suppressed versions
				self.WorldModel = self.WorldModelSuppressed
				
			end
			
		elseif self:Get_IsBipodDeployed( ) then
		
			if self.DeployableType == 2 then
			
				--	Set our models to the bipod versions
				self.WorldModel = self.WorldModelBipod
				
			elseif self.DeployableType == 3 then
			
				--	Set our models to the bipod versions
				self.ViewModel = self.ViewModelBipod
				self.WorldModel = self.WorldModelBipod
				
			end
			
		elseif self:Get_IsStockExtended( ) then
		
			if self.DeployableType == 5 then
			
				--	Set our models to the bipod versions
				if self.WorldModelBipod != nil then
				
					self.WorldModel = self.WorldModelBipod
					
				end
				
			elseif self.DeployableType == 4 then
			
				--	Set our models to the suppressed versions
				self.ViewModel = self.ViewModelStockOut
				self.WorldModel = self.WorldModelStockOut
				
			end

		elseif self:Get_IsLaserAttached( ) then

			if self:Get_IsSuppressorAttached() then
			
				--	Set our models to the suppressed versions
				self.WorldModel = self.ViewModelLaserSuppressed
				self.WorldModel = self.WorldModelLaserSuppressed

			else

				--	Set our models to the suppressed versions
				self.ViewModel = self.ViewModelLaser
				self.WorldModel = self.WorldModelLaser
				
			end

		end
		
	end

	if ( Command ) == ReDeploy then
	
		self:ToggleOutAndIn()
		
		Command = nil
		
	end
	
end

function SWEP:ToggleOutAndIn( )

	self:Holstered( )

	if SERVER then
	
		self.Owner:SelectWeapon( "v92_int_blank" )
		
	end 
	
	--	This has got to be 

	self:Deploy( )

	if SERVER then
	
		self.Owner:SelectWeapon( self.WeaponName )
		
	end 
	
	--	the dumbest fix,

	self:Deploy( )

	if SERVER then
	
		self.Owner:SelectWeapon( "v92_int_blank" )
		
	end 
	
	--	but damned
	
	self:Deploy( )

	if SERVER then
	
		self.Owner:SelectWeapon( self.WeaponName )
		
	end 
	
	--	if it works

	self:Deploy( )
	
end

function SWEP:ToggleStock( )

	--	If we're owner, a player, valid, and alive, and we have a supressor then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then

			local VModel = self.Owner:GetViewModel( )

			--	If we're silenced then
			if self:Get_IsStockExtended( ) then
			
				self:Set_IsStockExtended( false )

				self.ActionDelay = ( CurTime( ) + 2 )
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				self:MessagePrint( "StockFolded" )

				--	Add our delay to prevent spam
				self.ActionDelay = CurTime( ) + 1
				
			elseif self:Get_IsStockExtended( ) == false then
				--	else if we're not silenced
				self:Set_IsStockExtended( true )

				self.ActionDelay = ( CurTime( ) + 2 )
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				self:MessagePrint( "StockUnfolded" )

				--	Add our delay for the same reason
				self.ActionDelay = CurTime( ) + 1
				
			end
			
		else
		
			--	If we don't have a supressor or we're not valid, return back and end the function
			return false
			
		end
		
		self:ChangeModel( ReDeploy )
		
	end
	
end --	Toggle our supressor

function SWEP:ToggleFireMode( )	
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
			
			local VModel = self.Owner:GetViewModel( )

			if self:Get_IsInIronSights( ) then
				self:ToggleIronsights( )
			end

			--	Cycle to the next mode
			self.CurrentMode = self.CurrentMode + 1

			--	If we're too small, reset it
			if self.CurrentMode <= 1 then
				self.CurrentMode = 1
			end

			--	If our CurrentMode goes higher than 4
			if self.CurrentMode > 5 then
				--	Toggle the holster off
				self:ToggleHolster( )

				--	Play our draw animation and add a delay
				if ( self.SeqLowToIdle != nil ) then

					self:SpecialAnimation( table.Random( self.SeqLowToIdle ) )

				elseif ( self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqDrawSupp != nil ) then

					self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

				elseif self:Clip1( ) <= 0 and self.SeqDrawEmpty != nil then

					self:SpecialAnimation( table.Random( self.SeqDrawEmpty ) )

				elseif self.SeqDraw != nil then

					self:SpecialAnimation( table.Random( self.SeqDraw ) )

				end

				self:SetNextPrimaryFire( CurTime( ) + 1.5 )
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

			if self.HasSpecialFireMode[ 1 ] == false and self.CurrentMode == 4 then
				self.CurrentMode = 5
			end

			--	If single fire is true, and current mode is 1 then
			if self.FireMode[ 2 ] and self.CurrentMode == 1 then
				--	Tell our player that he's in Semi-Auto
				
				if self.Base == VNTCB.Bases.WepNade then

					self:MessagePrint( "ModeGrenade" )

				elseif self.BoltAction then

					self:MessagePrint( "ModeBoltAction" )

				elseif self.RocketLauncherAnimatedDoD then
				
					self:MessagePrint( "ModePrimed" )

				elseif self.RevolverAction == 1 then

					self:MessagePrint( "ModeSingleAction" )
				
				elseif self.RevolverAction == 2 then
				
					self:MessagePrint( "ModeDoubleAction" )

				else

					self:MessagePrint( "ModeSemi" )

				end

				--	If it's set to RU mode
				if self.SelectorSwitchSNDType == 2 then

					self:EmitSound( self.Sounds.ModeSemiRU )

					--	Emit our switch sound
					if SERVER then

						--	Play a ruskie sound

						--self:PlaySounds( "ModeSemiRU" )
						
					end

				--	Else it's not Ruskie
				else

					self:EmitSound( self.Sounds.ModeSemiUS )

					--	Emit our switch sound
					if SERVER then

						--	Play a US sound
						--self:PlaySounds( "ModeSemiUS" )
					
					end
					
				end
				
			elseif self.FireMode[ 3 ] and self.CurrentMode == 2 then
			
				--	If burst fire is true, and current mode is 2 then
				--	Tell our player that he's in Burst

				self:MessagePrint( "ModeBurst" )

				--	If it's set to RU mode
				if self.SelectorSwitchSNDType == 2 then

					self:EmitSound( self.Sounds.ModeBurstRU )

					--	Emit our switch sound
					if SERVER then

						--	Play a ruskie sound

						--self:PlaySounds( "ModeSemiRU" )
						
					end

				--	Else it's not Ruskie
				else

					self:EmitSound( self.Sounds.ModeBurstUS )

					--	Emit our switch sound
					if SERVER then

						--	Play a US sound
						--self:PlaySounds( "ModeSemiUS" )
					
					end
					
				end

			--	If auto fire is true, and current mode is 3 then
			elseif self.FireMode[ 4 ] and self.CurrentMode == 3 then

				self:MessagePrint( "ModeAuto" )

				--	If it's set to RU mode
				if self.SelectorSwitchSNDType == 2 then

					self:EmitSound( self.Sounds.ModeAutoRU )

					--	Emit our switch sound
					if SERVER then

						--	Play a ruskie sound

						--self:PlaySounds( "ModeSemiRU" )
						
					end

				--	Else it's not Ruskie
				else

					self:EmitSound( self.Sounds.ModeAutoUS )

					--	Emit our switch sound
					if SERVER then

						--	Play a US sound
						--self:PlaySounds( "ModeSemiUS" )
					
					end
					
				end
						
			--	If auto fire is true, and current mode is 3 then
			elseif self.HasSpecialFireMode[ 1 ] and self.CurrentMode == 4 then

				self:MessagePrint( "ModeSpecial" )

				--	If it's set to RU mode
				if self.SelectorSwitchSNDType == 2 then

					self:EmitSound( self.Sounds.ModeBurstRU )

					--	Emit our switch sound
					if SERVER then

						--	Play a ruskie sound

						--self:PlaySounds( "ModeSemiRU" )
						
					end

				--	Else it's not Ruskie
				else

					self:EmitSound( self.Sounds.ModeBurstUS )

					--	Emit our switch sound
					if SERVER then

						--	Play a US sound
						--self:PlaySounds( "ModeSemiUS" )
					
					end
					
				end

			elseif self.CurrentMode == 5 then
			
				--	If current mode is 4 then
				--	Toggle our holster
				self:ToggleHolster( )

				self:MessagePrint( "ModeSafety" )

				--	If it's set to RU mode
				if self.SelectorSwitchSNDType == 2 then

					self:EmitSound( self.Sounds.ModeSafetyRU )

					--	Emit our switch sound
					if SERVER then

						--	Play a ruskie sound

						--self:PlaySounds( "ModeSemiRU" )
						
					end

				--	Else it's not Ruskie
				else

					self:EmitSound( self.Sounds.ModeSafetyUS )

					--	Emit our switch sound
					if SERVER then

						--	Play a US sound
						--self:PlaySounds( "ModeSemiUS" )
					
					end
					
				end

			end

			--	If we have mode switch anims, and current mode isn't safety then
			if self.CurrentMode ~= 5 then
			
				--	If we're iron sighted and we have mode anims for irons then
				-- if self:Get_IsInIronSights( ) and VModel:SelectWeightedSequence( ACT_VM_IFIREMODE ) then
				if self:Get_IsInIronSights( ) and self.SeqIronMode != nil then
				
					--	Play our specified anim
					self:SpecialAnimation( table.Random( self.SeqIronMode ) )

				elseif self:Get_IsInIronSights( ) == false and self.SeqMode != nil then

					--	Play our specified anim
					self:SpecialAnimation( table.Random( self.SeqMode ) )

				end
				
				--	Else add a basic float time
				self:SetNextPrimaryFire( CurTime( ) + 0.2 )
				self:SetNextSecondaryFire( CurTime( ) + 0.2 )
			end

			--	Add a delay before we can swap
			self.ActionDelay = CurTime() + 0.2

		end
	end
end --	Change our fire modes

function SWEP:ToggleSuppressor( )
	--	If we're owner, a player, valid, and alive, and we have a supressor then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and ( self.SuppressorType ~= 0 ) then

			local VModel = self.Owner:GetViewModel( )
			
			if self:Get_IsInIronSights( ) then
				self:ToggleIronsights( )
			end

			if self:Get_IsSuppressorAttached( ) then

				--	Take our supressor off
				
				self:Set_IsSuppressorAttached( false )

				if self.SuppressorType == 1 then

					self.ActionDelay = ( CurTime( ) + 2 )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				elseif self.SuppressorType == 2 then

					if self.SeqSuppOff != nil then

						self:SpecialAnimation( table.Random( self.SeqSuppOff ) )

					end
					-- self:SelectAnimationToPlay( "DetachSuppressor" , self:Clip1() )
					self.ActionDelay = ( CurTime( ) + 2 )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )
		
				end

				self:MessagePrint( "SuppressorOff" )

			--	else if we're not silenced
			else
			
				--	Attach the supressor
				self:Set_IsSuppressorAttached( true )

				if self.SuppressorType == 1 then

					self.ActionDelay = ( CurTime( ) + 2 )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				elseif self.SuppressorType == 2 then

					if self.SeqSuppOn != nil then

						self:SpecialAnimation( table.Random( self.SeqSuppOn ) )

					end
					self.ActionDelay = ( CurTime( ) + 2 )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )

				end

				self:MessagePrint( "SuppressorOn" )

			end

			self:ChangeModel( ReDeploy )

			--	Add our delay for the same reason
			self.ActionDelay = CurTime( ) + 1
			
		else
			--	If we don't have a supressor or we're not valid, return back and end the function
			return false
		end
	end
end --	Toggle our supressor

function SWEP:ToggleLaserSight( )
	--	If we're owner, a player, valid, and alive, and we have a supressor then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and ( self.SuppressorType ~= 0 ) then

			local VModel = self.Owner:GetViewModel( )

			if self:Get_IsInIronSights( ) then
				self:ToggleIronsights( )
			end

			if self:Get_IsLaserAttached( ) then

				self:Set_IsLaserAttached( false )
				self:MessagePrint( "LaserOff" )

			else

				self:Set_IsLaserAttached( true )
				self:MessagePrint( "LaserOn" )

			end

			self:ChangeModel( ReDeploy )
			
			--	Add our delay to prevent spam
			self.ActionDelay = CurTime( ) + 1

		else

			--	If we don't have a supressor or we're not valid, return back and end the function
			return false

		end

	end

end --	Toggle our supressor

function SWEP:ToggleBipod( )
	
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if self:Get_IsBipodDeployed( ) then
			
				self:Set_IsBipodDeployed( false )

				self:MessagePrint( "BipodUp" )

			elseif self:Get_IsBipodDeployed( ) == false then
			
				self:Set_IsBipodDeployed( true )

				self:MessagePrint( "BipodDown" )
				
			end

			self:ChangeModel( ReDeploy )

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 1
			
		end
	end
end --	Toggle our bipod

function SWEP:ToggleDeployedMode( MagazineCount )
	
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if self:Get_IsGenericDeployed( ) then

				self:Set_IsGenericDeployed( false )

				self:MessagePrint( "DeployedOut" )
				
				if self.BeltFedAnimatedDoD then

					--	Arbitrary number, might break
					local EnumNumber = (553 - MagazineCount)

					self:SendWeaponAnim( EnumNumber )

				end
				
				if self.RocketLauncherAnimatedDoD then
				
					self:SelectAnimationToPlay( "UnDeploy" )
				
				end
				
			elseif self:Get_IsGenericDeployed( ) == false then

				self:Set_IsGenericDeployed( true )

				self:MessagePrint( "DeployedIn" )

				if self.BeltFedAnimatedDoD then
				
					--	Arbitrary number, might break
					local EnumNumber = (563 - MagazineCount)
					
					self:SendWeaponAnim( EnumNumber )
					
				end

				
				if self.RocketLauncherAnimatedDoD then
				
					self:SelectAnimationToPlay( "Deploy" )
				
				end
				
			end

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 2
			
			return false
			
		end
	end
end --	Toggle our Deploy Mode

function SWEP:ToggleGrenadeMode( )
	--	If we're owner, a player, valid, and alive, and our delay is expired, and we have a GL then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then

			--	If we're not in GL mode then
			if self:Get_IsGrenadeLauncherDeployed( ) == false then
			
				--	We are now!
				self:Set_IsGrenadeLauncherDeployed( true )

				-- if self:GetSequence( checkHolsterM203 ) != -1 then
				if self.SeqHolsterM203 != nil then

					-- print( "Holster M203" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqHolsterM203 ) )

				elseif self.SeqDrawDeployed != nil then

					-- print( "Draw Deployed" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqDrawDeployed ) )

				elseif self.SeqDraw != nil then

					-- print( "Draw" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqDraw ) )

				end

				self:MessagePrint( "GrenadeDeployed" )

			elseif self:Get_IsGrenadeLauncherDeployed( ) then

				--	else if we are in GL mode then
				--	Play the deploy holster anim

				if self.SeqDraw203 != nil then

					-- print( "Draw M203" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqDraw203 ) )

				elseif self.SeqDrawDeployed != nil then

					-- print( "Draw Deployed" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqDrawDeployed ) )

				-- else
				elseif self.SeqDraw != nil then

					-- print( "Draw" )

					--	Play the empty reload animation
					self:SpecialAnimation( table.Random( self.SeqDraw ) )

				end

				--	Turn off the launcher mode		
				self:Set_IsGrenadeLauncherDeployed( false )

				self:MessagePrint( "GrenadeHolstered" )

			end

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 2
			--	Add a delay based on sequence speed
			VModel = self.Owner:GetViewModel()
			self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
			self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1  )

		end
	end
end --	Toggle our grenade launcher

function SWEP:ToggleIronsights( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
		
			local VModel = self.Owner:GetViewModel( )

			--print( "toggle irons" )
		
			--	Doomguy doesn't need iron sights because he's a real man
			if GetConVarNumber( "VNT_SWep_Base_Doom_Toggle" ) != 0 then
				return false
			end
			
			if self.IsCloseToWall then
				return false
			else
				--	If we're not iron sighted then
				if self:Get_IsInIronSights( ) == false then
				
					if self.ScopeType == 1 then
					
						if ( self:Get_IsInScope( ) == false ) then
						
							self:Set_ZoomAmount( self.ScopeMultipliers[ 2 ] )
							self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 2 ] , 0.3 )
							
						end
						
					elseif self.ScopeType == 2 then
					
						if ( self:Get_IsInScope( ) == false ) then

							--	If zeroed in
							if self.IsCloseZoomed then
							
								self.ZoomAmount = self.ScopeMultipliers[ 3 ]
								
							else
							
								self.ZoomAmount = self.ScopeMultipliers[ 2 ]
								
							end

							--self.Owner:SetFOV( self.ViewModelFOV - 10 , 0.3 )
						end
					end

					--sound.Play( self.Sounds.ZoomIn , self:GetPos() )
					self:EmitSound( self.Sounds.ZoomIn )

					--	Set our Iron sighted to true
					self:Set_IsInIronSights( true )
					self:Set_IsInScope( true )

					--
					--	if mag is empty and we have empty anims then
					if self:Get_IsInIronSights( ) == false then

						if self:Clip1() == 0 then

							if self.SeqIronInEmptySupp != nil and self:Get_IsSuppressorAttached( ) then

								self:SpecialAnimation( table.Random( self.SeqIronInEmptySupp ) )

							elseif self.SeqIronInEmpty != nil then

								self:SpecialAnimation( table.Random( self.SeqIronInEmpty ) )

							end

						end

					else

						if self.SeqIronInSupp != nil and self:Get_IsSuppressorAttached( ) then

							self:SpecialAnimation( table.Random( self.SeqIronInSupp ) )

						elseif self.SeqIronIn != nil then

							self:SpecialAnimation( table.Random( self.SeqIronIn ) )

						elseif ( self:Clip1( ) == 0 and self.SeqIdleEmpty != nil ) then
						
							--	play our empty idle anims
							self:SpecialAnimation( table.Random( self.SeqIdleEmpty ) )
							
						else
						
							-- else if mag isn't empty or we don't have empty anims then
							--	if we have a suppressor and we're suppressed
							if self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqIdleSupp != nil then

								--	play our suppressed idle
								self:SpecialAnimation( table.Random( self.SeqIdleSupp ) )
							
							else--if self.SeqIdle != nil then

								--	play our normal idle anims
								self:SpecialAnimation( table.Random( self.SeqIdle ) )

							end

						end
						
					end
					--]]

					--	Set our animaion speed to 0 to make aiming easier
					VModel:SetPlaybackRate( 0 )
					
				elseif self:Get_IsInIronSights( ) then
				
					if self.ScopeType == 1 then
					
						if ( self:Get_IsInScope( ) ) then

							self:Set_ZoomAmount( self.ScopeMultipliers[ 2 ] )
							self.Owner:SetFOV( 0 , 0.3 )

						end
						
					elseif self.ScopeType == 2 then
					
						if ( self:Get_IsInScope( ) ) then

							self.Owner:SetFOV( 0 , 0.3 )
							
						end

					end

					--sound.Play( self.Sounds.ZoomOut , self:GetPos() )
					self:EmitSound( self.Sounds.ZoomOut )

					--	Set our iron sight to false
					self:Set_IsInIronSights( false )
					self:Set_IsInScope( false )

					--
					--	if mag is empty and we have empty anims then
					if ( self:Clip1( ) == 0 and self.SeqIdleEmpty != nil ) then

						--	play our idle empty anim
						self:SpecialAnimation( table.Random( self.SeqIdleEmpty ) )

					else

						--	else if mag isn't empty or we don't have empty anims then
						--	if we have a suppressor and we're suppressed
						if self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqIdleSupp != nil then

							--	play our suppressed idle
							self:SpecialAnimation( table.Random( self.SeqIdleSupp ) )
							
						else--if self.SeqIdle != nil then

							--	play our normal idle anims
							self:SpecialAnimation( table.Random( self.SeqIdle ) )

						end

					end
					--]]

					--	Reset our snimation speed
					VModel:SetPlaybackRate( 1 )

				end		

			end

		end

		--	Add a delay before we can swap
		self.ActionDelay = CurTime( ) + 0.3
		--	play a delay since we can't use non-existant animation lengths
		self:SetNextPrimaryFire( CurTime( ) + 0.3 )
		self:SetNextSecondaryFire( CurTime( ) + 0.3 )

	end

end --	Toggle our iron sights

function SWEP:ToggleZoom( )
	--	If we're owner, a player, valid, and alive, and not holstered, and our delay is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then
				
			if self.Owner and self.Owner:IsPlayer( ) and self.Owner:IsValid( ) and self.Owner:Alive( ) and self:Get_IsHolstered( ) == false and self.ActionDelay <= CurTime( ) then
				if self.HasVariableZoom then
					if self.ScopeType == 1 then
						if self:Get_IsInScope( ) and self.IsCloseZoomed == false and not self.HasRTScope then
							--	Set our FoV
							self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 3 ] , 0.3 )
							self.IsCloseZoomed = true
							--self:PlaySounds( "ZoomIn" )
							self:EmitSound( self.Sounds.ZoomIn )
						elseif self:Get_IsInScope( ) and self.IsCloseZoomed and not self.HasRTScope then
							--	Set our FoV
							self.Owner:SetFOV( 60 * self.ScopeMultipliers[ 2 ] , 0.3 )
							self.IsCloseZoomed = false
							--self:PlaySounds( "ZoomOut" )
							self:EmitSound( self.Sounds.ZoomOut )
						end
					elseif self.ScopeType == 2 then
						if self:Get_IsInScope( ) and self.IsCloseZoomed == false then
							self.IsCloseZoomed = true
							--self:PlaySounds( "ZoomIn" )
							self:EmitSound( self.Sounds.ZoomIn )
						elseif self:Get_IsInScope( ) and self.IsCloseZoomed then
							self.IsCloseZoomed = false
							--self:PlaySounds( "ZoomOut" )
							self:EmitSound( self.Sounds.ZoomOut )
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

			local VModel = self.Owner:GetViewModel( )

			--	if we're not holstered then
			if self:Get_IsHolstered( ) == false then
				--	we are now!
				self:Set_IsHolstered( true )

				--	Turn off iron sights if we're in them
				if self:Get_IsInIronSights( ) then
					self:ToggleIronsights( )
				end

				--	Add a toggle delay
				self.ActionDelay = CurTime( ) + 1

				--	if we have low anims then
				if self.SeqDownM203 != nil or self.SeqLowIdle != nil then
				
					--	if we're in launcher mode then
					-- if self:Get_IsGrenadeLauncherDeployed( ) and VModel:SelectWeightedSequence( ACT_VM_DOWN_M203 ) then
					if self.SeqDownM203 != nil then
						
						--	play the down deployed anim
						self:SpecialAnimation( table.Random( self.SeqDownM203 ) )

					elseif self.SeqLowIdle != nil then
					
						--	else we're not in launcher mode
						--	play the normal down animation
						self:SpecialAnimation( table.Random( self.SeqLowIdle ) )

					end

				elseif self.SeqHolster != nil then
				
					--	else we don't have low anims, so just play the holster anim
					self:SpecialAnimation( table.Random( self.SeqHolster ) )
					
				end
				
			else
			
				--	if we're holstered
				--	if we have a suppressor and we're suppressed
				if self.SuppressorType == 2 and self:Get_IsSuppressorAttached( ) and self.SeqDrawSupp != nil then
				
					--	play our suppressed draw
					self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

				elseif self:Get_IsGrenadeLauncherDeployed( ) and self.SeqIdleM203 != nil then

					--	play the deployed anim
					self:SpecialAnimation( table.Random( self.SeqIdleM203 ) )

				elseif self.SeqLowToIdle != nil then

					self:SpecialAnimation( table.Random( self.SeqLowToIdle ) )

				elseif self.SeqDraw != nil then
				
					--	Play our normal draw anim
					self:SpecialAnimation( table.Random( self.SeqDraw ) )

				end

				--	set our holster to false
				self:Set_IsHolstered( false )
				
			end

			--	add a delay
			self.ActionDelay = CurTime( ) + 1
		end
	end
end --	Toggle our holster

function SWEP:ToggleDepthMod( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive? No? Go to hell.
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Get our eye trace
			local EyeTrace = self.Owner:GetEyeTrace( )

			--	If our trace hit a valid ent, an NPC, a Player, and it's a pistol then
			if EyeTrace.Entity:IsValid( ) then
				if EyeTrace.Entity:GetClass( ) == self.GrenadeLauncherEntity then return end

				if ( ( EyeTrace.Entity:IsNPC( ) or EyeTrace.Entity:IsPlayer( ) ) and GetConVarNumber( "VNT_Base_SWep_Doom_Toggle" ) == 0 ) and not ( self.WeaponType == 1 ) then
					--	Don't shoot
					self.CantShootNearWall = true
				else
					--	Else shoot
					self.CantShootNearWall = false
				end
			end
			
			--	If trace hit something, and the distance is within range, and we're not near a wall, and don't shoot is false then
			if ( ( EyeTrace.Hit and EyeTrace.HitPos:Distance( self.Owner:GetShootPos( ) ) < 45 ) and not ( self.IsCloseToWall and self.CantShootNearWall ) or self:Get_IsHolstered( ) ) then

			
				
				if (self.WeaponType == 1 or self.WeaponType == 9) or (self.AllowDepthMod == false) or ( prone and self.Owner:IsProne() and self.Owner:GetVelocity():Length() > 1 ) then
					
					
				if prone and self.Owner:IsProne() and self.Owner:GetVelocity():Length() < 1 then return true end
					--	Can't get the prone to make it pull back while moving yet, spent over an hour messing around so far. Don't go anywhere, I'll be back.
					--if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Prone Exists: " .. prone ) end
					--if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Owner is: " .. self.Owner:IsProne() ) end
					--if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Owner is moving: " .. self.Owner:GetVelocity():Length() ) end
					
					--	We ignore it
					self.IsCloseToWall = false
					
				else
				
					--	We're near a wall
					self.IsCloseToWall = true
				
				end

				--	If we're not holstered, we're not sprinting, and we're in iron sights
				if self:Get_IsHolstered( ) == false and not self.Owner:KeyDown( IN_SPEED ) and self:Get_IsInIronSights( ) then
				
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

		end
		
	end
	
end

------------------------------------------------------
--	Entity Shooter Functions						--
------------------------------------------------------

function SWEP:EntityShooter( )

	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			-- print( "ENT SHOOTER 1" )
		
			local GrenadeDelay = 1 -- (Float) Don't touch
			
			--	If the launcher is empty, and the bolt is back then
			if self:Get_IsGrenadeLauncherLoaded( ) == false then

				-- print( "Launcher Loaded: " .. tostring( self:Get_IsGrenadeLauncherLoaded() ) )

				if self.LauncherPinForward == false then

					print( "Launcher Pin Forward: " .. tostring( self.LauncherPinForward ) )

					self:EmitSound( self.Sounds.PrimaryDry )
					
					--	Emit our empty sound
					if SERVER then
					
						self:PlaySounds( "PrimaryDry" )
						
					end

					--	Bolt is forward
					self.LauncherPinForward = true
					
					print( "ENT SHOOTER DRY" )
					
				end
				
			else -- if self:Get_IsGrenadeLauncherLoaded( ) then

				-- print( "Launcher Loaded: " .. tostring( self:Get_IsGrenadeLauncherLoaded() ) )

				if self.LauncherPinForward == false then

					print( "Launcher Pin Forward: " .. tostring( self.LauncherPinForward ) )

					if self.WeaponType != VNTCB.WeaponType.GLauncher then

						self:TakeSecondaryAmmo( 1 )

					else

						self:TakePrimaryAmmo( 1 )

						self:PlayBulletCraft()

					end
					
					self:Set_IsGrenadeLauncherLoaded( false )

					--	If our muzzle flashes are enabled
					if not GetConVarNumber( "VNT_Base_SWep_FlashToggle" ) == 0 then
						
						self:EmitMuzzleFlash( "GrenadeLauncher" )
						self:EmitMuzzleLight( "GrenadeLauncher" )

					end
					
					if SERVER then

						-- print( "Launcher Firing Ent" )

						self:PlaySounds( "GrenadeFire" )

						local LaunchedGren = ents.Create( self.GrenadeLauncherEntity )
						LaunchedGren:SetPos( self:GetAttachment( self.MuzzleAttach ).Pos ) -- + self.Owner:EyeAngles( ):Right( ) * 0 )
						LaunchedGren:SetAngles( self:GetAttachment( self.MuzzleAttach ).Ang + Angle( 0 , 270 , 0 ) )
						LaunchedGren:SetOwner( self.Owner )
						LaunchedGren:Spawn( )
						LaunchedGren:Activate( )
						LaunchedGren:SetVelocity( self.Owner:EyeAngles( ):Forward( ) * self.GrenadeLauncherForce + Vector( 0 , 0 , 50 ) )
						
					end
					
					-- print( "ENT SHOOTER FIRED" )
 
				end

			end

			--	Set a delay
			self:SetNextPrimaryFire( CurTime( ) + GrenadeDelay )
			self:SetNextSecondaryFire( CurTime( ) + GrenadeDelay )

			-- print( "ENT SHOOTER RUN" )
			
		end
		
	end
	
end

------------------------------------------------------
--	Toss Weapon Functions							--
------------------------------------------------------

function SWEP:OnDrop( )
	--return false
end

function SWEP:Throw( )
	--	If we're owner, a player, valid, and alive then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			--	If you're holstered and you press USE+RELOAD throw our weapon
			--	Play the holster animation
			if self.SeqHolster != nil then

				self:SpecialAnimation( table.Random( self.SeqHolster ) )

			end
		
			--	Set a delay so we aren't shooting while throwing
			self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) )
			self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) )
			
			self.ActionDelay = ( CurTime( ) + 10 )

			--	Return the ammo from the mag
			--self.Owner:GiveAmmo( self:Clip1( ) , self:GetPrimaryAmmoType( ) , true )

			--	Run our drop animation 
			self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_ITEM_GIVE )
			
			self:EmitSound( self.Sounds.Throw )
			
			if SERVER then
				--self:PlaySounds( "Throw" )
			end
			
			if self.WeaponEntityName != nil then
				--	Get our position
				local pos = self.Owner:GetShootPos( )
				pos = pos + self.Owner:GetForward( ) * 24
				pos = pos + self.Owner:GetRight( ) * 0
				pos = pos + self.Owner:GetUp( ) * 2

				-- ents.Create only exists in the server realm
				--	Create our weapon entity
				if SERVER then
					local Tosser = ents.Create( tostring(self.WeaponEntityName) )
					Tosser:SetAngles( self.Owner:EyeAngles( ) )
					Tosser:SetPos( pos )
					Tosser:Spawn( )
					Tosser:Activate( )
					--	Activate our physics
					local phys = Tosser:GetPhysicsObject( )
					phys:SetVelocity( self.Owner:GetAimVector( ) * self.ThrowPower )
					phys:AddAngleVelocity( Vector( 47 , 0 , 0 ) )
				end
			else
				self:DropWeapon()
			end
			--	Remove the weapon from our slots
			if SERVER then
				self.Owner:StripWeapon( self.WeaponName )
			end
			--	And return to the last used weapon
			--RunConsoleCommand( "lastinv" )
		end
	end
end --	Throw our weapon

------------------------------------------------------
--	Melee Functions									--
------------------------------------------------------

function SWEP:Melee( Type )

	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			if not ( self.Owner:KeyDown( IN_SPEED ) or self:Get_IsHolstered( ) ) then

				local PrimaryDelay = ( 60 / self.Primary.RPM ) -- (Float) Don't touch
				local PrimaryDamage = ( math.random( self.Primary.PureDmg - 3 , self.Primary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )
				local SecondaryDelay = ( 60 / self.Secondary.RPM ) -- (Float) Don't touch
				local SecondaryDamage = ( math.random( self.Secondary.PureDmg - 3 , self.Secondary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

				local Attack = Type or "Slash"

				if Attack == "Slash" then

					local tr = { }
					tr.start = self.Owner:GetShootPos( )
					tr.endpos = self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * self.MeleeRange )
					tr.filter = self.Owner
					tr.mask = MASK_SHOT
					local trace = util.TraceLine( tr )
					local trEnt = trace.Entity
					if ( trace.HitSky ) then return end
					-- Play the melee attack animation

					if trace.Hit then
					
						if trEnt:IsWorld( ) then
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit world!") end
							
							self:EmitSound( self.Sounds.MeleeHitWall )
							
							--	Play hit sound
							if SERVER then
								--self:PlaySounds( "MeleeHitWall" )
							end
							
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
							if self.IsBladedMelee then
								--	make decal
								util.Effect( "Sparks" , FX )
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
						elseif trEnt:IsNPC( ) or trEnt:IsPlayer( ) then
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit character!") end
							
							self:EmitSound( self.Sounds.MeleeHitCharacter )
							
							--	Play hit sound
							if SERVER then
								--self:PlaySounds( "MeleeHitCharacter" )
							end
							
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
							if self.IsBladedMelee then
								--	make decal
								util.Effect( "Blood" , FX )
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Do our damage
							if SERVER then
							
								local dmg = DamageInfo( )
								dmg:SetDamage( PrimaryDamage )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_SLASH )
								
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end
							
						elseif trEnt:GetPhysicsObject( ):IsValid( ) and trEnt:IsWorld( ) and not ( trEnt:IsPlayer( ) or trEnt:IsNPC( ) ) then
							
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit physics object!") end
							
							--	Play hit sound
							if self.HasMeleeAttack != false then
								if SERVER then
									--self:PlaySounds( "WhipHitWall" )
								end
								self:EmitSound( self.Sounds.WhipHitWall )
							else
								if SERVER then
									--self:PlaySounds( "MeleeHitWall" )
								end
								self:EmitSound( self.Sounds.MeleeHitWall )
							end

							if self.IsBladedMelee then
								--	make decal
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Apply force
							trEnt:GetPhysicsObject( ):ApplyForceOffset( self.Owner:GetAimVector( ) * self.Primary.Force * trEnt:GetPhysicsObject( ):GetMass( ) , trace.HitPos )

							--	Do our damage
							if SERVER then
								local dmg = DamageInfo( )
								dmg:SetDamage( PrimaryDamage )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_SLASH )
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end
						end
					
					else
					
						if self.HasMeleeAttack != false then
						
							self:EmitSound( self.Sounds.WhipMiss )
							self:EmitSound( self.Sounds.MeleeMiss )

							if SERVER then
								--self:PlaySounds( "WhipMiss" )
								--self:PlaySounds( "MeleeMiss" )
							end

							self:SelectAnimationToPlay( "HitCenter" , self:Clip1() )

						else
						
							self:EmitSound( self.Sounds.MeleeMiss )

							if SERVER then
								--self:PlaySounds( "MeleeMiss" )
							end

							self:SelectAnimationToPlay( "MissCenter" , self:Clip1() )
					
						end
						
					end
					
					--	Play animation
					if self.SeqPrimary != nil then

						self:SpecialAnimation( table.Random( self.SeqPrimary ) )

					elseif self.SeqHitCenter != nil then

						self:SpecialAnimation( table.Random( self.SeqHitCenter ) )

					elseif self.SeqHitLeft != nil then

						self:SpecialAnimation( table.Random( self.SeqHitLeft ) )

					elseif self.SeqMissCenter != nil then

						self:SpecialAnimation( table.Random( self.SeqMissCenter ) )

					end

					--	Play our third-person firing animation
					self.Owner:SetAnimation( PLAYER_ATTACK1 )
					--	Play normal sound
					--	Make ViewModel pistol whip effect
					self:FireViewPunches( )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + PrimaryDelay )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + PrimaryDelay )

				elseif Attack == "Stab" then
				
					local tr = { }
					tr.start = self.Owner:GetShootPos( )
					tr.endpos = self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * self.MeleeRange )
					tr.filter = self.Owner
					tr.mask = MASK_SHOT
					local trace = util.TraceLine( tr )
					local trEnt = trace.Entity
					if ( trace.HitSky ) then return end

					if trace.Hit then
						if trEnt:IsWorld( ) then
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit world!") end

							self:EmitSound( self.Sounds.MeleeHitWall )

							if SERVER then
								--self:PlaySounds( "MeleeHitWall" )
							end
							
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
							if self.IsBladedMelee then
								--	make decal
								util.Effect( "Sparks" , FX )
								util.Decal( "Impact.Metal" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
						elseif trEnt:IsNPC( ) or trEnt:IsPlayer( ) then
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit character!") end
							
							--	Play hit sound
							if self.HasMeleeAttack != false then

								self:EmitSound( self.Sounds.WhipHitCharacter )

								if SERVER then
									--self:PlaySounds( "WhipHitCharacter" )
								end

								self:SelectAnimationToPlay( "HitCenter" , self:Clip1() )

							else
							
								self:EmitSound( self.Sounds.MeleeHitCharacter )

								if SERVER then
									--self:PlaySounds( "MeleeHitCharacter" )
								end
							end

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
							if self.IsBladedMelee then
								--	make decal
								ParticleEffect("blood_impact_red_01", trace.HitPos, trace.HitNormal:Angle())
								util.Effect( "Blood" , FX )
								util.Decal( "Impact.Metal" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Do our damage
							if SERVER then
								local dmg = DamageInfo( )
								dmg:SetDamage( SecondaryDamage * 4 )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_SLASH )
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end
						elseif trEnt:GetPhysicsObject( ):IsValid( ) and not ( trEnt:IsPlayer( ) or trEnt:IsNPC( ) or trEnt:IsWorld( ) ) then
							
							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit physics object!") end

							--	Play hit sound
							if self.HasMeleeAttack != false then
								if SERVER then
									--self:PlaySounds( "WhipHitWall" )
								end
								
								self:EmitSound( self.Sounds.WhipHitWall )
							else
								if SERVER then
									--self:PlaySounds( "MeleeHitWall" )
								end
								
								self:EmitSound( self.Sounds.MeleeHitWall )
							end

							if self.IsBladedMelee then
								--	make decal
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Apply force
							trEnt:GetPhysicsObject( ):ApplyForceOffset( self.Owner:GetAimVector( ) * self.Primary.Force * trEnt:GetPhysicsObject( ):GetMass( ) , trace.HitPos )

							--	Do our damage
							if SERVER then
								local dmg = DamageInfo( )
								dmg:SetDamage( SecondaryDamage * 4 )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_SLASH )
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end
						end
					else
						--	Play hit sound
						if SERVER then
							self:PlaySounds( "MeleeMiss" )
						end

						self:EmitSound( self.Sounds.MeleeMiss )
					end
					
					--	Play animation
					if self.SeqSecondary != nil then

						self:SpecialAnimation( table.Random( self.SeqSecondary ) )

					elseif self.SeqHitCenter != nil then

						self:SpecialAnimation( table.Random( self.SeqHitCenter ) )

					elseif self.SeqHitRight != nil then

						self:SpecialAnimation( table.Random( self.SeqHitRight ) )

					elseif self.SeqMissCenter != nil then

						self:SpecialAnimation( table.Random( self.SeqMissCenter ) )

					elseif self.SeqPrimary != nil then

						self:SpecialAnimation( table.Random( self.SeqPrimary ) )

					end

					--	Play our third-person firing animation
					self.Owner:SetAnimation( PLAYER_ATTACK1 )
					--	Play normal sound
					--	Make ViewModel pistol whip effect
					self:FireViewPunches( )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + PrimaryDelay )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + PrimaryDelay )
					
				elseif Attack == "Bash" then
					local tr = { }
					tr.start = self.Owner:GetShootPos( )
					tr.endpos = self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * self.MeleeRange )
					tr.filter = self.Owner
					tr.mask = MASK_SHOT
					local trace = util.TraceLine( tr )
					local trEnt = trace.Entity
					if ( trace.HitSky ) then return end
					
					-- Play the melee attack animation
					if self.MeleeAnimType == 3 then
						local AnimType = math.random( 1, 2 )
						if AnimType == 1 then
							self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND )
						else
							self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND )
						end
						AnimType = nil
					elseif self.MeleeAnimType == 2 then
						self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND )
					else
						self.Owner:DoAnimationEvent( ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND )
					end

					if trace.Hit then

						if trEnt:IsWorld( ) then

							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit world!") end

							self:EmitSound( self.Sounds.WhipHitWall )

							--	Play hit sound
							if SERVER then
								--self:PlaySounds( "WhipHitWall" )
							end

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
							if self.IsBladedMelee then
								--	make decal
								util.Effect( "Sparks" , FX )
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
						elseif trEnt:IsNPC( ) or trEnt:IsPlayer( ) then

							if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Melee hit character!") end

							self:EmitSound( self.Sounds.WhipHitCharacter )

							--	Play hit sound
							if SERVER then
								--self:PlaySounds( "WhipHitCharacter" )
							end

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
							if self.IsBladedMelee then
								--	make decal
								util.Effect( "Blood" , FX )
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Do our damage
							if SERVER then
								local dmg = DamageInfo( )
								dmg:SetDamage( PrimaryDamage )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_CLUB )
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end
						elseif trEnt:GetPhysicsObject( ):IsValid( )and not ( trEnt:IsPlayer( ) or trEnt:IsNPC( ) or trEnt:IsWorld( ) ) then

							self:EmitSound( self.Sounds.WhipHitWall )

							--	Play hit sound
							if SERVER then
								--self:PlaySounds( "WhipHitWall" )
							end

							if self.IsBladedMelee then
								--	make decal
								util.Decal( "ManhackCut" , trace.HitPos + trace.HitNormal , trace.HitPos - trace.HitNormal )
							end
							--	Apply force
							trEnt:GetPhysicsObject( ):ApplyForceOffset( self.Owner:GetAimVector( ) * self.Primary.Force * trEnt:GetPhysicsObject( ):GetMass( ) , trace.HitPos )

							--	Do our damage
							if SERVER then
								local dmg = DamageInfo( )
								dmg:SetDamage( PrimaryDamage / 4 )
								dmg:SetAttacker( self.Owner )
								dmg:SetInflictor( self )
								dmg:SetDamageForce( self.Owner:GetAimVector( ) * self.Primary.Force )
								dmg:SetDamagePosition( trace.HitPos )
								dmg:SetDamageType( DMG_CLUB )
								--	Apply damage to target
							
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( true )
								end

								trEnt:TakeDamageInfo( dmg )
								
								if ( self.Owner:IsPlayer() ) then
									self.Owner:LagCompensation( false )
								end
								
							end

						end

						if self.SeqSecondary != nil then

							self:SpecialAnimation( table.Random( self.SeqSecondary ) )

						else

							if not self.IsAkimbo then

								if self:Clip1() > 0 then

									-- if VModel:SelectWeightedSequence( ACT_VM_HITCENTER ) then
									if self.SeqHitCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter ) )

										--print( "hit center a" )

									elseif self.SeqHitCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter2 ) )

										--print( "hit center 2 a" )

									end

								else

									if self.SeqHitCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter2 ) )

										--print( "hit center 2 b" )

									elseif self.SeqHitCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter ) )

										--print( "hit center b" )

									end

								end

							else
							
								if self:Clip1() > 0 and self:Clip2() > 0 then

									if self.SeqHitCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter ) )

										--print( "hit center c" )

									elseif self.SeqHitCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqHitCenter2 ) )

										--print( "hit center 2 c" )

									end
									
								else
								
									if self:Clip1() > 0 and self:Clip2() < 0 then

										if self.SeqHitRight != nil then

											self:SpecialAnimation( table.Random( self.SeqHitRight ) )

										elseif self.SeqHitRight2 != nil then

											self:SpecialAnimation( table.Random( self.SeqHitRight2 ) )

										end

									elseif self:Clip1() < 0 and self:Clip2() > 0 then

										if self.SeqHitLeft != nil then

											self:SpecialAnimation( table.Random( self.SeqHitLeft ) )

										elseif self.SeqHitLeft2 != nil then

											self:SpecialAnimation( table.Random( self.SeqHitLeft2 ) )

										end

									else

										-- print( "hello son where are the crack" )

									end

								end

							end

						end

					else
				
						if self.SeqSecondary != nil then

							self:SpecialAnimation( table.Random( self.SeqSecondary ) )

						else

							if not self.IsAkimbo then

								if self:Clip1() > 0 then

									-- if VModel:SelectWeightedSequence( ACT_VM_MISSCENTER ) then
									if self.SeqMissCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter ) )

										--print( "miss center" )

									elseif self.SeqMissCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter2 ) )

										--print( "miss center 2a" )

									end

								else

									if self.SeqMissCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter2 ) )

										--print( "miss center 2b" )

									elseif self.SeqMissCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter ) )

										--print( "miss center" )

									end

								end

							else
							
								if self:Clip1() > 0 and self:Clip2() > 0 then

									-- if VModel:SelectWeightedSequence( ACT_VM_MISSCENTER ) then
									if self.SeqMissCenter != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter ) )

										--print( "miss center" )

									elseif self.SeqMissCenter2 != nil then

										self:SpecialAnimation( table.Random( self.SeqMissCenter2 ) )

										--print( "miss center 2c" )

									end
									
								else
								
									if self:Clip1() > 0 and self:Clip2() < 0 then

										-- if VModel:SelectWeightedSequence( ACT_VM_MISSRIGHT ) then
										if self.SeqMissRight != nil then

											self:SpecialAnimation( table.Random( self.SeqMissRight ) )

											--print( "miss right" )

										elseif self.SeqMissRight2 != nil then

											self:SpecialAnimation( table.Random( self.SeqMissRight2 ) )

											--print( "miss right 2" )

										end

									elseif self:Clip1() < 0 and self:Clip2() > 0 then

										-- if VModel:SelectWeightedSequence( ACT_VM_MISSLEFT ) then
										if self.SeqMissLeft != nil then

											self:SpecialAnimation( table.Random( self.SeqMissLeft ) )

											--print( "miss left" )

										elseif self.SeqMissLeft2 != nil then

											self:SpecialAnimation( table.Random( self.SeqMissLeft2 ) )

											--print( "miss left 2" )

										end

									else

										--print( "hello son where are the crack" )

									end

								end

							end

						end

						self:EmitSound( self.Sounds.WhipMiss )
						self:EmitSound( self.Sounds.MeleeMiss )

						--	Play missed sounds
						if SERVER then
							--self:PlaySounds( "WhipMiss" )
							--self:PlaySounds( "MeleeMiss" )
						end

					end

					--	Play our third-person firing animation
					self.Owner:SetAnimation( PLAYER_ATTACK1 )
					--	Play normal sound
					--	Make ViewModel pistol whip effect
					self:FireViewPunches( )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + 1 )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + 1 )
					
				end
				
			end

		end

	end

end

------------------------------------------------------
--	Animation Functions								--
------------------------------------------------------

function SWEP:SelectAnimationToPlay( Animation , MagazineCount )

	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			--	Not the first time we predicted this? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			local AnimationTable = AnimationTable or {
		
				["Primary"] = ACT_VM_PRIMARYATTACK ,
				["PrimarySup"] = ACT_VM_PRIMARYATTACK_SILENCED ,
				["PrimaryEmpty"] = ACT_VM_PRIMARYATTACK_EMPTY ,
				["PrimaryLast"] = ACT_VM_SHOOTLAST ,
				["PrimaryDeployedFire"] = ACT_VM_DEPLOYED_FIRE ,
				
				["Primary1"] = ACT_VM_PRIMARYATTACK_1 ,
				["Primary2"] = ACT_VM_PRIMARYATTACK_2 ,
				["Primary3"] = ACT_VM_PRIMARYATTACK_3 ,
				["Primary4"] = ACT_VM_PRIMARYATTACK_4 ,
				["Primary5"] = ACT_VM_PRIMARYATTACK_5 ,
				["Primary6"] = ACT_VM_PRIMARYATTACK_6 ,
				["Primary7"] = ACT_VM_PRIMARYATTACK_7 ,
				["Primary8"] = ACT_VM_PRIMARYATTACK_8 ,
				
				["PrimaryDeployed"] = ACT_VM_PRIMARYATTACK_DEPLOYED ,
				["PrimaryDeployed1"] = ACT_VM_PRIMARYATTACK_DEPLOYED_1 ,
				["PrimaryDeployed2"] = ACT_VM_PRIMARYATTACK_DEPLOYED_2 ,
				["PrimaryDeployed3"] = ACT_VM_PRIMARYATTACK_DEPLOYED_3 ,
				["PrimaryDeployed4"] = ACT_VM_PRIMARYATTACK_DEPLOYED_4 ,
				["PrimaryDeployed5"] = ACT_VM_PRIMARYATTACK_DEPLOYED_5 ,
				["PrimaryDeployed6"] = ACT_VM_PRIMARYATTACK_DEPLOYED_6 ,
				["PrimaryDeployed7"] = ACT_VM_PRIMARYATTACK_DEPLOYED_7 ,
				["PrimaryDeployed8"] = ACT_VM_PRIMARYATTACK_DEPLOYED_8 ,
			
				["Secondary"] = ACT_VM_SECONDARYATTACK ,
				
				["Deploy"] = ACT_VM_DEPLOY ,
				["Deploy1"] = ACT_VM_DEPLOY_1 ,
				["Deploy2"] = ACT_VM_DEPLOY_2 ,
				["Deploy3"] = ACT_VM_DEPLOY_3 ,
				["Deploy4"] = ACT_VM_DEPLOY_4 ,
				["Deploy5"] = ACT_VM_DEPLOY_5 ,
				["Deploy6"] = ACT_VM_DEPLOY_6 ,
				["Deploy7"] = ACT_VM_DEPLOY_7 ,
				["Deploy8"] = ACT_VM_DEPLOY_8 ,
				
				["DeployedFire"] = ACT_VM_DEPLOYED_FIRE ,
				
				["UnDeploy"] = ACT_VM_UNDEPLOY ,
				["UnDeploy1"] = ACT_VM_UNDEPLOY_1 ,
				["UnDeploy2"] = ACT_VM_UNDEPLOY_2 ,
				["UnDeploy3"] = ACT_VM_UNDEPLOY_3 ,
				["UnDeploy4"] = ACT_VM_UNDEPLOY_4 ,
				["UnDeploy5"] = ACT_VM_UNDEPLOY_5 ,
				["UnDeploy6"] = ACT_VM_UNDEPLOY_6 ,
				["UnDeploy7"] = ACT_VM_UNDEPLOY_7 ,
				["UnDeploy8"] = ACT_VM_UNDEPLOY_8 ,
				["UnDeployEmpty"] = ACT_VM_UNDEPLOY_EMPTY ,
				
				["ShootLast"] = ACT_VM_SHOOTLAST ,
				["FireMode"] = ACT_VM_FIREMODE ,
				["DetachSuppressor"] = ACT_VM_DETACH_SILENCER ,
				["AttachSuppressor"] = ACT_VM_ATTACH_SILENCER ,
				
				["IdleLowered"] = ACT_VM_IDLE_LOWERED ,
				["Idle2Low"] = ACT_VM_IDLE_TO_LOWERED ,
				["Low2Idle"] = ACT_VM_LOWERED_TO_IDLE ,
				["DownM203"] = ACT_VM_DOWN_M203 ,
				
				["IronIn"] = ACT_VM_IIN ,
				["IronIdle"] = ACT_VM_IIDLE ,
				["IronOut"] = ACT_VM_IOUT ,
				["IronMode"] = ACT_VM_IFIREMODE ,
				
				["Draw"] = ACT_VM_DRAW ,
				["DrawEmpty"] = ACT_VM_DRAW_EMPTY ,
				["DrawM203"] = ACT_VM_DRAW_M203 ,
				["DrawDeployed"] = ACT_VM_DRAW_DEPLOYED ,
				["DrawSuppressed"] = ACT_VM_DRAW_SILENCED ,
				
				["Holster"] = ACT_VM_HOLSTER ,
				["HolsterM203"] = ACT_VM_HOLSTER_M203 ,
				
				["Idle"] = ACT_VM_IDLE ,
				["IdleEmpty"] = ACT_VM_IDLE_EMPTY ,
				["IdleEmptyLeft"] = ACT_VM_IDLE_EMPTY_LEFT ,
				["IdleSupressed"] = ACT_VM_IDLE_SILENCED ,
				["IdleM203"] = ACT_VM_IDLE_M203 ,
				
				["Idle1"] = ACT_VM_IDLE_1 ,
				["Idle2"] = ACT_VM_IDLE_2 ,
				["Idle3"] = ACT_VM_IDLE_3 ,
				["Idle4"] = ACT_VM_IDLE_4 ,
				["Idle5"] = ACT_VM_IDLE_5 ,
				["Idle6"] = ACT_VM_IDLE_6 ,
				["Idle7"] = ACT_VM_IDLE_7 ,
				["Idle8"] = ACT_VM_IDLE_8 ,
				
				["IdleDeployedEmpty"] = ACT_VM_IDLE_DEPLOYED_EMPTY ,
				["IdleDeployed"] = ACT_VM_IDLE_DEPLOYED ,
				["IdleDeployed1"] = ACT_VM_IDLE_DEPLOYED_1 ,
				["IdleDeployed2"] = ACT_VM_IDLE_DEPLOYED_2 ,
				["IdleDeployed3"] = ACT_VM_IDLE_DEPLOYED_3 ,
				["IdleDeployed4"] = ACT_VM_IDLE_DEPLOYED_4 ,
				["IdleDeployed5"] = ACT_VM_IDLE_DEPLOYED_5 ,
				["IdleDeployed6"] = ACT_VM_IDLE_DEPLOYED_6 ,
				["IdleDeployed7"] = ACT_VM_IDLE_DEPLOYED_7 ,
				["IdleDeployed8"] = ACT_VM_IDLE_DEPLOYED_8 ,
				
				["Reload"] = ACT_VM_RELOAD ,
				["ReloadEmpty"] = ACT_VM_RELOAD_EMPTY ,
				["ReloadDeployed"] = ACT_VM_RELOAD_DEPLOYED ,
				["ReloadSuppressed"] = ACT_VM_RELOAD_SILENCED ,
				["ReloadM203"] = ACT_VM_RELOAD_M203 ,
				
				["ReloadStart"] = ACT_VM_RELOAD_START ,
				["ReloadLoop"] = ACT_VM_RELOAD_LOOP ,
				["ReloadEnd"] = ACT_VM_RELOAD_END ,
				
				["ReloadInsertPull"] = ACT_VM_RELOAD_INSERT_PULL ,
				["ReloadInsert"] = ACT_VM_RELOAD_INSERT ,
				
				["ShotgunReloadStart"] = ACT_SHOTGUN_RELOAD_START ,
				["ShotgunReloadFinish"] = ACT_SHOTGUN_RELOAD_FINISH ,
				["ShotgunPump"] = ACT_SHOTGUN_PUMP ,
				
				["Throw"] = ACT_VM_THROW ,
				["PullPin"] = ACT_VM_PULLPIN ,
				
				["HitLeft"] = ACT_VM_HITLEFT ,
				["HitLeft2"] = ACT_VM_HITLEFT2 ,
				["HitRight"] = ACT_VM_HITRIGHT ,
				["HitRight2"] = ACT_VM_HITRIGHT2 ,
				["HitCenter"] = ACT_VM_HITCENTER ,
				["HitCenter2"] = ACT_VM_HITCENTER2 ,
				["MissCenter"] = ACT_VM_MISSCENTER ,
				["MissCenter2"] = ACT_VM_MISSCENTER2 ,

			}

			--self:SendWeaponAnim( ANIMATION )
			
			local VModel = VModel
			local EnumToSeq = VModel:SelectWeightedSequence( AnimationTable[Animation] )

			VModel:SendViewModelMatchingSequence( EnumToSeq )

		end

	end

end

function SWEP:HoldTypeAnimations( )

	--	If we're owner, a player, valid, and alive then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if self:Get_IsHolstered() or self.IsCloseToWall then
			
				if self.Owner:Crouching() then
				
					self:SetHoldType( self.HoldMeRight[9] )
					
				else
				
					self:SetHoldType( self.HoldMeRight[8] )
					
				end		
			
			else			
			
				if self:Get_IsInIronSights() then
				
					if self:Get_IsBipodDeployed() then
					
						if self.Owner:Crouching( ) then
						
							self:SetHoldType( VNTCB.HoldType.LMG[ 4 ] )
							
						else
						
							self:SetHoldType( VNTCB.HoldType.LMG[ 2 ] )
							
						end
						
					elseif self:Get_IsGrenadeLauncherDeployed() then
					
						if self.Owner:Crouching( ) then
						
							self:SetHoldType( VNTCB.HoldType.GLauncher[ 4 ] )
							
						else
						
							self:SetHoldType( VNTCB.HoldType.GLauncher[ 2 ] )
							
						end					
						
					else
					
						if self.Owner:Crouching() then
						
							self:SetHoldType( self.HoldMeRight[4] )
							
						else
						
							self:SetHoldType( self.HoldMeRight[2] )
							
						end
						
					end
					
				else
				
					if self:Get_IsBipodDeployed() then
					
						if self.Owner:Crouching( ) then
						
							self:SetHoldType( VNTCB.HoldType.LMG[ 3 ] )
							
						else
						
							self:SetHoldType( VNTCB.HoldType.LMG[ 1 ] )
							
						end
						
					elseif self:Get_IsGrenadeLauncherDeployed() then
					
						if self.Owner:Crouching( ) then
						
							self:SetHoldType( VNTCB.HoldType.GLauncher[ 3 ] )
							
						else
						
							self:SetHoldType( VNTCB.HoldType.GLauncher[ 1 ] )
							
						end		
						
					else
					
						if self.Owner:Crouching() then
						
							self:SetHoldType( self.HoldMeRight[3] )
							
						else
						
							self:SetHoldType( self.HoldMeRight[1] )
							
						end
						
					end
					
				end
				
			end
			
		end

	end
	
end

function SWEP:SpecialAnimation( Animation )
	local SEQUENCE = self:LookupSequence( Animation )
	self.Owner:GetViewModel():SendViewModelMatchingSequence( SEQUENCE )
	self.Owner:GetViewModel():SetCycle( 0 )
	self:SetCycle( 0 )
end --	Play animations not normally called by ACT_VM_*

function SWEP:ShootEffects( )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if not IsFirstTimePredicted() then return false end

			--	Play our third-person firing animation
			self.Owner:SetAnimation( PLAYER_ATTACK1 )

			--	Play our firing animations
			if self:Get_IsSuppressorAttached( ) then

				if SERVER then

					--	emit the normal sound
					self:PlaySounds( "PrimarySup" )

				end

			elseif self.SeqPrimary != nil then

				if SERVER then

					--	emit the normal sound
					self:PlaySounds( "Primary" )

				end

			end

		end
		
	end
	
end --	Controls effects like shells and flashes for our right hand weapon

function SWEP:FireBullet( damageinfo , firingCone , numberOfShots , force , Type )
	--	If we're owner, a player, valid, and alive, and our delay is expired
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end

			--	Muzzle flashes & shells
			self:ShootEffects( )
			
			--	Run our view punches
			self:FireViewPunches( )

			local Hand = Type or "Right"
			
			if SERVER then

				if Hand == "Left" then
				
					local owner = self.Owner
					local SecondaryDelay = ( 60 / self.Secondary.RPM ) -- (Float) Don't touch
					local SecondaryDamage = ( math.random( self.Secondary.PureDmg - 3 , self.Secondary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

					-- Accuracy conversions
					local firingCone = self.EffectiveRange or 500
					local absoluteCone = math.max( math.abs( firingCone ), 1 )
					local mathCone = ( 2 / absoluteCone )
					local accuracyCone = math.Round( mathCone, 4 )

					-- Realism
					if not self.Owner:OnGround( ) then
						accuracyCone = accuracyCone * 10
					else
						if IsValid(prone) and self.Owner:IsProne() then 
							if self:Get_IsInScope( ) or self:Get_IsInIronSights( ) then
								accuracyCone = accuracyCone * 1
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Prone, In Iron Sights :: Accuracy is " .. accuracyCone ) end
							else
								accuracyCone = accuracyCone * 1.25
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Prone, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
							end
						elseif self.Owner:Crouching( ) then
							if self:Get_IsInScope( ) or self:Get_IsInIronSights( ) then
								accuracyCone = accuracyCone * 1.25
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Crouching, In Iron Sights :: Accuracy is " .. accuracyCone ) end
							else
								accuracyCone = accuracyCone * 1.5
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Crouching, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
							end
						else
							if self:Get_IsInScope( ) or self:Get_IsInIronSights( ) then
								accuracyCone = accuracyCone * 1.5
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Standing, In Iron Sights :: Accuracy is " .. accuracyCone ) end
							else
								accuracyCone = accuracyCone * 1.75
								if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Standing, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
							end
						end
					end
			
					--	Set our constants
					local damageinfo = SecondaryDamage or 1
					local numberOfShots = self.Secondary.NumShots or 1
					local force = self.Secondary.Force or 5
					local distance = self.Secondary.Distance or 56756

					local bulletData = {}
					bulletData.Attacker = owner
					bulletData.Damage = damageinfo
					bulletData.Distance = distance
					bulletData.Dir = self.Owner:GetAimVector( )
					bulletData.Force = force
					bulletData.Num = numberOfShots
					bulletData.Src = self.Owner:GetShootPos( )
					bulletData.Spread = Vector( accuracyCone , accuracyCone , 0 )

					if self.UseTracer and self:Get_IsSuppressorAttached( ) == false then
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

					if ( self.Owner:IsPlayer() ) then
						self.Owner:LagCompensation( true )
					end

					self:FireBullets( bulletData , true )
					
					if ( self.Owner:IsPlayer() ) then
						self.Owner:LagCompensation( false )
					end
				
				else
					
					local owner = self.Owner
					local PrimaryDelay = ( 60 / self.Primary.RPM ) -- (Float) Don't touch
					local PrimaryDamage = ( math.random( self.Primary.PureDmg - 3 , self.Primary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

					-- Accuracy conversions
					local stockBool = self:Get_IsStockExtended()
					local bipodBool = self:Get_IsBipodDeployed()
					local scopeBool = self:Get_IsInScope()
					local ironBool = self:Get_IsInIronSights()
					
					if stockBool then
						self.EffectiveRange = ( self.EffectiveRange * 1.15 )
					end
					
					if bipodBool then
						self.EffectiveRange = ( self.EffectiveRange * 1.25 )
					end
					
					local firingCone = self.EffectiveRange or 500
					local absoluteCone = math.max( math.abs( firingCone ), 1 )
					local mathCone = ( ( 1.75 * GetConVarNumber( "VNT_Base_SWep_AccuracyMul" ) ) / absoluteCone )
					local accuracyCone = math.Round( mathCone, 4 )

					-- Stance adjustments
					if not self.Owner:OnGround( ) then
					
						accuracyCone = accuracyCone * 10
						
					else
						--	If it's a shotgun, the accuracy won't change
						if self.WeaponType != 4 then
							-- If you're using Stalker's Prone mod it works with it
							-- http://steamcommunity.com/sharedfiles/filedetails/?id=775573383
							if prone and self.Owner:IsProne() == true then 
								if scopeBool or ironBool then
									accuracyCone = accuracyCone * 0.85
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Prone, In Iron Sights :: Accuracy is " .. accuracyCone ) end
								else
									accuracyCone = accuracyCone * 0.9
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Prone, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
								end
							elseif self.Owner:Crouching( ) then
								if scopeBool or ironBool then
									accuracyCone = accuracyCone * 0.9
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Crouching, In Iron Sights :: Accuracy is " .. accuracyCone ) end
								else
									accuracyCone = accuracyCone * 0.95
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Crouching, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
								end
							else
								if scopeBool or ironBool then
									accuracyCone = accuracyCone * 0.95
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Standing, In Iron Sights :: Accuracy is " .. accuracyCone ) end
								else
									accuracyCone = accuracyCone * 1
									if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Standing, Not in Iron Sights :: Accuracy is " .. accuracyCone ) end
								end
							end
						end
					end

					--	Set our constants
					local damageinfo = PrimaryDamage or 1
					local numberOfShots = self.Primary.NumShots or 1
					local force = self.Primary.Force or 5
					local distance = self.Primary.Distance or 56756
					
					local bulletData = {}
					bulletData.Attacker = owner
					bulletData.Damage = damageinfo
					bulletData.Distance = distance
					bulletData.Dir = self.Owner:GetAimVector( )
					bulletData.Force = force
					bulletData.Num = numberOfShots
					bulletData.Src = self.Owner:GetShootPos( )
					bulletData.Spread = Vector( accuracyCone , accuracyCone , 0 )
					if self.UseTracer and GetConVarNumber( "VNT_Base_SWep_TracerToggle" ) != 0 then
						if self:Get_IsSuppressorAttached( ) then
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
				
					if ( self.Owner:IsPlayer() ) then
						self.Owner:LagCompensation( true )
					end

					self:FireBullets( bulletData , true )
					
					if ( self.Owner:IsPlayer() ) then
						self.Owner:LagCompensation( false )
					end

					--self.Owner:ChatPrint("Damage: " .. bulletData.Damage )

				end

			end

			-- If the weapon has the black friday flag AND the master control CVar is enabled then...
			if ( ( self.BlackFriday ) and ( GetConVarNumber( "VNT_Base_SWep_BlackFriday_Toggle" ) != 0 ) ) then
			
				--	Run our initializer function further down
				self:BlackFridayFunction()
				
			else
			
				return
				
			end
			
		end
		
	end
	
end

if SERVER then

	--	This is my mod of Zoey's penetration
	--	OLD! WILL BE DEREZZED
	function SWEP:BulletPenetrate( bouncenum , attacker , tr , dmginfo , isplayer )
	--
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
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "hit a weaker material type" ) end
		elseif tr.MatType == ( bit.bor( MAT_CONCRETE , MAT_FLESH , MAT_ALIENFLESH , MAT_GRATE , MAT_COMPUTER , MAT_TILE , MAT_VENT ) ) then
			damageMul = 0.9
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "hit a weak material type" ) end
		--	Dense materials
		elseif tr.MatType == ( bit.bor( MAT_SLOSH , MAT_DIRT , MAT_GRASS , MAT_METAL ) ) then
			damageMul = 0.85
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "hit a dense material type" ) end
		--	Shields
		elseif tr.MatType == ( bit.bor( MAT_WARPSHIELD ) ) then
			damageMul = 0.1
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "hit a shield material type" ) end
		--	No effect on bullets
		elseif tr.MatType == ( bit.bor( MAT_EGGSHELL ) ) then
			damageMul = 1
			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "hit an egg material type" ) end
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
	--]]
	end --	Controls penetration

	--	OLD! WILL BE DEREZZED
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

		if ( self.Ricochet ) then
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

	--	OLD! WILL BE DEREZZED
	function SWEP:BPenetration( a , b , c )
		return self:RicochetCallback( 0 , a , b , c )
	end --	Tech for penetration
	--function SWEP:Equip()end

end

------------------------------------------------------
--	Black Friday Super Sales						--
------------------------------------------------------

function SWEP:BlackFridayFunction()
	
	-- The reason this is a seperate function is so I don't 
	-- have to create several traces for each check 
	-- of the black friday function - Less=More
	
	--	Player not valid?! FUCK!
	if IsValid( self.Owner ) then
		
		--	Owner isn't alive? Owner isn't a player?! FUCK!!!
		if self.Owner:Alive() and self.Owner:IsPlayer() then

			-- Create the trace struct
			local tr = { }
			tr.start = self.Owner:GetShootPos( )	--	Start at the owner/player's view and...
			tr.endpos = self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * GetConVarNumber( "VNT_Base_SWep_BlackFriday_Range" ) )	--	...end at the door buster range set by the CVar
			tr.filter = self.Owner
			tr.mask = MASK_SHOT
			local trace = util.TraceLine( tr )	--	Send the struct to the util and return a trace we can call
			if ( trace.HitSky ) then return end	--	If we hit the sky, fuck off
			if !IsValid(trace.Entity) then return end	--	If we hit something invalid, bugger off
			local traceHitEnt = trace.Entity	--	This is what we hit
			local attacker = self.Owner	--	This is us
			local doorMul = ( GetConVarNumber( "VNT_Base_SWep_BlackFriday_ForceMul" ) * 1)	--	This is the force to apply to the 'door' after we 'blow it out' - more on this later
			
			--	If the admin doesn't want you to fuck with this door, fuck off.
			if traceHitEnt:GetNWBool("VNTSB_DisableBlackFriday") then return false end
			
			--	Did we hit one of the doors?
			if ( trace.Entity:GetClass() == "func_door_rotating" ) or ( trace.Entity:GetClass() == "prop_door_rotating" ) then
			
				--	Carry on wayward son
				self:BlackFridayDoorBusterSales(traceHitEnt, attacker, doorMul)
				if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Sending door to function" ) end
				
			else
			
				--	We didn't hit a door, so fuck this, we're out
				return false
				
			end
			
		end
		
	end
	
end

function SWEP:BlackFridayDoorBusterSales(Door, Attacker, amount)
	--	Is the bloody owner valid?
	if IsValid( self.Owner ) then
		
		--	Is the owner a player? Is he alive? If the answer to either of these isn't yes, you can go back to start.
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Is this a prop door?
			if Door:GetClass() == "prop_door_rotating" then
			
				--self.Owner:ChatPrint(amount)

				--	Here's an explanation of how this works
				--	For prop_door_rotating entities, we create a 'dummy' door
				--	that spawns in the same location and we apply the settings
				--	and a force to the door. We also hide all facets of the 
				--	original door including visbility, shadow, and solidity.
			
				if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN(  "Door class is: " .. Door:GetClass()) end
				local pos = Door:GetPos()	--	Get the position of the original door
				local ang = Door:GetAngles()	--	Get the angles of the original door
				local model = Door:GetModel()	--	Get the model of the original door
				local skin = Door:GetSkin()	--	Get the skin of the original door
				local bgroup = Door:GetBodygroup( 1 )	--	Get the bodygroup of the original dildo
				local locked = Door:GetSaveTable().m_bLocked	--	Did we lock up our daughters, wives, the back door and run for our lives?
				local FakeDoor = nil	--	We need this later
				
				
				--	ents.Create only exists server-side, so we have to call it there.
				if SERVER then
					--	Because if the door isn't technically opened before 
					--	we blast it to hell, we end up with this: https://i.gyazo.com/a23759132532d8f557eb6728d09586b8.jpg
					--	Area portals are useful for us mappers, but a pain in the arse for us programmers.
					Door:Fire( "Unlock", "", .01 ) --	Unlock it
					Door:Fire( "Open" )	--	You're cleared to breach, Ghost Rider.
					Door:Fire( "lock", "", .01 )	--	Lock that shit tighter than my ass after I take a shit.
					Door:SetNotSolid(true)	--	Set the real door not solid
					Door:SetNoDraw(true)	--	And derezz it
					Door:DrawShadow(false)	--	Hide it from flashlights too - I SEE YOU SCOOT
					
					FakeDoor = ents.Create("prop_physics")	--	Create the 'fake' door prop
					FakeDoor:SetPos(pos)	--	Set it to the pos of the real door
					FakeDoor:SetAngles(ang)	--	Set it to the angle of the real door
					FakeDoor:SetModel(model)	--	Copy the model too
					FakeDoor:SetSkin(skin)	--	SKIN THE WHITE MAN
					FakeDoor:SetBodygroup( 1, bgroup )	--	Handles? Handles.
					FakeDoor:Spawn()	--	And His Noodly Majesty said, LET THERE BE HACKY DOOR PROPS!
					FakeDoor:Activate()	--	Turn it on, turn me on, come on, come on.
					
					--FakeDoor:GetPhysicsObject():SetVelocity(Attacker:GetAimVector() * (amount) )	--	Apply the force multiplier from the CVar
					FakeDoor:GetPhysicsObject():ApplyForceOffset( (Attacker:GetAimVector() * (amount)) , (self.Owner:GetShootPos( ) + ( self.Owner:GetAimVector( ) * GetConVarNumber( "VNT_Base_SWep_BlackFriday_Range" ) ))  )	--	https://www.youtube.com/watch?v=TZ8XA3od24g
					
					--	Physics props are a BITCH to walk over, so freeze it in place after it falls into static motion
					if FakeDoor:GetPhysicsObject():IsAsleep() then
						FakeDoor:GetPhysicsObject():EnableMotion(false) --	Don't do the locomotion with me
					end

					if SERVER then
					
						sound.Play( "HL2.Physics.Wood.Furniture.Break" , FakeDoor:GetPos() )	--	Make the fake door emit the wood break sound
						
					end
					
				end
				
				--	I am willing to admit this might be a bad idea, 
				--	but it's there for persistency.
				--	If you want a bunch of fallen down doors laying
				--	all over the damn place that's your fault, asshole.
				--	Just set the reset toggle to 0 to disable doors resetting.
				if GetConVarNumber( "VNT_Base_SWep_BlackFriday_ResetToggle" ) != 0 then
					
					--	Create a timer.Simple because we only want it to run once
					timer.Simple( GetConVarNumber( "VNT_Base_SWep_BlackFriday_ResetTimer" ), function()
						--	Make sure the door is valid because I know
						--	Some wankstain is going to try and make it
						--	error out by using the remover.
						if Door:IsValid() then
							local mass = Door:GetNWInt("DoorHealthMaxHealth")	--	Set the mass to the health
							Door:SetNWInt("DoorHealth", mass )	--	And reset the original
							Door:SetNotSolid(false)	--	Return to the etereal realm!
							Door:SetNoDraw(false)	--	I can see you..
							Door:DrawShadow(true)	--	I can smell your fear...
							Door:Fire( "unlock" )	--	Remember kids - the penis is like a key, and the vagina is like a lock, and together they unlock reproduction!
						end
						--	Same shit, different titanium straw. Make sure it's valid.
						--	Because we created it server-side, we cancel out here too.
						if SERVER then
							if FakeDoor:IsValid() then	--	If the fake door hasn't been removed by a spastic admin
								FakeDoor:Remove()	--	Remove it.
							end
						end
					end)
				end
				
			--	Else it's a func_door_rotating
			else
			
				if SERVER then
					--Door:SetKeyValue( "Speed", "256" )
					Door:SetKeyValue( "Open Direction", "Both directions" )
					Door:Fire( "unlock" )
					Door:Fire( "open" )
					Door:Fire( "OpenAwayFrom" )
				end
			end

			--	It's so secksy, like a secret Black Mesa facility!
			if SERVER then

				sound.Play( "BF3.SpecialMoves.BreachDoorKick" , Door:GetPos() )

			end

		end

	end
	
end

------------------------------------------------------
--	Jamming Functions								--
------------------------------------------------------

function SWEP:WeaponJammed( )

	--	Owner valid? No? Fuck you!
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() and self.ActionDelay <= CurTime( ) then

			local VModel = self.Owner:GetViewModel( )

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			--	play the holster animation
			-- if VModel:SelectWeightedSequence( ACT_VM_HOLSTER ) then
			if self.SeqHolster != nil then

				self:SpecialAnimation( table.Random( self.SeqHolster ) )

				--	else we don't have low anims, so just play the holster anim
				-- self:SelectAnimationToPlay( "Holster" , self:Clip1() )

			end

			--	if we're a pistol then
			if ( self.WeaponType == 2 ) then

				self:EmitSound( self.Sounds.JamSmallPistol )

				--	play the pistol jam sound
				if SERVER then

					--self:PlaySounds( "JamSmallPistol" )

				end
				
			else

				--	else play the rifle jam sound
				if SERVER then

					self:PlaySounds( "JamSmall" )

				end

			end

			--	If we're a small jam on the right/primary then
			if self:Get_HasSmallJam( ) then

				--	Send our MsgN message
				self:MessagePrint( "PrimarySmall" )
				
				--	BRB gotta take a shit
				self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
				
				--	Take some ammo
				self:TakePrimaryAmmo( 1 )
				
				--	After our delay is up draw the weapon
				timer.Simple( self.SmallJamDuration , function( )

					--	play the holster animation
					if self.SeqDrawSupp != nil and self:Get_IsSuppressorAttached( ) then

						self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

					elseif self.SeqDraw != nil then

						--	else we don't have low anims, so just play the holster anim
						self:SpecialAnimation( table.Random( self.SeqDraw ) )

					end

				end )
				
			end

			--	If we're a small jam on the right/primary then
			if self:Get_HasLargeJam( ) then

				self:MessagePrint( "PrimaryLarge" )
				
				self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
				
				--	clear the chamber
				self:TakePrimaryAmmo( 1 )
				
				--	After our delay is up draw the weapon
				timer.Simple( self.LargeJamDuration , function( )

					--	play the holster animation
					if self.SeqDrawSupp != nil and self:Get_IsSuppressorAttached( ) then

						self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

					elseif self.SeqDraw != nil then

						--	else we don't have low anims, so just play the holster anim
						self:SpecialAnimation( table.Random( self.SeqDraw ) )

					end

				end )
				
			end

			--	If it's an akimbo
			if self.Akimbo then

				--	If we're a small jam on the right/primary then
				if self:Get_HasSmallJamLeft( ) then

					self:MessagePrint( "LeftSmall" )
				
					self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.SmallJamDuration )
					
					self:TakeSecondaryAmmo( 1 )

					--	After our delay is up draw the weapon
					timer.Simple( self.SmallJamDuration , function( )

						--	play the holster animation
						if self.SeqDrawSupp != nil and self:Get_IsSuppressorAttached( ) then

							self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

						elseif self.SeqDraw != nil then

							--	else we don't have low anims, so just play the holster anim
							self:SpecialAnimation( table.Random( self.SeqDraw ) )

						end

					end )
					
				end

				--	If we're a small jam on the right/primary then
				if self:Get_HasLargeJamLeft( ) then

					self:MessagePrint( "LeftLarge" )
				
					self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
					self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
					self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + self.LargeJamDuration )
					
					--	clear the chamber
					self:TakeSecondaryAmmo( 1 )
				
					--	After our delay is up draw the weapon
					timer.Simple( self.LargeJamDuration , function( )

						--	play the holster animation
						if self.SeqDrawSupp != nil and self:Get_IsSuppressorAttached( ) then

							self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

						elseif self.SeqDraw != nil then

							--	else we don't have low anims, so just play the holster anim
							self:SpecialAnimation( table.Random( self.SeqDrawSupp ) )

						end

					end )
					
				end

			end

			--	we're not jammed
			self:Set_HasSmallJam( false )	
			self:Set_HasLargeJam( false )
			
			--	we're not jammed					
			self:Set_HasSmallJamLeft( false )	
			self:Set_HasLargeJamLeft( false )

		end
		
	end
	
end

------------------------------------------------------
--	Print Functions									--
--	These are our printable messages for use in 	--
--	self:MessagePrint( MessageType )				--
------------------------------------------------------

function SWEP:MessagePrint( Message )
	
	--	Owner valid? No? Fuck you!
	if IsValid( self.Owner ) then
	
		--	We're a player, and we're not mr. skeletal?
		if self.Owner:IsPlayer() and self.Owner:Alive( ) then

			local MessageTable = {
				
				["PrimarySmall"] = "Magazine is Jammed!",
				["PrimaryLarge"] = "Weapon Malfunction!" ,
				["SecondarySmall"] = "Secondary Magazine is Jammed!",
				["SecondaryLarge"] = "Secondary Weapon Malfunction!" ,
				["RightSmall"] = "Right Magazine is Jammed!" ,
				["RightLarge"] = "Right Weapon Malfunction!" ,
				["LeftSmall"] = "Left Magazine is Jammed!" ,
				["LeftLarge"] = "Left Weapon Malfunction!" ,

				["ClearingJam"] = "Clearing Weapon Jam!" ,

				["GrenadeDeployed"] = "Grenade Launcher Deployed" ,
				["GrenadeHolstered"] = "Grenade Launcher Holstered" ,
				
				["DeployedIn"] = "Deployed" ,
				["DeployedOut"] = "Undeployed" ,

				["BipodDown"] = "Bipod Deployed" ,
				["BipodUp"] = "Bipod Up" ,

				["SuppressorOn"] = "Suppressor Attached" ,
				["SuppressorOff"] = "Suppressor Detached" ,

				["LaserOn"] = "Laser Attached" ,
				["LaserOff"] = "Laser Detached" ,

				["StockFolded"] = "Stock Collapsed" ,
				["StockUnfolded"] = "Stock Deployed" ,

				["ModeBoltAction"] = "Bolt-Action" ,
				["ModeSingleAction"] = "Single-Action" ,
				["ModeDoubleAction"] = "Double-Action" ,
				["ModeGrenade"] = "G - Grenade" ,
				["ModeSemi"] = "1 - Semi-Auto" ,
				["ModeBurst"] = self.BurstCount .. " - Burst",
				["ModeAuto"] = "A - Automatic",
				["ModeSpecial"] = self.SpecialModeMessage ,
				["ModeSafety"] = "S - Safety",
				["ModePrimed"] = "P - Primed" ,

			}

			--	Print messages
			local Text = MessageTable[Message] or "BRB Taking a Shit in Your Mom's Fishtank"

			if GetConVarNumber( "VNT_Base_SWep_PrintLocation" ) <= 0 then
				self.Owner:PrintMessage( HUD_PRINTCENTER , Text )
			elseif GetConVarNumber( "VNT_Base_SWep_PrintLocation" ) == 1 then
				self.Owner:PrintMessage( HUD_PRINTTALK , Text )
			elseif GetConVarNumber( "VNT_Base_SWep_PrintLocation" ) >= 2 then
				self.Owner:PrintMessage( HUD_PRINTCONSOLE , Text )
			end
			
			return false
		
		end
		
	end
	
end

------------------------------------------------------
--	Bullet Tech										--
------------------------------------------------------

function SWEP:FireViewPunches( )
	--	If we're owner, a player, valid, and alive then
	if IsValid(self.Owner) then
		if self.Owner:IsPlayer( ) and self.Owner:Alive( ) then

			local firingCone = self.EffectiveRange or 500
			local absoluteCone = math.max( math.abs( firingCone ), 1 )
			local mathCone = ( ( 1.75 * GetConVarNumber( "VNT_Base_SWep_AccuracyMul" ) ) / absoluteCone )
			local accuracyCone = math.Round( mathCone, 4 )
				
			--	If our GL is deployed then
			if self:Get_IsGrenadeLauncherDeployed( ) then
				--	Reset our view punch
				self.Owner:ViewPunchReset( )

				--	Add a random punch
				if self.WeaponType > 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , table.Random( self.RiflePunchesX ) * accuracyCone * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , 0 ) )
				elseif self.WeaponType == 2 then
					self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , table.Random( self.PistolPunchesX ) * accuracyCone * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , 0 ) )
				end
			else
				--	else our GL isn't out
				--	If we're in iron sights then
				if self:Get_IsInIronSights( ) and self.WeaponType ~= 1 then
					--	Reset our view punch
					self.Owner:ViewPunchReset( )

					--	Add a smaller random punch
					if self.WeaponType > 2 then
						self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 0.5 ) , table.Random( self.RiflePunchesX ) * accuracyCone  * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 3 )  , 0 ) )
					elseif self.WeaponType == 2 then
						self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 0.5 )  , table.Random( self.PistolPunchesX ) * accuracyCone  * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 3 )  , 0 ) )
					end
				elseif self:Get_IsInIronSights( ) == false and self.WeaponType ~= 1 then
					--	Reset our view punch
					self.Owner:ViewPunchReset( )

					--	Add a bigger random punch
					if self.WeaponType > 2 then
						self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , table.Random( self.RiflePunchesX ) * accuracyCone * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 6 ) , 0 ) )
					elseif self.WeaponType == 2 then
						self.Owner:ViewPunch( Angle( table.Random( self.PistolPunchesY ) * GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) , table.Random( self.PistolPunchesX ) * accuracyCone * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 6 ) , 0 ) )
					end
				else
					self.Owner:ViewPunch( Angle( table.Random( self.RiflePunchesY ) * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 4 ) , table.Random( self.RiflePunchesX ) * accuracyCone * ( GetConVarNumber( "VNT_Base_SWep_RecoilMul" ) * 10 ) , 0 ) )
				end
			end
		end
	end
end

function SWEP:EmitMuzzleFlash( Type )

	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			if Type == "MuzzleRight" then				
			
				--	If we've already run this exit out
				if not IsFirstTimePredicted() then 
				
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Not IsFirstTimePredicted :: EmitMuzzleFlash :: MuzzleFlash" ) end
					return
				
				end

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
			
			if Type == "MuzzleLeft" then	
			
				--	If we've already run this exit out
				if not IsFirstTimePredicted() then 
				
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Not IsFirstTimePredicted :: EmitMuzzleFlash :: MuzzleFlashLeft" ) end
					return
				
				end

				self.Owner:MuzzleFlash( )
				--	Emit our muzzle flash
				local FX = EffectData( )
				FX:SetOrigin( self.Owner:GetShootPos( ) )
				FX:SetEntity( self )
				FX:SetStart( self.Owner:GetShootPos( ) )
				FX:SetNormal( self.Owner:GetAimVector( ) )
				FX:SetAttachment( self.MuzzleAttachLeft )
				FX:SetScale( self.MuzzleFlashType )
				FX:SetFlags( 0 )
				util.Effect( self.MuzzleFlashName , FX )
			end

			if Type == "GrenadeLauncher" then
			
				--	If we've already run this exit out
				if not IsFirstTimePredicted() then 
				
					if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Not IsFirstTimePredicted :: EmitMuzzleFlash :: GrenadeLauncher" ) end
					return
				
				end

				self.Owner:MuzzleFlash( )
				--	Emit our muzzle flash
				local MuzzleFlash = EffectData( )
				MuzzleFlash:SetOrigin( self.Owner:GetShootPos( ) )
				MuzzleFlash:SetEntity( self )
				MuzzleFlash:SetStart( self.Owner:GetShootPos( ) )
				MuzzleFlash:SetNormal( self.Owner:GetAimVector( ) )
				MuzzleFlash:SetAttachment( self.MuzzleAttach )
				--	emit normal rifle smoke
				util.Effect( "fx_smoke_rifle_bf3" , MuzzleFlash )

			end

			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( Type ) end

		end

	end

end

function SWEP:EmitMuzzleLight( Type )

	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
	
			if CLIENT then
				
				--MsgN( tostring( self:GetAttachment( self.MuzzleAttach ):GetPos() ) )
			
				local light = DynamicLight(self:EntIndex())
				if (light) then
					light.pos = self:GetAttachment( self.MuzzleAttach ).Pos
					light.r = 255
					light.g = 150
					light.b = 0
					light.Brightness = 10
					light.Size = 50
					light.Decay = 10000
					light.style = 0
					light.DieTime = CurTime() + 0.001
				end

				if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( "Muzzle Flash Dynamic Light" ) end
				
			end

			if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( Type ) end

		end

	end

end

function SWEP:PlayBulletCraft( )

	if SERVER then
	
		if self:Get_IsSuppressorAttached() then

			sound.Play( self.Sounds.PrimarySuppressed , self:GetPos() )
			
			if GetConVarNumber( "VNT_Base_SWep_BulletCraft_Toggle" ) != 0 then

				sound.Play( self.Sounds.Noise_Close_Sup , self:GetPos() )
				if self.UsesSuperSonicAmmo then
					sound.Play( self.Sounds.SonicBoom_Sup , self:GetPos() )
				end
				
			end

		else

			sound.Play( self.Sounds.Primary , self:GetPos() )
			
			if GetConVarNumber( "VNT_Base_SWep_BulletCraft_Toggle" ) != 0 then

				sound.Play( self.Sounds.Noise_Close , self:GetPos() )
				sound.Play( self.Sounds.Noise_Distant , self:GetPos() )
				sound.Play( self.Sounds.Noise_Far , self:GetPos() )
				sound.Play( self.Sounds.Reflection_Close , self:GetPos() )
				sound.Play( self.Sounds.Reflection_Far , self:GetPos() )
				sound.Play( self.Sounds.CoreBass_Distant , self:GetPos() )

				if self.UsesSuperSonicAmmo then
					sound.Play( self.Sounds.SonicBoom , self:GetPos() )
				end
				
			end

		end

		sound.Play( self.Sounds.CoreBass_Close , self:GetPos() )
		sound.Play( self.Sounds.HiFi , self:GetPos() )
		sound.Play( self.Sounds.LFE , self:GetPos() )

	end

end

function SWEP:PlaySounds( Command )
	
	--	Owner valid? No? Fuck you!
	if IsValid( self.Owner ) then
	
		--	We're a player, and we're not mr. skeletal?
		if self.Owner:IsPlayer() and self.Owner:Alive( ) then

			local PlaySndTable = PlaySndTable or {
				["Primary"] = self.Sounds.Primary ,
				["PrimarySup"] = self.Sounds.PrimarySuppressed ,
				["PrimaryDry"] = self.Sounds.PrimaryDry ,
				["PrimaryLast"] = self.Sounds.PrimaryLastSound ,
				["Secondary"] = self.Sounds.SecondaryFire ,
				["SecondarySup"] = self.Sounds.SecondarySuppressedFire ,
				["SecondaryDry"] = self.Sounds.SecondaryDryFire ,
				["SecondaryLast"] = self.Sounds.SecondaryLastSound ,
				["GrenadeFire"] = self.Sounds.GrenadeLauncher ,
				["Reload"] = self.Sounds.Reload ,
				["ShotgunReloadStart"] = self.Sounds.ShotgunReloadStart ,
				["ShotgunShellInsert"] = self.Sounds.ShotgunShellInsert ,
				["ShotgunPump"] = self.Sounds.ShotgunPump ,
				["ShotgunReloadEnd"] = self.Sounds.ShotgunReloadEnd ,
				["JamSmallPistol"] = self.Sounds.JamSmallPistol ,
				["JamLargePistol"] = self.Sounds.JamLargePistol ,
				["JamSmall"] = self.Sounds.JamSmall ,
				["JamLarge"] = self.Sounds.JamLarge ,
				["IronIn"] = self.Sounds.IronsightIn ,
				["IronOut"] = self.Sounds.IronsightOut ,
				["WhipHitCharacter"] = self.Sounds.WhipHitCharacter ,
				["WhipHitWall"] = self.Sounds.WhipHitWall ,
				["WhipMiss"] = self.Sounds.WhipMiss ,
				["MeleeHitWall"] = self.Sounds.MeleeHitWall ,
				["MeleeHitCharacter"] = self.Sounds.MeleeHitCharacteracter ,
				["MeleeMiss"] = self.Sounds.MeleeMiss ,
				["ScopeIn"] = self.Sounds.ZoomIn ,
				["ScopeOut"] = self.Sounds.ZoomOut ,
				["ZoomIn"] = self.Sounds.CycleZoomIn ,
				["ZoomOut"] = self.Sounds.CycleZoomOut ,
				["Draw"] = self.Sounds.Draw ,
				["Holster"] = self.Sounds.Holster ,
				["ModeSemiUS"] = self.Sounds.ModeSemiUS ,
				["ModeBurstUS"] = self.Sounds.ModeBurstUS ,
				["ModeAutoUS"] = self.Sounds.ModeAutoUS ,
				["ModeSafetyUS"] = self.Sounds.ModeSafetyUS ,
				["ModeSemiRU"] = self.Sounds.ModeSemiRU ,
				["ModeBurstRU"] = self.Sounds.ModeBurstRU ,
				["ModeAutoRU"] = self.Sounds.ModeAutoRU ,
				["ModeSafetyRU"] = self.Sounds.ModeSafetyRU ,
				["Throw"] = self.Sounds.Throw ,
				["FiringPinPistol"] = self.Sounds.FiringPinPistol ,
				["FiringPin"] = self.Sounds.FiringPin ,
			}

			if CLIENT then
			
				--	The sounds are de-synced on 
				--	clients due to lag and network prediction,
				--	so we only play them on the server
				return false
				
			else

				local SOUND = PlaySndTable[Command] or Sound( "common/null.wav" )

				sound.Play( SOUND , self:GetPos() )
			
			end

		end
	
	end

end
