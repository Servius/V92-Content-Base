AddCSLuaFile( )
--[[

Updated 28 July 2014

Hey there, Lucky here.

Chances are if you're here, you have at least some beginner skill with GMod modding.

I don't mind you using my code to learn, but for the love of god please don't modify it and release it without my consent.
I worked hard on my vehicles, please don't steal them.
You can modify it as much as you want, but if you want to release it contact me through my upload comments and we can make a collaborative upload.
If you have a feature or thing you would like to see added, please don't hesitate to leave a comment on my uploads.
I want to make my vehicles the best they can be, and if you have a suggestion, please voice it.
I'm open to suggestions that are within reason.

TL;DR - Contact me before releasing stuff, and contact me about things you want added.

]]
ENT.Base = "base_anim"
ENT.Type = "anim"
ENT.PrintName = "TOW"
ENT.Author = "V92"
ENT.Category = VNTCB.Category.VNT
ENT.Contact = ""
ENT.Purpose = "Destroy!"
ENT.Instructions = ""
ENT.Spawnable = false
ENT.AdminOnly = false
--if SERVER then
ENT.ExplosionDel = CurTime( ) + 0.2
ENT.ExplodeOnce = false
ENT.EntAngs = nil
ENT.SpriteTrail = nil

function ENT:SpawnFunction( ply , tr )
	ent:Spawn( )
	ent:Activate( )
	ent.Owner = ply
	ent:GetPhysicsObject( ):SetMass( 1 )

	return ent
end

function ENT:Initialize( )
	self:SetModel( "models/BF2/weapons/Predator/predator_rocket.mdl" )
	self:SetOwner( self.Owner )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	local phys = self:GetPhysicsObject( )

	if ( phys:IsValid( ) ) then
		phys:Wake( )
	end

	self.EntAngs = self:GetAngles( )
	phys:EnableDrag( true )
	self.SpriteTrail = util.SpriteTrail( self.Entity , 0 , Color( 200 , 200 , 200 , 255 ) , true , 15 , 35 , 15 , 1 / ( 15 + 1 ) * 0.5 , "trails/smoke.vmt" )
	--self:SetColor(Color(0,0,0,255))
	--self:SetMaterial("models/shiny")
	--self.MissileSound = CreateSound(self.Entity,"weapons/rpg/rocket1.wav")
	--self.MissileSound:Play()
	self.ExplosionDel = CurTime( ) + 0.1
	self.ExplosionDel = -1
end

-------------------------------------------PHYS COLLIDE
function ENT:PhysicsCollide( data , phys )
	ent = data.HitEntity

	if self.ExplosionDel < CurTime( ) then
		self:DoExplode( )
	else
		self:Dull( )
	end
end

-------------------------------------------PHYSICS
function ENT:PhysicsUpdate( physics )
	if self.ExplodeOnce == false then
		local entphys = self:GetPhysicsObject( )
		phys = self:GetPhysicsObject( )
		local veloc = phys:GetVelocity( )
		local AimVec = self:GetVelocity( ):GetNormalized( ):Angle( )
		self.EntAngs.p = math.ApproachAngle( self.EntAngs.p , AimVec.p , 0.5 )
		self.EntAngs.r = math.ApproachAngle( self.EntAngs.r , AimVec.r , 0.5 )
		self.EntAngs.y = math.ApproachAngle( self.EntAngs.y , AimVec.y , 0.5 )
		self:SetAngles( self.EntAngs )
		phys:EnableGravity( false )
		phys:SetVelocity( veloc * 5 ) --Can't go any faster :[
	end
end

-------------------------------------------DAMAGE
function ENT:OnTakeDamage( dmg )
	if self.ExplosionDel < CurTime( ) and not ( dmg:IsExplosionDamage( ) ) then
		self:SetCollisionGroup( 3 )
	end

	if not ( dmg:IsExplosionDamage( ) ) then
		self:DoExplode( )
	end
end

-------------------------------------------THINK
function ENT:Think( )
	self:GetPhysicsObject( ):Wake( )

	if self.ExplosionDel < CurTime( ) then
		self:SetCollisionGroup( 3 )
	end
end

function ENT:Dull( )
	if self.ExplodeOnce == false then
		if self.SpriteTrail and self.SpriteTrail ~= NULL then
			self.SpriteTrail:Remove( )
		end

		self:SetCollisionGroup( 3 )
		self.ExplodeOnce = true
		self:Fire( "kill" , "" , 15 )
		self:EmitSound( "weapons/rpg/shotdown.wav" , 70 , 100 )
		self:GetPhysicsObject( ):SetVelocity( self:GetPhysicsObject( ):GetVelocity( ) * 0.2 )
	end
end

