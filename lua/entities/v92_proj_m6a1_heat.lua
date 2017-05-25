
AddCSLuaFile()

ENT.Type 		= "anim"
ENT.PrintName	= "M6A1 HEAT Rocket"
ENT.Category = VNTCB.Category.DODS -- (String) Category
ENT.Instructions = VNTCB.instructions -- (String) Instruction
ENT.Author = VNTCB.author -- (String) Author
ENT.Contact = VNTCB.contact -- (String) Contact
ENT.Purpose = VNTCB.purpose -- (String) Purpose

if SERVER then

	/*---------------------------------------------------------
	   Name: ENT:Initialize()
	---------------------------------------------------------*/
	function ENT:Initialize()

		self.Owner = self:GetOwner()

		if !IsValid(self.Owner) then
			self:Remove()
			return
		end
	 
		self:SetModel("models/jessev92/dods/weapons/bazooka_rocket_p.mdl")
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)   
		self:SetSolid(SOLID_VPHYSICS)
		self.SpawnTime = CurTime()
	 
		self.PhysObj = self:GetPhysicsObject()

		if (self.PhysObj:IsValid()) then
			self.PhysObj:EnableGravity(false)
			self.PhysObj:EnableDrag(false) 
			self.PhysObj:SetMass(30)
				self.PhysObj:Wake()
		end
			
		self.RocketSound = CreateSound(self, "weapons/rocket1.wav")
		self.RocketSound:Play()
		util.PrecacheSound("explode_4")

		self.TimeLeft = CurTime() + 3
	end

	/*---------------------------------------------------------
	   Name: ENT:Think()
	---------------------------------------------------------*/
	function ENT:Think()

		local phys 		= self:GetPhysicsObject()
		local ang 		= self:GetForward() * 7500
		local upang
		local rightang

		upang 	= self:GetUp() * math.Rand(500, 2000) * (math.sin(CurTime() * math.Rand(500, 1000)))
		rightang 	= self:GetRight() * math.Rand(500, 2000) * (math.cos(CurTime() * math.Rand(500, 1000)))

		local force

		if self:WaterLevel() > 0 or self.TimeLeft < CurTime() then
			phys:EnableGravity(true)
			phys:EnableDrag(true)
			self.RocketSound:Stop()
		else
			if self.SpawnTime + 0.75 < CurTime() then
				force = ang + upang + rightang
			else
				force = ang
			end

			phys:ApplyForceCenter(force)
		end
	end

	/*---------------------------------------------------------
	   Name: ENT:Explosion()
	---------------------------------------------------------*/
	function ENT:Explosion()

		local trace = {}
		trace.start = self:GetPos() + Vector(0, 0, 32)
		trace.endpos = self:GetPos() - Vector(0, 0, 128)
		trace.Entity = self
		trace.mask  = 16395
		local Normal = util.TraceLine(trace).HitNormal

		self.Scale = 2
		self.EffectScale = self.Scale ^ 0.65

		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
		util.Effect("HelicopterMegaBomb", effectdata)

		--[[
		local effectdata = EffectData()
			effectdata:SetOrigin(self:GetPos())
			effectdata:SetNormal(Normal)
			effectdata:SetScale(self.EffectScale)
		util.Effect("effect_sim_ignition", effectdata)
		--]]
		
		local explo = ents.Create("env_explosion")
			explo:SetOwner(self.Owner)
			explo:SetPos(self:GetPos())
			explo:SetKeyValue("iMagnitude", "200")
			explo:Spawn()
			explo:Activate()
			explo:Fire("Explode", "", 0)
		
		local shake = ents.Create("env_shake")
			shake:SetOwner(self.Owner)
			shake:SetPos(self:GetPos())
			shake:SetKeyValue("amplitude", "2000")	// Power of the shake
			shake:SetKeyValue("radius", "900")		// Radius of the shake
			shake:SetKeyValue("duration", "2.5")	// Time of shake
			shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
			shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
			shake:Spawn()
			shake:Activate()
			shake:Fire("StartShake", "", 0)
		
		local ar2Explo = ents.Create("env_ar2explosion")
			ar2Explo:SetOwner(self.Owner)
			ar2Explo:SetPos(self:GetPos())
			ar2Explo:Spawn()
			ar2Explo:Activate()
			ar2Explo:Fire("Explode", "", 0)

		local en = ents.FindInSphere(self:GetPos(), 300)

		--[[
		for k, v in pairs(en) do
			if (v:GetPhysicsObject():IsValid()) then
				// Unweld and unfreeze props
				if (math.random(1, 100) < 30) then
					v:Fire("enablemotion", "", 0)
					constraint.RemoveAll(v)
				end
			end
		end
		--]]
	end

	/*---------------------------------------------------------
	   Name: ENT:PhysicsCollide()
	---------------------------------------------------------*/
	function ENT:PhysicsCollide(data, physobj) 

		util.Decal("Scorch", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal) 

		self:Explosion()
		self:Remove()
	end

	/*---------------------------------------------------------
	   Name: ENT:OnRemove()
	---------------------------------------------------------*/
	function ENT:OnRemove()

		self.RocketSound:Stop()
	end

end

if CLIENT then

	/*---------------------------------------------------------
	   Name: ENT:Initialize()
	---------------------------------------------------------*/
	function ENT:Initialize()
	 
		self.TimeLeft = CurTime() + 3

		local vOffset 	= self:LocalToWorld(Vector(0, 0, self:OBBMins().z))
		local vNormal 	= (vOffset - self:GetPos()):GetNormalized()

		local emitter 	= ParticleEmitter(vOffset)

		// 150 particles per second during 30 seconds
		for i = 1, 4500 do 
			timer.Simple(i / 150, function()
				if not IsValid(self) then return end

				local vOffset 	= self:LocalToWorld(Vector(0, 0, self:OBBMins().z))
				local vNormal 	= (vOffset - self:GetPos()):GetNormalized()

				local particle = emitter:Add("particle/particle_smokegrenade", vOffset)
				particle:SetVelocity(vNormal * 5)
				particle:SetDieTime(10)
				particle:SetStartAlpha(255)
				particle:SetStartSize(5)
				particle:SetEndSize(25)
				particle:SetRoll(math.Rand(-5, 5))
				particle:SetColor(160, 160, 160)
				if i == 4500 then
					emitter:Finish()
				end			
			end)
		end
	end

	/*---------------------------------------------------------
	   Name: ENT:Think()
	---------------------------------------------------------*/
	function ENT:Think()

		if self.TimeLeft > CurTime() then
			local effectdata = EffectData() 
				effectdata:SetOrigin(self:LocalToWorld(Vector(0, 0, self:OBBMins().z))) 
				effectdata:SetScale(1.5)
			util.Effect("MuzzleEffect", effectdata)
		end
	end

end