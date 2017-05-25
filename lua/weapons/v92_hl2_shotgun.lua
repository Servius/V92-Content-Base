
------------------------------------------------------
--	Half-Life 2										--
--	Shotgun						 					--
--	.12 Gauge Pump-Action shotgun					--
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Shotgun" -- (String) Printed name on menu

if not VNTCB then
	
	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	
	return false

end

SWEP.Base = VNTCB.Bases.WepShell -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = "v92_hl2_shotgun" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.Manufacturer = VNTCB.Manufacturer.CMB -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.UniUni -- (String) Country of origin
SWEP.MagazineName = VNTCB.Magazine.mShotgun -- (String) The name of the magazine the weapon uses - used in my Weapon Magazine System
SWEP.Category = VNTCB.Category.HL2 -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNTCB.Bucket.Shotgun -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNTCB.Slot.Shotgun -- (Integer) Bucket position
SWEP.ViewModelFOV = 60 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--
------------------------------------------------------
SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model("models/weapons/c_shotgun.mdl") -- (String) View model - v_*
SWEP.WorldModel = Model("models/weapons/w_shotgun.mdl") -- (String) World model - w_*
SWEP.HoldType = "shotgun" -- (String) Hold type for our weapon, refer to wiki for animation sets
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms
------------------------------------------------------
--	Gun Types										--	Set the type of weapon - ONLY PICK ONE!
------------------------------------------------------
SWEP.WeaponType = VNTCB.WeaponType.Shotgun -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Grenade Launcher, 7=Rocket Launcher
------------------------------------------------------
--	Shotgun Settings								--	Settings for shotguns
------------------------------------------------------
SWEP.PumpAction = true -- (Boolean) Is the shotgun pump action?
SWEP.ShellReload = true -- (Boolean) Does this weapon use individual shells?
------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------
SWEP.Primary.ClipSize = 6 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 6 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "12gauge" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.PureDmg = VNTCB.Ammo.a12GBuck[ 1 ] -- (Integer) Base damage, put one number here and the base will do the rest
SWEP.Primary.RPM = 150 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------
SWEP.FireMode = { false , true , false , false } -- (Table: Boolean, Boolean, Boolean, Boolean ) Enable different fire modes on the weapon; Has modes, Has Single, Has Burst, Has Auto - in that order. You can have more than one, but the first must be true
SWEP.CurrentMode = 1 -- (Integer) Current fire mode of the weapon; used to set the default mode; corresponds to the FireMode table
SWEP.Primary.NumShots = 9 -- (Integer) How many bullets per shot; think of this as a shotgun shell, higher integer, more pellets
SWEP.Weight = 5 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.StrongPenetration = VNTCB.Ammo.a12GBuck[ 2 ] -- (Integer) Max penetration
SWEP.WeakPenetration = VNTCB.Ammo.a12GBuck[ 3 ] -- (Integer) Max wood penetration
SWEP.EffectiveRange = 40 -- (Integer) Effective range of the weapon in metres.
SWEP.BlackFriday = true -- (Boolean) Black Friday Doorbuster Sales
SWEP.StoppageRate = 0 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.
------------------------------------------------------
--	Special FX										--	Muzzle flashes, shell casings, etc
------------------------------------------------------
SWEP.ShellType = 2 -- (Integer) The shell to use, see Lua/Effects/FX_ShellEject for integers
SWEP.ShellDelay = 0.5 -- (Float) 	Time between shot firing and shell ejection; useful for bolt-actions and things like that that need a delay
SWEP.MuzzleFlashType = 5 -- (Integer) The number of the muzzle flash to use; see Lua/Effects/fx_muzzleflash.Lua
------------------------------------------------------
--	Custom Sounds									--
--		Setup sounds here!							--
------------------------------------------------------
SWEP.Sounds = {
	["Primary"] = Sound( "Weapon_Shotgun.Single" ),
	["PrimaryDry"] = Sound("Weapon_Shotgun.Empty"),
	["Reload"] = Sound( "Weapon_Shotgun.Reload" ),

	["Noise_Close"] = Sound( "BF3.BulletCraft.Noise.Shotgun.Close" ),
	["Noise_Distant"] = Sound( "BF3.BulletCraft.Noise.Forest.Distant" ) ,
	["Noise_Far"] = Sound( "BF3.BulletCraft.Noise.Forest.Far" ) ,
	["CoreBass_Close"] = Sound( "BF3.BulletCraft.CoreBass.Close.OneShot_2" ),
	["CoreBass_Distant"] = Sound( "BF3.BulletCraft.CoreBass.Distant.OneShot_1" ),
	["HiFi"] = Sound( "BF3.BulletCraft.HiFi.Shotgun" ),
	["Reflection_Close"] = Sound( "BF3.BulletCraft.Reflection.Forest.Close" ) ,
	["Reflection_Far"] = Sound( "BF3.BulletCraft.Reflection.Forest.Far" ) ,
}

SWEP.SelectorSwitchSNDType = 1 -- (Integer) 1=US , 2=RU
SWEP.UsesSuperSonicAmmo = true -- (Boolean) Is the weapon using supersonic or subsonic ammo?
------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------	
SWEP.IronSightsPos = Vector(-8.95, -11, 4.199)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.RunArmOffset = Vector(4, -16, 0)
SWEP.RunArmAngle = Vector(-23, 70, -26)
------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------
if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
end

------------------------------------------------------
--	SWEP:Initialize() 							--	Called when the weapon is first loaded
------------------------------------------------------
function SWEP:Initialize( )
	self.HoldMeRight = VNTCB.HoldType.Shotgun -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
	--self:SetHoldType(self.HoldType)
end

SWEP.SeqPrimary = { "fire01" }
--SWEP.SeqReload = { "reload" }
SWEP.SeqReloadStart = { "reload1" }
SWEP.SeqReloadLoop = { "reload2" }
SWEP.SeqReloadEnd = { "reload3" }
SWEP.SeqDraw = { "draw" }
SWEP.SeqHolster = { "holster" }
SWEP.SeqIdleToLow = { "idle_to_lowered" }
SWEP.SeqLowIdle = { "lowered" }
SWEP.SeqLowToIdle = { "lowered_to_idle" }
