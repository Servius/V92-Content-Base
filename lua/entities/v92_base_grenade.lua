
AddCSLuaFile()

ENT.Type = "anim" -- (String) type
ENT.PrintName = "V92 Grenade Base" -- (String) nice name
ENT.Category = VNTCB.Category.VNT -- (String) Category
ENT.Instructions = VNTCB.instructions -- (String) Instruction
ENT.Author = VNTCB.author -- (String) Author
ENT.Contact = VNTCB.contact -- (String) Contact
ENT.Purpose = VNTCB.purpose -- (String) Purpose

ENT.GrenadeModel = Model( "models/weapons/w_grenade.mdl" ) -- (String) Model to use
ENT.Mass = 5 -- (Integer) Mass in KG of the grenade
ENT.EntityName = "v92_base_grenade" -- (String) Name of the entity script

ENT.Sounds = {

	["BounceSound"] = Sound( "physics/metal/metal_grenade_impact_soft1.wav" ) ,
	["DebrisSound"] = Sound( "weapons/debris1.wav" ) ,
	["ExplosionSound"] = Sound( "weapons/explode3.wav" ) ,
	["WaterExplosionSound"] = Sound( "weapons/underwater_explode3.wav" ) ,

}

------------------------------------------------------
------------------------------------------------------
--	Nothing beyond this needs to be included		--
------------------------------------------------------
------------------------------------------------------

function ENT:SetupDataTables()  

	print( "setup data tables" )

	self:SetNetworkedVar( "Bool" , 0 , "_Exploded" )

end 

function ENT:Use( User )

	print( "use" )

	if User:IsPlayer( ) then

		print( "use - is player" )

		User:PickupObject( self )

	end
	
end

function ENT:PhysicsCollide(data, phys)

	print( "physcollide" )

	if data.Speed > 50 then

		print( "physcollide - bounce" )

		self:EmitSound( self.Sounds.BounceSound )

	end
	
	--local impulse = -data.Speed * data.HitNormal * 0.4 + (data.OurOldVelocity * -0.6)
	local impulse = -data.Speed * data.HitNormal * 0.1 + (data.OurOldVelocity * -0.7)
	phys:ApplyForceCenter(impulse)

	self:CustomPhysicsCollide()
	
end

if CLIENT then

	language.Add( ENT.EntityName , ENT.PrintName )
	killicon.Add( ENT.EntityName , "vgui/entities/" .. ENT.EntityName , Color( 255 , 255 , 255 ) ) --	Make our spawn icon our kill icon

	function ENT:Draw()

		--print( "draw pardner" )

		self:DrawModel()
	end

end

if SERVER then

	function ENT:Initialize()

		if not IsValid(self.Owner) then

			print( "server init - not valid owner" )

			self:Remove()
			return

		end

		if IsValid( self ) then
			
			print( "server init - self is valid" )

			self.Owner = self:GetOwner()
			self:SetNWBool("Explode", false)
			self.Timer = self:GetNWInt("Cook")

			self:SetModel( self.GrenadeModel )
			self:PhysicsInit( SOLID_VPHYSICS )
			self:SetMoveType( MOVETYPE_VPHYSICS )
			self:SetSolid( SOLID_VPHYSICS )
			self:DrawShadow( true )

			self:SetUseType( SIMPLE_USE )

			--self:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )

			local phys = self:GetPhysicsObject()

			if (phys:IsValid()) then

				print( "server init - phys valid" )

				phys:SetMass( self.Mass or phys:GetMass() )
				phys:Wake()

			end

			self:CustomInit()

		end

	end

	function ENT:Think()
		
		print( "think" )

		self:CustomThink()

		if self.Timer < CurTime() then

			print( "timer < curtime" )

			self:Explosion()

			return false

		end

	end

end

-- Custom Grenade

function ENT:CustomInit( )

end

function ENT:CustomPhysicsCollide( )

end

function ENT:CustomThink( )

end

function ENT:Explosion( )

end
