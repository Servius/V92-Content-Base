
AddCSLuaFile()

--ENT.Base = VNTCB.Bases.Grenade -- Base entity
ENT.Type = "anim" -- Type of entity
ENT.PrintName = "Smokey" -- Name on HUD
ENT.Author = VNTCB.Info.author -- Author name
ENT.Contact = VNTCB.Info.contact -- Contact
ENT.Purpose = VNTCB.Info.purpose -- Purpose
ENT.Instructions = VNTCB.Info.instructions -- Instructions

-- Model to use
ENT.Model = Model( "models/weapons/w_grenade.mdl" )

-- Mass in KG
ENT.Mass = 5

-- Sound table
ENT.Sounds = {

	["BounceConcrete"] = Sound( "BF1942.Grenade.Collide_Concrete" ) ,
	["BounceMetal"] = Sound( "BF1942.Grenade.Collide_Metal" ) ,
	["BounceSand"] = Sound( "BF1942.Grenade.Collide_Sand" ) ,
	["BounceWood"] = Sound( "BF1942.Grenade.Collide_Wood" ) ,
	["Explosion"] = Sound( "BaseSmokeEffect.Sound" ) ,
	["WaterExplosion"] = Sound( "BaseSmokeEffect.Sound" ) ,

}

ENT.SmokeColour = Color( 150 , 150 , 150 )

function ENT:SetupDataTables()  

	self:DTVar("Bool", 0, "Explode")
end 

-- Physics, called on collisions
function ENT:PhysicsCollide( Data , PhysicsMesh )

	-- if speed over 50
	if Data.Speed > 50 then
	
		-- Emit bounce sound
		if Data.HitEntity:GetMaterialType( MAT_CONCRETE ) then

			self:EmitSound( self.Sounds.BounceConcrete )

		elseif Data.HitEntity:GetMaterialType( MAT_SAND ) or Data.HitEntity:GetMaterialType( MAT_DIRT ) or Data.HitEntity:GetMaterialType( MAT_GRASS ) then

			self:EmitSound( self.Sounds.BounceSand )

		elseif Data.HitEntity:GetMaterialType( MAT_WOOD ) then

			self:EmitSound( self.Sounds.BounceWood )

		else

			self:EmitSound( self.Sounds.BounceMetal )
		
		end

	end

	-- Bounce math
	-- We're walking a fine line between a rock and a bouncy ball.
	local BounceForce  = -Data.Speed * Data.HitNormal * 0.1 + ( Data.OurOldVelocity * -0.7 )

	-- Apply the bounce math
	PhysicsMesh:ApplyForceCenter( BounceForce )

	if not self.Collide then self.Collide = false end
	if self.Collide then return end

	timer.Simple(1, function()
		if not self then return end
		if not IsFirstTimePredicted() then return end

		self:EmitSound( self.Sounds.Explosion )

		self:SetDTBool(0, true)

	end)

	self.Collide = true
end

if CLIENT then

	function ENT:Think()
	
		if self:GetDTBool(0) then
			self:Smoke()
			self:SetDTBool(0, false)
		end

	end

	function ENT:Smoke()

		local vPos = Vector(math.Rand(-5, 5), math.Rand(-5, 5), 0)
		local vOffset = self:LocalToWorld(Vector(0, 0, self:OBBMins().z))

		local emitter = ParticleEmitter(vOffset)
		
		for i = 1, 400 do 
			timer.Simple(i / 75, function()
				if not IsValid(self) or self:WaterLevel() > 2 then return end

				local vPos = Vector(math.Rand(-5, 5), math.Rand(-5, 5), 0)
				local vOffset = self:LocalToWorld(Vector(0, 0, self:OBBMins().z))

				local smoke = emitter:Add("particle/particle_smokegrenade", vOffset) // + vPos)
				smoke:SetVelocity(VectorRand() * 300)
				smoke:SetGravity(Vector(math.Rand(-100, 100), math.Rand(-100, 100), math.Rand(0, 25)))
				smoke:SetDieTime(45)
				smoke:SetStartAlpha(255)
				smoke:SetEndAlpha(0)
				smoke:SetStartSize(0)
				smoke:SetEndSize(350)
				smoke:SetRoll(math.Rand(-180, 180))
				smoke:SetRollDelta(math.Rand(-0.2,0.2))
				smoke:SetColor( self.SmokeColour.r , self.SmokeColour.g , self.SmokeColour.b )
				smoke:SetAirResistance(math.Rand(150, 600))
				smoke:SetBounce(0.5)
				smoke:SetCollide(true)
				
				if i == 400 then

					emitter:Finish()

				end	

			end)

		end

	end

end

if SERVER then

	function ENT:Use( User )
	
		if User:IsPlayer() then
		
			User:PickupObject( self )
			
		end
	
	end	

	-- Initialize, Called on spawn
	function ENT:Initialize()

		-- Owner is entity owner
		self.Owner = self:GetOwner( )

		-- If the owner isn't valid
		if not IsValid( self.Owner ) then

			-- Remove the grenade
			self:Remove()

			-- Exit
			return false

		end

		-- Set our timer networked integer variable
		self.Timer = self:GetNWInt("Cook")

		-- Set model
		self:SetModel( self.Model )
		
		-- Set physics type
		self:PhysicsInit( SOLID_VPHYSICS )
		
		-- Set movetype
		self:SetMoveType( MOVETYPE_VPHYSICS )
		
		-- Set solid
		self:SetSolid( SOLID_VPHYSICS )
		
		-- Draw a shadow
		self:DrawShadow( true )
		
		-- Set our collision group
		self:SetCollisionGroup( COLLISION_GROUP_NONE )
		
		-- Get our physics
		local Physics = self:GetPhysicsObject()
		
		-- If the physics are valid
		if Physics:IsValid() then
		
			-- Set our mass to either the defined mass, or the prop's mass
			Physics:SetMass( self.Mass or Physics:GetMass() )

			-- Wake up
			Physics:Wake()

		end

	end

	function ENT:Think()
	
		if self:GetDTBool(0) then

			timer.Simple( 60 , function( )

				if IsValid( self ) then
				
					self:Remove()
					
				end

			end )

		end

	end

end