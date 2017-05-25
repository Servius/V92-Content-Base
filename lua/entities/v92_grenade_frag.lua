
AddCSLuaFile()

--ENT.Base = VNTCB.Bases.Grenade -- Base entity
ENT.Type = "anim" -- Type of entity
ENT.PrintName = "Fraggy" -- Name on HUD
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
	["Debris"] = Sound( "BaseGrenade.Explode" ) ,
	["Explosion"] = Sound( "BaseExplosionEffect.Sound" ) ,
	["WaterExplosion"] = Sound( "WaterExplosionEffect.Sound" ) ,

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

	-- Think per tick
	function ENT:Think()

		-- if timer is up
		if self.Timer < CurTime() then

			-- Boom
			self:Explosion()
			
			-- Remove it
			self:Remove()

		end

	end

	-- Explosions!
	function ENT:Explosion()

		-- Emit our explosion sounds
		if self:WaterLevel( ) > 0 then

			self:EmitSound( self.Sounds.WaterExplosion )

		else

			self:EmitSound( self.Sounds.Explosion )
			self:EmitSound( self.Sounds.Debris )

		end

		local HeliBombEffect = EffectData( ) -- Create the effect data
		HeliBombEffect:SetOrigin( self:GetPos( ) ) -- Set the origin
		util.Effect( "HelicopterMegaBomb" , HeliBombEffect ) -- Play it
		
		local Explosion = ents.Create("env_explosion") -- Create the explosion
		Explosion:SetOwner(self.Owner) -- Set the owner
		Explosion:SetPos( self:GetPos( ) ) -- Set the position
		Explosion:SetKeyValue("iMagnitude", "200") -- Set the magnitude
		Explosion:Spawn( ) -- Spawn it
		Explosion:Activate( ) -- Activate it
		Explosion:Fire( "Explode" , "" , 0 ) -- Fire it up
		
		local ScreenShake = ents.Create( "env_shake" ) -- Create the screen shake
		ScreenShake:SetOwner( self.Owner ) -- Set the owner
		ScreenShake:SetPos( self:GetPos( ) ) -- Set the position
		ScreenShake:SetKeyValue( "amplitude" , "2000" ) -- Power of the shake
		ScreenShake:SetKeyValue( "radius" , "900" ) -- Radius of the shake
		ScreenShake:SetKeyValue( "duration" , "2.5" ) -- Time of shake
		ScreenShake:SetKeyValue( "frequency" , "255" ) -- how hard should the screenshake be
		ScreenShake:SetKeyValue( "spawnflags" , "4" ) -- Spawnflags(In Air)
		ScreenShake:Spawn( ) -- Spawn it
		ScreenShake:Activate( ) -- Activate it
		ScreenShake:Fire( "StartShake" , "" , 0 ) -- Fire it up

		--[[
		
		-- Find entities
		local FoundEntities = ents.FindInSphere( self:GetPos( ) , 100 )

		-- Loop through our found entities near the grenade
		for Keys , Entities in pairs( FoundEntities ) do
		
			-- If they have valid phyiscs
			if Entities:GetPhysicsObject():IsValid() then

				-- Chance to unweld and unfreeze props
				if (math.random(1, 100) < 10) then
				
					-- Enable motion
					Entities:Fire( "enablemotion" , "" , 0 )
					
					-- Remove Constraints
					constraint.RemoveAll( Entities )

				end

			end

		end
		
		--]]

	end

end