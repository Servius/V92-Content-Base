AddCSLuaFile( )
ENT.Type = "anim"
ENT.PrintName = "FIM-92 Rocket"
ENT.Author = "V92"
ENT.Contact = ""
ENT.Purpose = ""
ENT.Instructions = ""

---------------------------------------------------------
--	OnRemove
---------------------------------------------------------
function ENT:OnRemove( )
end

---------------------------------------------------------
--	PhysicsUpdate
---------------------------------------------------------
function ENT:PhysicsUpdate( )
end

---------------------------------------------------------
--	PhysicsCollide
---------------------------------------------------------
function ENT:PhysicsCollide( data , physobj )
	local LastSpeed = data.OurOldVelocity:Length( )
	local NewVelocity = physobj:GetVelocity( )
	local NormVel = data.OurOldVelocity:GetNormal( )
	NewVelocity:Normalize( )
	local TargetVelocity = NewVelocity * LastSpeed * 0.4
	physobj:SetVelocity( TargetVelocity )
	if self.Dummy == true then return false end

	if self.DummyTime and CurTime( ) < self.DummyTime then
		self.DummyTime = nil
		self.Dummy = true
		self.Removal = CurTime( ) + 20

		return false
	end

	self:Explosion( )
end

if CLIENT then
	---------------------------------------------------------
	--	Draw
	---------------------------------------------------------
	function ENT:Draw( )
		self:DrawModel( )
	end

	function ENT:Initialize( )
		self.StartSmoke = CurTime( )
	end

	---------------------------------------------------------
	--	IsTranslucent
	---------------------------------------------------------
	function ENT:IsTranslucent( )
		return true
	end

	function ENT:Think( )
		self.SmokeTimer = self.SmokeTimer or 0
		if ( self.SmokeTimer > CurTime( ) ) then return end
		self.SmokeTimer = CurTime( ) + 0.04
		local vPos = Vector( math.random( -50 , 50 ) , math.random( -50 , 50 ) , math.random( 20 , 50 ) )
		local vOffset = self:LocalToWorld( Vector( 0 , 0 , self:OBBMins( ).z ) )
		local emitter = ParticleEmitter( vOffset )
		local smoke = emitter:Add( "particle/particle_smokegrenade" , self:GetPos( ) )
		smoke:SetGravity( Vector( ( math.random( -100 , 100 ) ) , ( math.random( -100 , 100 ) ) , ( math.random( -5 , 5 ) ) ) )
		smoke:SetDieTime( 10 )
		smoke:SetStartAlpha( 220 )
		smoke:SetEndAlpha( 0 )
		smoke:SetStartSize( 25 )
		smoke:SetEndSize( 20 )
		smoke:SetRoll( math.random( -180 , 180 ) )
		smoke:SetRollDelta( math.random( -0.2 , 0.2 ) )
		smoke:SetColor( 40 , 40 , 40 )
		smoke:SetAirResistance( 750 )
		emitter:Finish( )
		self:NextThink( CurTime( ) )

		return true
	end
end

if SERVER then
	ENT.Size = 0.35

	function ENT:OnRemove( )
		self.LoopingSound:Stop( )
	end

	---------------------------------------------------------
	--	Initialize
	---------------------------------------------------------
	function ENT:Initialize( )
		self:SetModel( "models/weapons/w_missile_closed.mdl" )
		self:SetMoveType( MOVETYPE_FLYGRAVITY )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetCollisionBounds( Vector( -self.Size , -self.Size , -self.Size ) , Vector( self.Size , self.Size , self.Size ) )
		self:DrawShadow( true )
		self.AllowEXP = true
		self:SetGravity( 0.0215 )
		self.Expire = CurTime( ) + 3.5
		self.LoopingSound = CreateSound( self , "Missile.Ignite" )
		self.LoopingSound:Play( )
	end

	---------------------------------------------------------
	--	Think
	---------------------------------------------------------
	function ENT:Think( )
		self:SetAngles( self:GetVelocity( ):Angle( ) )
		self:NextThink( CurTime( ) )

		if self.Expire and CurTime( ) >= self.Expire then
			self.Expire = nil
			self.Entity:SetGravity( 0.6 )
		end

		return true
	end

	---------------------------------------------------------
	--	Explosion
	---------------------------------------------------------
	function ENT:Explosion( )
		if self.AllowEXP == true then
			self.AllowEXP = false
			local explo = ents.Create( "env_explosion" )
			explo:SetOwner( self:GetOwner( ) )
			explo:SetPos( self:GetPos( ) )
			explo:SetKeyValue( "iMagnitude" , "0" )
			explo:Spawn( )
			explo:Activate( )
			explo:Fire( "Explode" , "" , 0 )
			util.BlastDamage( self , self:GetOwner( ) , self:GetPos( ) , 250 , 120 )
			self:Remove( )
		end
	end

	function ENT:Touch( ent )
		if not ent:IsTrigger( ) then
			self:Explosion( )
		end
	end
end