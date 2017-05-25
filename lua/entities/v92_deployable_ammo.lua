
AddCSLuaFile()

ENT.Type = "anim"
--ENT.Base = "v92_base_deployable"

ENT.PrintName = "Ammunition Bag"
ENT.Category = VNTCB.Category.VNT
ENT.Author = VNTCB.Info.author
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions
ENT.Contact = VNTCB.Info.contact
ENT.Spawnable = false
ENT.AdminOnly = true

ENT.RemainingCharge = GetConVarNumber("VNT_SWep_Deployable_Ammo_Charge")
ENT.ActionDelay = CurTime()
ENT.PickupSound = Sound( "BF2.Common.Resupply" )
ENT.PickupModel = Model( "models/Items/BoxMRounds.mdl" )
ENT.RemoveTime = 300
ENT.BlacklistedAmmoTypes = {
	"medbag" ,
	"ammobag" ,
	//"c4" ,
}
ENT.BlacklistedWeapons = {
	"gmod_tool" ,
	"camera" ,
	"weapon_physcannon" ,
	"weapon_physgun" ,
	"weapon_crowbar" ,
	"weapon_stunstick" ,
	"v92_hl2_ammokit" ,
	"v92_hl2_medkit" ,
	"v92_bf2_ammobag" ,
	"v92_bf2_medicbag" ,
}

if CLIENT then

	function ENT:Initialize() end
	function ENT:Draw() self:DrawModel() end
	function ENT:Think() end 

end

if SERVER then

	function ENT:Initialize()

		self:SetModel( self.PickupModel )
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )

		local phys = self:GetPhysicsObject()
		if phys and phys:IsValid() then	phys:Wake() end

		timer.Simple( self.RemoveTime , function( ) 
		
			if IsValid( self ) then
			
				self:Remove()
				
			end
			
		end )

	end

	function ENT:OnTakeDamage(dmginfo)

		self:GetPhysicsObject():AddVelocity(dmginfo:GetDamageForce() * 0.1)
		
	end

	function ENT:Use( ply )

		if ply:IsPlayer( ) and not ply:Health( ) == ply:GetMaxHealth( ) then

			if not ply:KeyDown( IN_SPEED ) then

				ply:PickupObject( self )

			else 

				if self.PickupSound != nil then

					ply:EmitSound( self.PickupSound )

				end

				ply:SetHealth( ply:GetMaxHealth( ) )

				if IsValid( self ) then
				
					self:Remove()
					
				end

			end

		end

	end

	function ENT:OnRemove() return false	end 

	function ENT:Think()

		if SERVER then

			if CurTime() > self.ActionDelay then

				for Key , FoundEnts in pairs( ents.FindInSphere( self:GetPos( ) , GetConVarNumber("VNT_SWep_Deployable_FindRadius") ) ) do

					if IsValid( FoundEnts ) and ( 
						( FoundEnts:IsPlayer( ) and FoundEnts:Alive( ) )
					)
					then
					
						if GetConVarNumber("VNT_SWep_Deployable_Ammo_Charge") > 0 then
	
							local wep = FoundEnts:GetActiveWeapon()

							if self.BlacklistedAmmoTypes != nil then

								if table.HasValue( self.BlacklistedAmmoTypes , wep:Ammo1() ) then

									return false

								end

								if table.HasValue( self.BlacklistedAmmoTypes , wep:Ammo2() ) then

									return false

								end

							end


							if wep.Primary or wep.Secondary then

								if wep.Primary.ClipSize > 0 then
								
									FoundEnts:GiveAmmo( GetConVarNumber("VNT_SWep_Deployable_Ammo_Apply") , wep:GetPrimaryAmmoType() )

									self.RemainingCharge = ( self.RemainingCharge - GetConVarNumber("VNT_SWep_Deployable_Ammo_Apply") )

								end

								if wep.Secondary and wep.Secondary.ClipSize > 0 then

									FoundEnts:GiveAmmo( GetConVarNumber("VNT_SWep_Deployable_Ammo_Apply") , wep:GetSecondaryAmmoType() )

									self.RemainingCharge = ( self.RemainingCharge - GetConVarNumber("VNT_SWep_Deployable_Ammo_Apply") )

								end

								-- print( "Ammo Pack: Remaining Charge is: " .. self.RemainingCharge )
								FoundEnts:EmitSound( self.PickupSound )

							end
						
						else
						
							self:Remove()

						end

					end

				end

				self.ActionDelay = CurTime() + GetConVarNumber("VNT_SWep_Deployable_GiveDelay")

			end

		end

	end

end