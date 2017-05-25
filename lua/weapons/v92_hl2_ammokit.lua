
------------------------------------------------------
--	Half-Life 2
--	Medical Kit
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Ammo Kit" -- (String) Printed name on menu

if not VNTCB then
	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	return false
end

SWEP.Base = VNTCB.Bases.WepDeployable -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								
--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = "v92_hl2_ammokit" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherEntity = SWEP.WeaponName .. "_live" -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 256 -- (Integer) Force of grenade launchers and shell throwers like that.
SWEP.Manufacturer = VNTCB.Manufacturer.VAR -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.VAR -- (String) Country of origin
SWEP.Category = VNTCB.Category.HL2 -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNTCB.Bucket.Support -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNTCB.Slot.Support -- (Integer) Bucket position
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								
------------------------------------------------------
SWEP.ViewModel = Model( "models/jessev92/weapons/sprinting_c.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/weapons/w_slam.mdl" ) -- (String) World model - w_*
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms
SWEP.HoldType = "normal" -- (String) Hold type for our weapon, refer to wiki for animation sets
------------------------------------------------------
--	Gun Types										
--	Set the type of weapon - ONLY PICK ONE!
------------------------------------------------------
SWEP.WeaponType = VNTCB.WeaponType.Thrown -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Grenade Launcher, 7=Rocket Launcher
------------------------------------------------------
--	Primary Fire Settings						
--	Settings for the primary fire of the weapon
------------------------------------------------------
SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 3 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "ammobag" -- (String) Primary ammo used by the weapon, bullets probably
------------------------------------------------------
--	Gun Mechanics									
--	Various things to tweak the effects and feedback
------------------------------------------------------
SWEP.Weight = 2 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!
------------------------------------------------------
--	Grenade Mechanics								
--	Grenade Shit
------------------------------------------------------

SWEP.Sounds = {
	["Throw"] = Sound( "BF2.AmmoBag.Draw" ) ,
}

------------------------------------------------------
--	Ironsight & Run Positions						
--	Set our model transforms for running and ironsights
------------------------------------------------------

SWEP.IronSightsPos = Vector( 0 , 0 , 0 )
SWEP.IronSightsAng = Vector( 0 , 0 , 0 )
SWEP.RunArmOffset = Vector( 0 , 0 , 0 )
SWEP.RunArmAngle = Vector( -70 , 0 , 0 )

------------------------------------------------------
--	Setup Clientside Info							
--	This block must be in every weapon!
------------------------------------------------------
if CLIENT then

	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
	
elseif SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )
	
end

------------------------------------------------------
--	SWEP:Initialize() 							--	Called when the weapon is first loaded
------------------------------------------------------
function SWEP:Initialize( )

	self.HoldMeRight = VNTCB.HoldType.Support -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua

end
