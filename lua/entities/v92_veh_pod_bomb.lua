
AddCSLuaFile()

if not ( vnt or VNTCB ) then

	return false
	
end

ENT.Base = VNTCB.Bases.Vehicle_Pod_Root
ENT.Type = "anim"

ENT.PrintName = "Bomb Pod"
ENT.Author = "Dr. Matt ; V92"
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true

ENT.FireRate = 120
ENT.Sequential = true
ENT.model = Model( "models/props_phx/ww2bomb.mdl" )
ENT.mass = 250
ENT.reload = 10
// false to land and timer, true for midflight timer
ENT.mode = false

ENT.Sounds = {
	["fire"] = Sound( "jessev92/bf2/weapons/armament/bomb/bomb_release.wav" ) ,
	["reload"] = Sound( "jessev92/bf2/weapons/armament/bomb/bomb_reload.wav" ) , 
}

if SERVER then
	function ENT:Initialize()
		self:base(VNTCB.Bases.Vehicle_Pod_Root).Initialize(self)
		self.allbombs={}
		self:ReloadBombs()
	end
	
	function ENT:ReloadBombs()
		self:SetAmmo(#self.Pods)
		self.bombs={}
		for k,v in pairs(self.Pods) do
			local bomb = ents.Create("prop_physics")
			bomb:SetModel(self.model)
			bomb:SetPos(self.aircraft:LocalToWorld(v))
			bomb:SetAngles(self.aircraft:GetAngles())
			bomb:Spawn()
			bomb:Activate()
			bomb.phys=bomb:GetPhysicsObject()
			bomb.phys:SetMass(self.mass)
			bomb.weld=constraint.Weld(bomb,self.aircraft,0,0,0,true)
			constraint.NoCollide(bomb,self.aircraft,0,0)
			self.bombs[#self.bombs+1]=bomb
			self.allbombs[#self.allbombs+1]=bomb
		end
		for a,b in pairs(self.bombs) do
			for c,d in pairs(self.bombs) do
				if not b==d then
					constraint.NoCollide(b,d,0,0)
				end
			end
		end
		
		sound.Play( self.Sounds.reload , self.aircraft:GetPos() )
	end
end

function ENT:OnRemove()
	self:base(VNTCB.Bases.Vehicle_Pod_Root).Initialize(self)
	if SERVER then
		if self.bombs then
			for k,v in pairs(self.allbombs) do
				if IsValid(v) then
					v:Remove()
					v=nil
				end
			end
		end
	end
end

if SERVER then
	function ENT:Think()
		self:base(VNTCB.Bases.Vehicle_Pod_Root).Think(self)
		if self.bombs then
			local phm=FrameTime()*66
			for k,v in pairs(self.bombs) do
				if v.dropping then
					v.phys:AddVelocity(v.phys:GetVelocity()*(0.2*phm))
				end
			end
		end
		if self:GetAmmo()<=0
			and not self.reloadtime
			and ((not self.mode
			and IsValid(self.aircraft) and self.aircraft:GetVelocity():Length()<=50)
			or self.mode)
		then
			self.reloadtime=CurTime()+self.reload
		elseif self.reloadtime and CurTime()>self.reloadtime then
			self.reloadtime=nil
			self:ReloadBombs()
		end
	end
end

function ENT:dropBomb(bomb)
	if !self:takeAmmo(1) then return end
	if not IsValid(bomb) then return end
	if bomb.weld then
		bomb.weld:Remove()
		bomb.weld=nil
	end
	bomb.phys:AddVelocity(self.aircraft.phys:GetVelocity())
	--self.aircraft:EmitSound(self.Sounds.fire)
	sound.Play( self.Sounds.fire , self.aircraft:GetPos() )
	timer.Simple(1,function()
		if IsValid(bomb) then
			bomb.dropping=true
		end
	end)
end


function ENT:fire()
	if self.Sequential then
		self.currentPod = self.currentPod or 1
		self:dropBomb(self.bombs[self.currentPod])
		self.currentPod = (self.currentPod == #self.bombs and 1 or self.currentPod + 1)
	else
		for k,v in pairs(self.bombs) do
			self:dropBomb(v)
		end
	end
end