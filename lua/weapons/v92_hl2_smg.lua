
------------------------------------------------------
--	Half-Life 2										--
--	Sub-Machine Gun									--
--	4.6x30mm Semi-Auto/Auto SMG						--
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "SMG" -- (String) Printed name on menu

if not VNTCB then
	
	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	
	return false

end

SWEP.Base = VNTCB.Bases.Wep -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.WeaponName	= "v92_hl2_smg" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.Manufacturer = VNTCB.Manufacturer.CMB -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.UniUni -- (String) Country of origin
SWEP.MagazineName = VNTCB.Magazine.mMP7 -- (String) The name of the magazine the weapon uses - used in my Weapon Magazine System
SWEP.Category = VNTCB.Category.HL2 -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNTCB.Bucket.SMG -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNTCB.Slot.SMG -- (Integer) Bucket position
SWEP.ViewModelFOV = 60 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--
------------------------------------------------------

SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model("models/weapons/c_smg1.mdl") -- (String) View model - v_*
SWEP.WorldModel = Model("models/weapons/w_smg1.mdl") -- (String) World model - w_*
SWEP.HoldType = "smg" -- (String) Hold type for our weapon, refer to wiki for animation sets
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Gun Types										--	Set the type of weapon - ONLY PICK ONE!
------------------------------------------------------

SWEP.WeaponType = VNTCB.WeaponType.SMG -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Grenade Launcher, 7=Rocket Launcher

------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------

SWEP.Primary.ClipSize = 45 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 45 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "46x30mm" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.PureDmg = VNTCB.Ammo.aMP7[1] -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Primary.RPM = 950 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math

------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------

SWEP.FireMode = { true, true, false, true }	-- (Table: Boolean, Boolean, Boolean, Boolean ) Enable different fire modes on the weapon; Has modes, Has Single, Has Burst, Has Auto - in that order. You can have more than one, but the first must be true
SWEP.CurrentMode = 1 -- (Integer) Current fire mode of the weapon; used to set the default mode; corresponds to the FireMode table
SWEP.Weight = 2 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.StrongPenetration = VNTCB.Ammo.aMP7[2] -- (Integer) Max penetration
SWEP.WeakPenetration = VNTCB.Ammo.aMP7[3] -- (Integer) Max wood penetration
SWEP.EffectiveRange = 200 -- (Integer) Effective range of the weapon in metres.
SWEP.StoppageRate = 750 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.

------------------------------------------------------
--	Special FX										--	Muzzle flashes, shell casings, etc
------------------------------------------------------

SWEP.MuzzleAttach = 1 -- (Integer) The number of the attachment point for muzzle flashes, typically "1"
SWEP.MuzzleFlashType = 4 -- (Integer) The number of the muzzle flash to use; see Lua/Effects/fx_muzzleflash.Lua
SWEP.ShellAttach = 2 -- (String) The name of the attachment point for shell ejections, typically "2" or "eject"
SWEP.ShellType = 14 -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.ShellDelay = 0 -- (Float) 	Time between shot firing and shell ejection; useful for bolt-actions and things like that that need a delay

------------------------------------------------------
--	Custom Sounds									--
--		Setup sounds here!							--
------------------------------------------------------

SWEP.Sounds = {
	["Primary"] = Sound("Weapon_SMG1.Single"),
	["PrimaryDry"] = Sound("Weapon_SMG1.Empty"),  -- (String) Primary dry fire sound
	["Reload"] = Sound("Weapon_SMG1.Reload"),  -- (String) Primary dry fire sound

	["Noise_Close"] = Sound( "BF3.BulletCraft.Noise.Forest.Close" ) , 
	["Noise_Distant"] = Sound( "BF3.BulletCraft.Noise.Forest.Distant" ) ,
	["Noise_Far"] = Sound( "BF3.BulletCraft.Noise.Forest.Far" ) ,
	["CoreBass_Close"] = Sound( "BF3.BulletCraft.CoreBass.Close.LMG_16" ) ,
	["CoreBass_Distant"] = Sound( "BF3.BulletCraft.CoreBass.Distant.LMG_13" ) ,
	["HiFi"] = Sound( "BF3.BulletCraft.HiFi.P90" ) ,
	["Reflection_Close"] = Sound( "BF3.BulletCraft.Reflection.Forest.Close" ) , 
	["Reflection_Far"] = Sound( "BF3.BulletCraft.Reflection.Forest.Far" ) ,
}

SWEP.SelectorSwitchSNDType = 1 -- (Integer) 1=US , 2=RU
SWEP.UsesSuperSonicAmmo = false -- (Boolean) Is the weapon using supersonic or subsonic ammo?

------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------

SWEP.IronSightsPos = Vector(-6.45, -6, 1)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunArmOffset = Vector(8.039, -13.87, -2.01)
SWEP.RunArmAngle = Vector(0, 70, 0)

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------

if CLIENT then
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup 		= RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName, SWEP.PrintName )
	killicon.Add( SWEP.WeaponName, "vgui/entities/".. SWEP.WeaponName , Color( 255, 255, 255 ) )
elseif SERVER then
	resource.AddWorkshop( SWEP.WorkshopID )
end
------------------------------------------------------
--	SWEP:Initialize() 							--	Called when the weapon is first loaded
------------------------------------------------------
function SWEP:Initialize()
	self.HoldMeRight = VNTCB.HoldType.HL2SMG -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
end

SWEP.SeqPrimary = { "fire01" , "fire02" , "fire03" , "fire04" }
SWEP.SeqPrimaryEmpty = { "idle01" }
SWEP.SeqIdle = { "idle01" }
SWEP.SeqSecondary = { "altfire" }
SWEP.SeqReload = { "reload" }
SWEP.SeqDraw = { "draw" }
SWEP.SeqIdleToLow = { "idletolow" }
SWEP.SeqLowIdle = { "lowidle" }
SWEP.SeqLowToIdle = { "lowtoidle" }
