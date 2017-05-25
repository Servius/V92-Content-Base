
AddCSLuaFile()

ENT.Type = "anim"
--ENT.Base = "v92_base_deployable"

ENT.PrintName = "Medical Kit"
ENT.Category = VNTCB.Category.VNT
ENT.Author = VNTCB.Info.author
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions
ENT.Contact = VNTCB.Info.contact
ENT.Spawnable = false
ENT.AdminOnly = true

ENT.RemainingCharge = GetConVarNumber("VNT_SWep_Deployable_Medical_Charge")
ENT.ActionDelay = CurTime()
ENT.PickupSound = Sound( "BF2.Common.Heal" )
ENT.PickupModel = Model( "models/weapons/w_medkit.mdl" )
ENT.RemoveTime = 300

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

		timer.Simple( self.RemoveTime + 5 , function( ) 
		
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
						or ( FoundEnts:IsNPC( ) )
					)
						and FoundEnts:Health() < FoundEnts:GetMaxHealth()
					then
					
						if GetConVarNumber("VNT_SWep_Deployable_Medical_Charge") > 0 then

							if ( ( FoundEnts:GetMaxHealth() - FoundEnts:Health() ) < GetConVarNumber( "VNT_SWep_Deployable_Medical_Apply" ) ) then

								-- print( "Health Pack: Health to Apply Would Overflow! Clamping!" )
								FoundEnts:SetHealth( FoundEnts:Health() + ( math.Clamp( FoundEnts:Health() , 1 , ( FoundEnts:GetMaxHealth() - FoundEnts:Health()  ) ) ) )
								self.RemainingCharge = ( self.RemainingCharge - ( FoundEnts:GetMaxHealth() - FoundEnts:Health()  ) )
								
								FoundEnts:EmitSound( self.PickupSound )

								return
						
							elseif ( ( FoundEnts:GetMaxHealth( ) - FoundEnts:Health() ) > GetConVarNumber( "VNT_SWep_Deployable_Medical_Charge" ) ) then

								-- print( "Health Pack: Missing Health is MORE than Remaining Charge!" )
								FoundEnts:SetHealth( FoundEnts:Health() + GetConVarNumber("VNT_SWep_Deployable_Medical_Charge") )

							else

								-- print( "Health Pack: Missing Health is LESS than Remaining Charge!" )
								FoundEnts:SetHealth( FoundEnts:Health() + GetConVarNumber("VNT_SWep_Deployable_Medical_Apply") )

							end
							
							self.RemainingCharge = ( self.RemainingCharge - GetConVarNumber("VNT_SWep_Deployable_Medical_Apply") )
							-- print( "Health Pack: Remaining Charge is: " .. self.RemainingCharge )
							FoundEnts:EmitSound( self.PickupSound )

						else
						
							SafeRemoveEntity( self )

						end

					end

				end

				self.ActionDelay = CurTime() + GetConVarNumber("VNT_SWep_Deployable_GiveDelay")

			end

		end

	end

end