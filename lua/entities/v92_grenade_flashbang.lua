
AddCSLuaFile()

// Flashbang entity originally made by Cheesylard but modified by Worshipper

ENT.Base = VNTCB.Bases.Grenade
ENT.Type = "anim"
ENT.PrintName = "Flashy"
ENT.Author = VNTCB.Info.author
ENT.Contact = VNTCB.Info.contact
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions

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

	timer.Simple(0.9, function()
		if not self then return end
		if not IsFirstTimePredicted() then return end

		self:SetDTBool(0, true)
	end)

	timer.Simple(1, function()
		if not self then return end
		if not IsFirstTimePredicted() then return end
	
		self:Explode()
	end)

	self.Collide = true

end

if CLIENT then

	local FLASHTIMER = 5 // time in seconds, for the grenade to transition from full white to clear
	local EFFECT_DELAY = 2 // time, in seconds when the effects still are going on, even when the whiteness of the flash is gone (set to -1 for no effects at all =]).

	local Endflash, Endflash2

	function ENT:Think()

		if self:GetDTBool(0) then
			local light = DynamicLight(self:EntIndex())

			if (light) then
				light.Pos = self:GetPos()
				light.r = 255
				light.g = 255
				light.b = 255
				light.Brightness = 4
				light.Size = 1000
				light.Decay = 1000
				light.DieTime = CurTime() + 0.1
			end
			
		else
		
			return false

		end

	end

	function ENT:Draw()

		self:DrawModel()
	end

	function FlashEffect() if LocalPlayer():GetNetworkedFloat("FLASHED_END") > CurTime() then

		local pl 			= LocalPlayer()
		local FlashedEnd 		= pl:GetNetworkedFloat("FLASHED_END")
		local FlashedStart 	= pl:GetNetworkedFloat("FLASHED_START")
		
		local Alpha

		if(FlashedEnd - CurTime() > FLASHTIMER) then
			Alpha = 150
		else
			local FlashAlpha = 1 - (CurTime() - (FlashedEnd - FLASHTIMER)) / (FlashedEnd - (FlashedEnd - FLASHTIMER))
			Alpha = FlashAlpha * 150
		end
		
			surface.SetDrawColor(255, 255, 255, math.Round(Alpha))
			surface.DrawRect(0, 0, surface.ScreenWidth(), surface.ScreenHeight())
		end 
	end
	hook.Add("HUDPaint", "FlashEffect", FlashEffect)
	
		local function StunEffect()
		local pl 			= LocalPlayer()
		local FlashedEnd 		= pl:GetNetworkedFloat("FLASHED_END")
		local FlashedStart 	= pl:GetNetworkedFloat("FLASHED_START")
	
		if (FlashedEnd > CurTime() and FlashedEnd - EFFECT_DELAY - CurTime() <= FLASHTIMER) then
			local FlashAlpha = 1 - (CurTime() - (FlashedEnd - FLASHTIMER)) / (FLASHTIMER)
			DrawMotionBlur(0, FlashAlpha / ((FLASHTIMER + EFFECT_DELAY) / (FLASHTIMER * 4)), 0)
		elseif (FlashedEnd > CurTime()) then
			DrawMotionBlur(0, 0.01, 0)
		else
			DrawMotionBlur(0, 0, 0)
		end
	end
	hook.Add("RenderScreenspaceEffects", "StunEffect", StunEffect)

end

if SERVER then

	function ENT:Use( User )
	
		print( "1" )
	
		if User:IsPlayer() then
		
			print( "2" )
		
			if not User:IsPlayerHolding() then
			
				print( "3" )
			
				User:PickupObject( self )

			end
			
		end
	
	end	

	local FLASH_INTENSITY = 4000

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
		self:SetModel( Model( "models/weapons/w_grenade.mdl" ) )
		
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
			
			self:SetUseType( SIMPLE_USE )

			-- Wake up
			Physics:Wake()

		end

	end

	function ENT:Explode()

		self:SetDTBool( 0 , false )

		local HeliBombEffect = EffectData( ) -- Create the effect data
		HeliBombEffect:SetOrigin( self:GetPos( ) ) -- Set the origin
		util.Effect( "HelicopterMegaBomb" , HeliBombEffect ) -- Play it
				
		-- Emit our explosion sounds
		if self:WaterLevel( ) > 0 then

			self:EmitSound( self.Sounds.WaterExplosion )

		else

			self:EmitSound( self.Sounds.Explosion )
			self:EmitSound( self.Sounds.Debris )

		end

		for _, pl in pairs(player.GetAll()) do

			//local ang = (self:GetPos() - pl:GetShootPos()):GetNormal():Angle()
			local ANG_1 = (self:GetPos() - pl:EyePos())
			local ANG_2 = ANG_1:GetNormal()
			local ANG_3 = ANG_2:Angle()

			local tracedata = {}

			tracedata.start = pl:GetShootPos()
			tracedata.endpos = self:GetPos()
			tracedata.filter = pl
			local tr = util.TraceLine(tracedata)

			if (!tr.HitWorld) then
				local dist = pl:GetShootPos():Distance(self:GetPos())  
				local endtime = FLASH_INTENSITY / (dist * 2)

				if (endtime > 6) then
					endtime = 6
				elseif (endtime < 1) then
					endtime = 0
				end

				simpendtime = math.floor(endtime)
				tenthendtime = math.floor((endtime - simpendtime) * 10)

				pl:SetNetworkedFloat("FLASHED_END", endtime + CurTime())

				pl:SetNetworkedFloat("FLASHED_END_START", CurTime())
			end
		end

		timer.Simple( 60 , function( )

			self:Remove()

		end )

	end

end