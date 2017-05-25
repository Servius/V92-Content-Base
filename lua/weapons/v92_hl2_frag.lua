
------------------------------------------------------
--	Half-Life 2
--	Fragmentation Grenade
------------------------------------------------------

AddCSLuaFile( )

SWEP.PrintName = "Grenade" -- (String) Printed name on menu

if not VNTCB then
	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	return false
end

SWEP.Base = VNTCB.Bases.WepNade -- (String) Weapon base parent this is a child of
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.WeaponName = "v92_hl2_frag" -- (String) Name of the weapon script
SWEP.WeaponEntityName = SWEP.WeaponName .. "_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherEntity = SWEP.WeaponName .. "_live" -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
--SWEP.GrenadeLauncherEntity = "v92_grenade_flare" -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 3500 -- (Integer) Force of grenade launchers and shell throwers like that.
SWEP.Manufacturer = VNTCB.Manufacturer.CMB -- (String) Gun company that makes this weapon
SWEP.CountryOfOrigin = VNTCB.Country.VAR -- (String) Country of origin
SWEP.Category = VNTCB.Category.HL2 -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = VNTCB.Bucket.Explosive -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = VNTCB.Slot.Explosive -- (Integer) Bucket position
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--
------------------------------------------------------

SWEP.ViewModel = Model( "models/weapons/c_grenade.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/weapons/w_grenade.mdl" ) -- (String) World model - w_*
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms
SWEP.HoldType = "grenade" -- (String) Hold type for our weapon, refer to wiki for animation sets

------------------------------------------------------
--	Gun Types										--	Set the type of weapon - ONLY PICK ONE!
------------------------------------------------------

SWEP.WeaponType = VNTCB.WeaponType.Thrown -- (Integer) 1=Melee, 2=Pistol, 3=Rifle, 4=Shotgun, 5=Sniper, 6=Grenade Launcher, 7=Rocket Launcher

------------------------------------------------------
--	Primary Fire Settings							--	Settings for the primary fire of the weapon
------------------------------------------------------

SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 1 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "grenade" -- (String) Primary ammo used by the weapon, bullets probably

------------------------------------------------------
--	Gun Mechanics									--	Various things to tweak the effects and feedback
------------------------------------------------------

SWEP.Weight = 1 -- (Integer) The weight in Kilogrammes of our weapon - used in my weapon weight mod!

------------------------------------------------------
--	Grenade Mechanics								--	Grenade Shit
------------------------------------------------------

SWEP.FuseTime = 5 -- (Integer) How long the grenade has until it explodes
SWEP.CanCookGrenade = true -- (Boolean) Can we cook the grenade before throwing it?

SWEP.Sounds = {
	["Throw"] = Sound( "WeaponFrag.Throw" ) ,
	["Primed"] = Sound( "Weapon_AR2.Special1" ) ,
	["CookTick"] = Sound( "Weapon_AR2.Empty" ) ,
}

------------------------------------------------------
--	Ironsight & Run Positions						--	Set our model transforms for running and ironsights
------------------------------------------------------

SWEP.IronSightsPos = Vector( 0 , 0 , 0 )
SWEP.IronSightsAng = Vector( 0 , 0 , 0 )
SWEP.RunArmOffset = Vector( 0 , 0 , 0 )
SWEP.RunArmAngle = Vector( -70 , 0 , 0 )

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
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

	self.HoldMeRight = VNTCB.HoldType.Grenade -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua

end

SWEP.SeqIdle = { "idle01" }
SWEP.SeqDraw = { "drawbacklow" }
SWEP.SeqPullPin = { "draw" }
SWEP.SeqThrow = { "throw" }