function ENT:DoExplode( )
	if self.ExplodeOnce == false and self.ExplosionDel < CurTime( ) then
		self.ExplodeOnce = true
		local effectdata = EffectData( )
		effectdata:SetOrigin( self:GetPos( ) )
		util.Effect( "HelicopterMegaBomb" , effectdata )
		local ar2Explo = ents.Create( "env_ar2explosion" )
		ar2Explo:SetOwner( self.Owner )
		ar2Explo:SetPos( self:GetPos( ) )
		ar2Explo:Spawn( )
		ar2Explo:Activate( )
		ar2Explo:Fire( "Explode" , "" , 0 )
		local expl = ents.Create( "env_explosion" )
		expl:SetKeyValue( "spawnflags" , 1 )
		expl:SetPos( self:GetPos( ) )
		expl:Spawn( )
		expl:Fire( "explode" , "" , 0 )
		local FireExp = ents.Create( "env_physexplosion" )
		FireExp:SetPos( self:GetPos( ) )
		FireExp:SetParent( self.Entity )
		FireExp:SetKeyValue( "magnitude" , 240 )
		FireExp:SetKeyValue( "radius" , 200 )
		FireExp:SetKeyValue( "spawnflags" , "1" )
		FireExp:Spawn( )
		FireExp:Fire( "Explode" , "" , 0 )
		FireExp:Fire( "kill" , "" , 5 )

		if self.Attacker == NULL then
			self.Attacker = nil
		end

		if self.Attacker then
			util.BlastDamage( self , self.Attacker , self:GetPos( ) , 200 , 300 )
		end

		util.ScreenShake( self:GetPos( ) , 15 , 15 , 0.5 , 500 )
		self:Remove( )
	end
