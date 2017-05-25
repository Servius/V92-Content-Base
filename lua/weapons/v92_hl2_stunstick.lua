
------------------------------------------------------
--	Half-Life 2										--
--	Stun Baton										--
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Stun Baton" -- (String) Printed name on menu

if not VNTCB then
	
	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	
	return false

end

SWEP.Base = VNTCB.Bases.WepMelee -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = "v92_hl2_stunstick" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.Manufacturer = VNTCB.Manufacturer.CMB -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.UniUni -- (String) Country of origin
SWEP.Category = VNTCB.Category.HL2 -- (String) Category
SWEP.Instructions = "Pick up that can!" -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNTCB.Bucket.Melee -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNTCB.Slot.Melee -- (Integer) Bucket position
SWEP.InventorySlot = VNTCB.Type.Melee -- (String) Weapon type, See autorun/sh_v92_code_base.lua; Primary, Secondary, Melee, GrenadeOne, GrenadeTwo, Mine, Supply, None
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.BobScale = 1 -- (Float) 	View model bob Factor
SWEP.SwayScale = 1 -- (Float) 	View model sway Factor
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--
------------------------------------------------------
SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "models/weapons/c_stunstick.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/weapons/w_stunstick.mdl" ) -- (String) World model - w_*
SWEP.HoldType = "melee" -- (String) Hold type for our weapon, refer to wiki for animation sets
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms
------------------------------------------------------
--	Gun Types										--	Set the type of weapon
------------------------------------------------------
SWEP.WeaponType = VNTCB.WeaponType.Melee -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Grenade Launcher, 7=Rocket Launcher
------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------
SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 0 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "none" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Primary.RPM = 120 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Primary.PureDmg = 40 -- (Integer) Base damage, put one number here and the base will do the rest
------------------------------------------------------
--	Secondary Fire Settings							--	Settings for the Secondary fire of the weapon
------------------------------------------------------
SWEP.Secondary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Secondary.DefaultClip = 0 -- (Integer) Default number of ammo you spawn with
SWEP.Secondary.Ammo = "none" -- (String) Secondary ammo used by the weapon, bullets probably
SWEP.Secondary.RPM = 60 -- (Integer) Go to a wikipedia page and look at the RPM of the weapon, then put that here - the base will do the math
SWEP.Secondary.PureDmg = 60 -- (Integer) Base damage, put one number here and the base will do the rest
------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------
SWEP.Weight = 1 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
SWEP.StoppageRate = 0 -- (Integer) Rate of stoppages in the weapon, look up the real world number estimations and just throw that in here.
------------------------------------------------------
--	Melee Settings									--
------------------------------------------------------
SWEP.MeleeAnimType = 0 -- (Integer) Melee type; 0=holdtype animation, 1=pistol whip, 2=rifle butt
SWEP.MeleeRange = 70 -- (Integer) Range of melee weapon swings
SWEP.HasMeleeAttack = false -- (Boolean) Does this weapon have a pistol whip or rifle butt animation?
SWEP.AltFireMelee = true -- (Boolean) Is the alt fire a melee attack?
SWEP.IsBladedMelee = false -- (Boolean) Is the melee a blade?
------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------
SWEP.IronSightsPos = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Transform
SWEP.IronSightsAng = Vector( 0 , 0 , 0 ) -- (Vector) Ironsight XYZ Rotation
SWEP.RunArmOffset = Vector( -10 , -14 , -1.5 ) -- (Vector) Sprinting XYZ Transform
SWEP.RunArmAngle = Vector( -25 , 0 , -50 ) -- (Vector) Sprinting XYZ Rotation

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
	self.HoldMeRight = VNTCB.HoldType.Sword -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua
end

SWEP.SeqIdle = "idle01"

-- Draw
SWEP.SeqDraw = "draw"

SWEP.SeqHolster = "holster"

-- Melee
SWEP.SeqHitCenter = "hitcenter1"
SWEP.SeqHitCenter2 = "hitcenter2"
SWEP.SeqMissCenter = "misscenter1"
SWEP.SeqMissCenter2 = "misscenter2"
