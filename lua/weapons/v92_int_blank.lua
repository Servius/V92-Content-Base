
AddCSLuaFile( )
------------------------------------------------------
--	V92 Base Specialties							--
--	Blank									--
------------------------------------------------------
SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = "v92_int_blank" -- (String) Name of the weapon script
SWEP.WeaponEntityName = "v92_int_blank" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "Blank" -- (String) Printed name on menu
SWEP.Category = "92nd Dev Unit" -- (String) Category
SWEP.Instructions = "$Recycle.Bin" -- (String) Instruction
SWEP.Author = "V92" -- (String) Author
SWEP.Contact = "V92" -- (String) Contact
SWEP.Slot = 92 -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = 92 -- (Integer) Bucket position
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------
if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
end

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = true
SWEP.Weight = 0
SWEP.UseHands = false
SWEP.ViewModel = Model( "" )
SWEP.WorldModel = Model( "" )
SWEP.HoldType = "normal"
SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = -1
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Automatic = false
SWEP.Secondary.ClipSize = -1

function SWEP:Initialize( )
	self:SetWeaponHoldType( self.HoldType )
end

function SWEP:Think( )
	return false
end

function SWEP:CanPrimaryAttack( )
	return false
end

function SWEP:PrimaryAttack( )
end

function SWEP:CanSecondaryAttack( )
	return false
end

function SWEP:SecondaryAttack( )
end

function SWEP:Reload( )
end

function SWEP:Deploy( )
end

function SWEP:OnDrop( )
	self:Remove( )
end