end
--[[

ENT.Target = NULL
ENT.EntAngs = NULL
ENT.ArmDel = CurTime()
ENT.MissileSound = NULL
ENT.ExplosionDel = CurTime() + 1

ENT.speed		= 750
ENT.damage		= 100
ENT.radius		= 500
ENT.physeffect	= 1000
ENT.armtime		= 2
ENT.homing		= 1
ENT.angchange	= 5

ENT.MissileTime = CurTime() + 5	
ENT.UpdateLaserPosDel = CurTime()
--ENT.LaserPos = NULL
ENT.LaserPos = Vector(0,0,0)

ENT.FollowCountermeasure = 0
ENT.IgnoreCounterMeasure = 0
ENT.TargetIsJetFighter = 0
ENT.MissileOwner = NULL

function ENT:SpawnFunction( ply, tr )
--------Spawning the entity and getting some sounds i use.   
 	if ( !tr.Hit ) then return end 

 	local SpawnPos = tr.HitPos + tr.HitNormal * 10 

 	local ent = ents.Create( "sent_v92projectiletow" )
	ent:SetPos( SpawnPos ) 
 	ent:Spawn()
 	ent:Activate() 
 	ent.Owner = ply
	return ent 

end*/

function ENT:Initialize()
	--self:SetModel("models/weapons/W_missile_closed.mdl")
	self:SetModel("models/BF2/weapons/Predator/predator_rocket.mdl")
	self:SetColor(Color(255, 255, 255, 255))
	self:SetOwner(self.Owner)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	self:SetSolid(SOLID_VPHYSICS) 
    local phys = self:GetPhysicsObject()
	if(phys:IsValid()) then phys:Wake() end

	 	self.EntAngs = self:GetAngles()

		self.ArmDel = CurTime() + self.armtime
	util.SpriteTrail(self.Entity, 0, Color(200,200,200,255), false, 4, 0, 3, 1/(15+1)*0.5, "trails/smoke.vmt")

	self.MissileSound = CreateSound(self.Entity,"weapons/rpg/rocket1.wav")
	self.MissileSound:Play()
	--self:SetCollisionGroup( 1 ) 

	--self.MissileTime = CurTime() + 10

	--There is a 50% chance that the missile will ignore countermeasures
	--self.IgnoreCounterMeasure = math.random(1,50)

	self.ExplosionDel = CurTime() + 0.1
	self.ExplosionDel = -1
end

-------------------------------------------PHYS COLLIDE
function ENT:PhysicsCollide( data, phys ) 
	ent = data.HitEntity

	self:Remove()
end

-------------------------------------------PHYS UPDATE
function ENT:PhysicsUpdate( physics )

		phys = self:GetPhysicsObject()
		local veloc = phys:GetVelocity()

	if self.MissileTime > CurTime() then
		local AimVec = ( self.LaserPos - self:GetPos() ):Angle()
		--local AimVec = self.LaserPos:GetAimVector()
		--local AimVec = ply:GetAimVector()
		local Dist = math.min(self:GetPos():Distance(self.LaserPos), 5000)
		local Dist = Dist / 5000
		local Mod = (1 - Dist) * self.angchange

		self.EntAngs.p = math.ApproachAngle( self.EntAngs.p, AimVec.p, 0.5 + Mod )
		self.EntAngs.r = math.ApproachAngle( self.EntAngs.r, AimVec.r, 0.5 + Mod )
		self.EntAngs.y = math.ApproachAngle( self.EntAngs.y, AimVec.y, 0.5 + Mod )
		self:SetAngles( self.EntAngs ) 								
	end

	phys:SetVelocity(veloc)
	phys:ApplyForceCenter(self:GetForward() * 50000 )

end
-------------------------------------------THINK
function ENT:Think()

	self:GetPhysicsObject():Wake()

	if self.ExplosionDel < CurTime() then
		self:SetCollisionGroup( 3 )
	end

	/*
	--if self.Entity.Target:IsValid() && self.TargetIsJetFighter == 0 then
	if self.Entity.Target:IsValid() then
		if string.find(self.Entity.Target:GetClass(), "sent_sakariasjet") or self.Entity.Target:IsPlayer() or self.Entity.Target:IsVehicle() then
			self.TargetIsJetFighter = 1
			self.Entity.Target.IsMissileTarget = 1
		end
	end		

	if self.FollowCountermeasure == 0 && self.IgnoreCounterMeasure != 25 then 
		local NewTarget =  ents.FindInSphere(  self:GetPos() , 2000) 				
		local NumberOfTargets = table.Count(NewTarget)
		local Dist = 1000

		for i=1, NumberOfTargets do
			if string.find(NewTarget[i]:GetClass(), "sent_countermeasure") && self.FollowCountermeasure == 0 then
				if self.TargetIsJetFighter == 1 then
					self.Entity.Target.IsMissileTarget = 0
				end

				self.FollowCountermeasure = 1
				self.Entity.Target = NewTarget[i]
			end
		end
	end

	if self.FollowCountermeasure == 1 && self.Entity.Target != NULL then
		local dist = self.Entity.Target:GetPos():Distance(self:GetPos()) 
		if dist < 150 then
			self:Remove()
		end
	end

	*/

end

-------------------------------------------REMOVE
function ENT:OnRemove()

	self.MissileSound:Stop()

	local expl = ents.Create("env_explosion")
	expl:SetKeyValue("spawnflags",128)
	expl:SetPos(self:GetPos())
	expl:SetOwner(self:GetOwner())
	expl:Spawn()
	expl:Fire("explode","",0)

	local FireExp = ents.Create("env_physexplosion")
	FireExp:SetPos(self:GetPos())
	FireExp:SetParent(self.Entity)
	FireExp:SetKeyValue("magnitude", 500)
	FireExp:SetKeyValue("radius", 200)
	FireExp:SetKeyValue("spawnflags", "1")
	FireExp:Spawn()
	FireExp:Fire("Explode", "", 0)
	FireExp:Fire("kill", "", 5)
	--util.BlastDamage( self:GetOwner(), self:GetOwner(), self:GetPos(), 200, 200)

	local effectdata = EffectData()
	effectdata:SetOrigin( self:GetPos() )
	effectdata:SetStart( Vector(0,0,90) )
	util.Effect( "jetbomb_explosion", effectdata ) 

	if self.TargetIsJetFighter == 1 then
		self.Entity.Target.IsMissileTarget = 0
	end

	if self.MissileOwner != NULL then
		self.MissileOwner:KillGuidedMissile()
	end

		/*if self.ExplodeOnce == false and self.ExplosionDel < CurTime() then
		self.ExplodeOnce = true
		local expl = ents.Create("env_explosion")
		expl:SetKeyValue("spawnflags",1)
		expl:SetPos(self:GetPos())
		expl:Spawn()
		expl:Fire("explode","",0)

		local FireExp = ents.Create("env_physexplosion")
		FireExp:SetPos(self:GetPos())
		FireExp:SetParent(self.Entity)
		FireExp:SetKeyValue("magnitude", 1300)
		FireExp:SetKeyValue("radius", 200)
		FireExp:SetKeyValue("spawnflags", "1")
		FireExp:Spawn()
		FireExp:Fire("Explode", "", 0)
		FireExp:Fire("kill", "", 5)

		self:StopSound(self.ShellTravelSnd)

		if self.Attacker == NULL then
			self.Attacker = nil
		end

		if self.Attacker then
			util.BlastDamage( self, self.Attacker, self:GetPos(), 200, 300)
		end

		util.ScreenShake( self:GetPos(), 15, 15, 0.5, 500 )

		self:Remove()
	end*/
end

function ENT:SetLaserPos( pos )
	self.LaserPos = pos
end

function ENT:DoExplode()
	if self.ExplodeOnce == false and self.ExplosionDel < CurTime() then
		self.ExplodeOnce = true
		local expl = ents.Create("env_explosion")
		expl:SetKeyValue("spawnflags",1)
		expl:SetPos(self:GetPos())
		expl:Spawn()
		expl:Fire("explode","",0)

		local FireExp = ents.Create("env_physexplosion")
		FireExp:SetPos(self:GetPos())
		FireExp:SetParent(self.Entity)
		FireExp:SetKeyValue("magnitude", 240)
		FireExp:SetKeyValue("radius", 200)
		FireExp:SetKeyValue("spawnflags", "1")
		FireExp:Spawn()
		FireExp:Fire("Explode", "", 0)
		FireExp:Fire("kill", "", 5)

		if self.Attacker == NULL then
			self.Attacker = nil
		end

		if self.Attacker then
			util.BlastDamage( self, self.Attacker, self:GetPos(), 200, 300)
		end

		util.ScreenShake( self:GetPos(), 15, 15, 0.5, 500 )

		self:Remove()
	end
end
*/
--]]
--end