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
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Slot = 0 -- (Integer) Bucket to place weapon in, 1 to 6
SWEP.SlotPos = 8 -- (Integer) Bucket position
SWEP.ViewModelFOV = 90 -- (Integer) First-person field of view
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
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
end

SWEP.Weight = 0
SWEP.UseHands = true
SWEP.ViewModel = Model( "models/jessev92/weapons/sprinting_c.mdl" )
SWEP.WorldModel = ""
SWEP.HoldType = "normal"
SWEP.Primary.Ammo = "none"
SWEP.Primary.ClipSize = -1
SWEP.Secondary.Ammo = "none"
SWEP.Secondary.Automatic = false
SWEP.Secondary.ClipSize = -1

function SWEP:Think()
	if IsValid(self.Owner) then
		if SERVER then
			
			local vm = self.Owner:GetViewModel()
			
			if self.Owner:KeyDown(IN_SPEED) and self.Owner:GetVelocity():Length() > self.Owner:GetWalkSpeed() and self.Owner:GetMoveType() == 2 then

				--self.Owner:EmitSound( Sound( self.BreathingSnd ) )
				vm:ResetSequence( vm:LookupSequence( "Sprint" ) )
				
				--self.Weapon:SendWeaponAnim( ACT_VM_HAULBACK )
				self.Weapon:SetNextSecondaryFire( CurTime() + 0.6 )
				self.Weapon:SetNextPrimaryFire( CurTime() + 0.6 )
	
			--elseif self.Owner:GetVelocity():Length() <= self.Owner:GetWalkSpeed() then
				--vm:ResetSequence( vm:LookupSequence( "Slide_Crouch" ) )
			else
				--self:Idle()
				vm:ResetSequence( vm:LookupSequence( "Idle" ) )	
				--vm:ResetSequence( vm:LookupSequence( "Jump" ) )
				--self.Weapon:SendWeaponAnim( ACT_VM_MISSLEFT )
				--self.Owner:StopSound(self.BreathingSnd) 
			end

			if self.Owner:KeyDown(IN_DUCK) then
				vm:ResetSequence( vm:LookupSequence( "Slide" ) )
				--self.Weapon:SendWeaponAnim( ACT_VM_SWINGHARD )
			end
			
			--if self.Owner:KeyDown(IN_JUMP) then
			if self.Owner:KeyDown(IN_JUMP) and self.Owner:GetVelocity():Length() > self.Owner:GetWalkSpeed() then

				vm:ResetSequence( vm:LookupSequence( "Jump" ) )
				--self.Weapon:SendWeaponAnim( ACT_VM_MISSLEFT )
			end
			
			if self.Owner:KeyDown(IN_USE) then
				vm:ResetSequence( vm:LookupSequence( "Generic_Use" ) )
				--vm:ResetSequence( vm:LookupSequence( "Jump" ) )
				--self.Weapon:SendWeaponAnim( ACT_VM_PICKUP )
			end
			
			if self.Owner:GetMoveType() == 9 and (self.Owner:KeyDown( IN_FORWARD ) or self.Owner:KeyDown( IN_BACK ) ) then
			--if self.Owner:GetMoveType() == 9 and self.Owner:KeyDown(IN_FORWARD) then
				--vm:ResetSequence( vm:LookupSequence( "ClimbLedge" ) )
				--vm:ResetSequence( vm:LookupSequence( "Jump" ) )
				--self.Weapon:SendWeaponAnim( ACT_VM_HITCENTER2 )
				vm:ResetSequence( vm:LookupSequence( "ClimbLoop" ) )
			end

			--if self.Parachuting then
				--vm:ResetSequence( vm:LookupSequence( "Jump_Init" ) )
			--end
		end
	end
end

function SWEP:Idle()

	local vm = self.Owner:GetViewModel()
	vm:ResetSequence( vm:LookupSequence( "Idle" ) )

end

function SWEP:Initialize( )
	self:SetHoldType( self.HoldType )
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
		--self.Owner:Give( self.WeaponName )
	end
end