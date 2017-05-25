
AddCSLuaFile()

--ENT.Base = VNTCB.Bases.Grenade -- Base entity
ENT.Type = "anim" -- Type of entity
ENT.PrintName = "Fraggy" -- Name on HUD
ENT.Author = VNTCB.Info.author -- Author name
ENT.Contact = VNTCB.Info.contact -- Contact
ENT.Purpose = VNTCB.Info.purpose -- Purpose
ENT.Instructions = VNTCB.Info.instructions -- Instructions

-- Model to use
--ENT.Model = Model( "models/weapons/w_grenade.mdl" )
ENT.Model = Model( "models/props_junk/flare.mdl" )

-- Mass in KG
ENT.Mass = 5

-- Flare burn time
ENT.FlareTime = 180

-- Sound table
ENT.Sounds = {

	["BounceConcrete"] = Sound( "BF1942.Grenade.Collide_Concrete" ) ,
	["BounceMetal"] = Sound( "BF1942.Grenade.Collide_Metal" ) ,
	["BounceSand"] = Sound( "BF1942.Grenade.Collide_Sand" ) ,
	["BounceWood"] = Sound( "BF1942.Grenade.Collide_Wood" ) ,
	["Debris"] = Sound( "BaseGrenade.Explode" ) ,
	["Explosion"] = Sound( "BaseExplosionEffect.Sound" ) ,
	["WaterExplosion"] = Sound( "WaterExplosionEffect.Sound" ) ,
	["Burn"] = Sound( "Weapon_FlareGun.Burn" ) ,

}

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

	if self:GetNWBool("Smoke") then

		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
		util.Effect("fx_flare_puff_mad", effectdata)

	end
	
	self:SetNWBool("Smoke", false)
	
end

if CLIENT then

	function ENT:Initialize()

		self.Timer = CurTime() + 1

		local vOffset 	= self:LocalToWorld(Vector(0, 0, self:OBBMins().z))
		local vNormal 	= (vOffset - self:GetPos()):GetNormalized()

		local emitter 	= ParticleEmitter(vOffset)

		for i = 1, 1500 do 
			timer.Simple(i / 150, function()
				if not IsValid(self) or not self:GetNWBool("Smoke") then return end

				local vOffset 	= self:LocalToWorld(Vector(0, 0, self:OBBMins().z))
				local vNormal 	= (vOffset - self:GetPos()):GetNormalized()

				local particle = emitter:Add("particle/particle_smokegrenade", vOffset)
				particle:SetVelocity(vNormal * 10)
				particle:SetDieTime(0.5)
				particle:SetStartAlpha(255)
				particle:SetStartSize(4)
				particle:SetEndSize(30)
				particle:SetRoll(math.Rand(-5, 5))
				particle:SetColor(180, 0, 0)
				
				if i == 1500 then
					emitter:Finish()
				end			
			end)
		end
	end

	function ENT:Think()

		if (self.Timer < CurTime()) then
			local light = DynamicLight(self:EntIndex())
			if (light) then
				light.Pos = self:GetPos()
				light.r = 255
				light.g = 100
				light.b = 100
				light.Brightness = 1
				light.Decay = math.random(500, 800) * 5
				light.Size = math.random(500, 800)
				light.DieTime = CurTime() + 1
			end
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

		self:EmitSound( self.Sounds.Burn )
		
		self.Timer = CurTime() + 1
		self.RepeatTimer = CurTime() + 1

		self:SetNWBool("Smoke", true)

	end

	function ENT:Think()

		if self.Timer < CurTime() then

			self:Explosion()
			
		end

		if self:WaterLevel() > 2 then
		
			self:Remove()

		end

	end

	function ENT:Explosion()

		--[[
		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
		util.Effect("fx_flare_explosion_mad", effectdata)
		--]]

		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
		util.Effect("fx_flare_fire_mad", effectdata)
		

		local tracedata = {}
		tracedata.start = self:GetPos()
		tracedata.endpos = Vector(self:GetPos().x, self:GetPos().y, self:GetPos().z - 100)
		tracedata.filter = self
		local tr = util.TraceLine(tracedata)

		local flame = ents.Create("point_hurt")
		flame:SetPos(self:GetPos())
		flame:SetOwner(self.Owner)
		flame:SetKeyValue("DamageRadius", 100)
		flame:SetKeyValue("Damage", 5)
		flame:SetKeyValue("DamageDelay", 0.4)
		flame:SetKeyValue("DamageType", 8)
		flame:Spawn()
		flame:Fire("TurnOn", "", 0) 
		flame:Fire("kill", "", 0.5)

		--[[
		if (math.random(0, 6) < 1 and self:WaterLevel() <= 0 and tr.HitWorld) then
			local fire = ents.Create("env_fire")
			fire:SetPos(self:GetPos() + Vector( math.random(-60, 60), math.random(-60, 60), 0))
			fire:SetKeyValue("health", math.random(5, 15))
			fire:SetKeyValue("firesize", "32")
			fire:SetKeyValue("fireattack", "10")
			fire:SetKeyValue("damagescale", "1.0")
			fire:SetKeyValue("StartDisabled", "0")
			fire:SetKeyValue("firetype", "0")
			fire:SetKeyValue("spawnflags", "128")
			fire:Spawn()
			fire:Fire("StartFire", "", 0)
		end
		--]]

		--[[
		local explo = ents.Create("env_explosion")
			explo:SetOwner(self.Owner)
			explo:SetPos(self:GetPos())
			explo:SetKeyValue("iMagnitude", "50")
			explo:SetKeyValue("spawnflags", "783")
			explo:Spawn()
			explo:Activate()
			explo:Fire("Explode", "", 0)
			
		--]]

		--self:Fire("kill", "", 5)
		
		timer.Simple( self.FlareTime , function( )
		
			if IsValid( self ) then
			
				self:Remove()
				
			end
		
		end )
	end

	function ENT:OnRemove()

		self:StopSound( self.Sounds.Burn )
	end
	
end
