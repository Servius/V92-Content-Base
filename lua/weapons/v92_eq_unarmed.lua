AddCSLuaFile( )
------------------------------------------------------
--	V92 Base Specialties							--
--	Unarmed Hands									--
------------------------------------------------------
SWEP.Spawnable = true -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------
SWEP.WeaponName = "v92_eq_unarmed" -- (String) Name of the weapon script
SWEP.WeaponEntityName = "v92_eq_unarmed" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "Unarmed" -- (String) Printed name on menu
SWEP.Category = "92nd Dev Unit" -- (String) Category
SWEP.Instructions = "Don't want to be shot?" -- (String) Instruction
SWEP.Author = "V92" -- (String) Author
SWEP.Contact = "V92" -- (String) Contact
SWEP.Slot = 1 -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = 92 -- (Integer) Bucket position
SWEP.ViewModelFOV = 54 -- (Integer) First-person field of view
SWEP.DrawWeaponInfoBox = true -- (Boolean) Draw a verbose info box in the HUD buckets
SWEP.BounceWeaponIcon = false -- (Boolean) This causes that annoying icon bounce effect used on the Tool Gun
SWEP.DrawAmmo = false -- (Boolean) Draw our ammo, you can change this is it doesn't use ammo or you're hardcore
SWEP.DrawCrosshair = true -- (Boolean) You can change this is you're a git who can't aim
SWEP.AutoSwitchTo = false -- (Boolean) Auto-switch to this weapon when picked up? Leave to false - PLEASE
SWEP.AutoSwitchFrom = true -- (Boolean) Auto-switch away from this weapon when you pickup a new gun? Leave at false - PLEASE

------------------------------------------------------
--	Setup Clientside Info							--	This block must be in every weapon!
------------------------------------------------------
if CLIENT then
	SWEP.DrawWeaponInfoBox = SWEP.DrawWeaponInfoBox
	SWEP.BounceWeaponIcon = SWEP.BounceWeaponIcon
	SWEP.DrawAmmo = SWEP.DrawAmmo
	SWEP.DrawCrosshair = SWEP.DrawCrosshair
	SWEP.AutoSwitchTo = SWEP.AutoSwitchTo
	SWEP.AutoSwitchFrom = SWEP.AutoSwitchFrom
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
end

hook.Add( "CalcMainActivity" , "Unarmed_Anims" , function( ply , vel )
	if CLIENT then
		usermessage.Hook( "Unarmed_Anims" , function( um )
			local ply2 = um:ReadEntity( )
			local anim = um:ReadString( )
			if not IsValid( ply2 ) or not ply2:IsPlayer( ) then return end

			if anim == "1" then
				ply2:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD , ACT_HL2MP_JUMP_ANGRY , false )
			elseif anim == "2" then
				ply2:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD , ACT_HL2MP_RUN_FAST , false )
			elseif anim == "3" then
				ply2:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD , ACT_GMOD_IN_CHAT , true )
			end
		end )
	end
end )

SWEP.Weight = 0
SWEP.UseHands = false
SWEP.ViewModel = Model( "models/props_junk/PopCan01a.mdl" )
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
	if IsValid( self.Owner ) then
		if SERVER then
			local vm = self.Owner:GetViewModel( )

			if self.Owner:KeyDown( IN_SPEED ) and self.Owner:GetVelocity( ):Length( ) > self.Owner:GetWalkSpeed( ) and self.Owner:GetMoveType( ) == 2 then
				if not self.UserMessageSent then
					umsg.Start( "Unarmed_Anims" )
					umsg.Entity( self.Owner )
					umsg.String( "2" )
					umsg.End( )
					self.UserMessageSent = true
				end

				timer.Create( "unarmed_reset" .. self:EntIndex( ) , 0.02 , 1 , function( )
					if not self:IsValid( ) then return end
					umsg.Start( "Unarmed_Anims" )
					umsg.Entity( self.Owner )
					umsg.String( "3" )
					umsg.End( )
					self.UserMessageSent = false
				end )
			end

			if self.Owner:KeyDown( IN_JUMP ) and self.Owner:GetVelocity( ):Length( ) > self.Owner:GetWalkSpeed( ) then
				if not self.UserMessageSent then
					umsg.Start( "Unarmed_Anims" )
					umsg.Entity( self.Owner )
					umsg.String( "1" )
					umsg.End( )
					self.UserMessageSent = true
				end

				timer.Create( "unarmed_reset_jump" .. self:EntIndex( ) , 0.02 , 1 , function( )
					if not self:IsValid( ) then return end
					umsg.Start( "Unarmed_Anims" )
					umsg.Entity( self.Owner )
					umsg.String( "1" )
					umsg.End( )
					self.UserMessageSent = false
				end )
			end
		end
	end
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

-- Don't fucking cut off your hands
-- ToDo: Prevent Dropping
function SWEP:OnDrop( )
	if IsValid( self ) then
		self:Remove( )
		self.Owner:Give( self.WeaponName )
	end
end