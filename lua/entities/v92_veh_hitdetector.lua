
AddCSLuaFile( )

ENT.Base 				= "base_anim"
ENT.Type 				= "anim"

ENT.PrintName = "Hit Detector"
ENT.Author = VNTCB.Info.author
ENT.Category = VNTCB.Category.VNT
ENT.Contact = VNTCB.Info.contact
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions

ENT.Spawnable = false
ENT.AdminOnly = true

if CLIENT then

	function ENT:Draw()
		self:DrawModel()
	end

end

if SERVER then

	function ENT:Initialize()
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetTrigger( true )
		local obb=self:OBBMaxs()
		self.RotorWidth=self:BoundingRadius()
		self.RotorHeight=obb.z
	end

	function ENT:StartTouch(e)
		self.BaseClass.StartTouch(e)
		if self.TouchFunc then
			self.TouchFunc(e, e:GetPos())
		end
	end

	function ENT:Think()
		for i=0,360, 45 do
			local trd={}
			trd.start=self:GetPos()
			trd.endpos=self:GetRight()*math.sin(i)*self.RotorWidth+self:GetForward()*math.cos(i)*self.RotorWidth+trd.start+self:GetUp()*self.RotorHeight
			trd.mask=MASK_SOLID_BRUSHONLY
			local tr=util.TraceLine(trd)
			if tr.Hit and !tr.HitSky and tr.HitWorld and self.TouchFunc then
				self.TouchFunc(tr.Entity, tr.HitPos)
			end
		end
	end

end